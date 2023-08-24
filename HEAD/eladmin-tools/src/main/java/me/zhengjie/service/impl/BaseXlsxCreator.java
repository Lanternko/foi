package me.zhengjie.service.impl;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.apache.poi.ooxml.POIXMLException;
import org.apache.poi.ss.usermodel.CellCopyPolicy;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.common.CodeDetailMap;
import com.ezcore.tools.common.Constants;

import lombok.extern.slf4j.Slf4j;
import me.zhengjie.exception.BadRequestException;
import me.zhengjie.service.SpreadSheetService;

@Slf4j
public abstract class BaseXlsxCreator implements SpreadSheetService {

	public abstract String create(Map<String, String> params);

	private final int MOVE_EXIST_ROWS = 10;
	
//	系統暫存目錄 (codedetail > file_path > property2)
	private String output_dir = "";
//	輸出檔案路徑 (codedetail > form_template > property1)
	private String template_dir = "";
//	資料起始位置相關 (codedetail > form_template > property2)
	private int start_sheet_index = 0;
	private int start_row_index = 0;
	private int start_column_index = 0;
//	資料取得語法 (codedetail > form_template > property9)
	private String sql = "";
//	欄位名稱
	Map<String, Integer> titles = new HashMap<>();
//	大量資料
	private List<Map<String, Object>> data;
	
	@Autowired
	private CodeDetailMap codeDetailMap;
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	/**
	 * 使用現存表單template的代碼、參數查詢資料<br>
	 * 產生表單於暫存區，並回傳檔案路徑<br><br>
	 * 輸入參數(params)範例: <br>
	 * http://網址?form=test1001&beginDate=2023/01/01 00:00:00&endDate=2023/01/31 23:59:59 <br>
	 * 以上網址會自動轉為以下 key:value 參數 <br>
	 * {<br>
	 *   "form" : "test1001", <br>
	 *   "beginDate" : "2023/01/01 00:00:00", <br>
	 *   "endDate" : "2023/01/31 23:59:59"<br>
	 * }<br><br>
	 * form為必要參數，剩下則為置換sql變數的參數(名稱需和sql中參數名稱相同)
	 */
	public String createWorkbookFromTemplate(Map<String, String> params) {
		return fromTemplate(params);
	}
	
	/**
	 * 產生全新表單
	 */
	public String createWorkbookFromScratch(Map<String, String> params) {
//		若有需要，需實作
		return null;
	}
	
	/**
	 * 使用檔案路徑、座標，直接將資料寫入特定cell
	 */
	public String writeSpecificPosition(String filePath, int sheetIndex, int rowNumber, int colNumber, String colValue) {
		XSSFWorkbook workbook = null;
		try {
			InputStream is = new BufferedInputStream(new FileInputStream(new File(filePath)));
			workbook = new XSSFWorkbook(is);
			XSSFSheet sheet = workbook.getSheetAt(-- sheetIndex);
			
			rowNumber --;
			colNumber --;
			
			XSSFRow row = sheet.getRow(rowNumber);
			if (row == null) {
				row = sheet.createRow(rowNumber);
			}
			XSSFCell cell = row.getCell(colNumber);
			if (cell == null) {
				cell = row.createCell(colNumber);
			}
			checkCellValueType(cell, colValue);
//			必須手動關閉inputStream才能原地更新檔案
			is.close();
			
			OutputStream os = new BufferedOutputStream(new FileOutputStream(new File(filePath)));
			workbook.write(os);

			os.flush();
			os.close();
		} catch (FileNotFoundException e) {
			log.error("file not exists");
		} catch (IOException e) {
			log.error("other io exception");
		}

		return filePath;
	}
	
	private String fromTemplate(Map<String, String> params) {
//		以form參數查詢表單代碼
		checkAndGetCode(params.get("form"), params);
//		查無資料時直接複製一份空表單
		if (this.data.isEmpty()) {
			Path ori = Paths.get(template_dir);
			Path copied = Paths.get(output_dir);
			try {
				Files.copy(ori, copied, StandardCopyOption.REPLACE_EXISTING);
			} catch (IOException e) {
				log.error("file not exists");
			}
			return output_dir;
		}
		
//		讀取template檔案
		try (InputStream is = new BufferedInputStream(new FileInputStream(new File(template_dir)));
			 OutputStream os = new BufferedOutputStream(new FileOutputStream(new File(output_dir)));
			 XSSFWorkbook workbook = new XSSFWorkbook(is)) {
//			依workbook頁碼取得表格
			XSSFSheet sheet = workbook.getSheetAt(start_sheet_index);
//			寫入大量資料
			writeSheet(sheet);
//			自動調整所有欄位寬度
//			若要指定特定欄位寬度，需寫新方法替換這裡
			for (int i = 0 ; i < this.titles.size() ; i ++) {
				sheet.autoSizeColumn(i);				
			}
			workbook.write(os);
		} catch (FileNotFoundException e) {
			log.error("file not exists");
		} catch (POIXMLException e) {
			log.error("not valid spreadsheet");
		} catch (IOException e) {
			log.error("other io exception");
		}
		
		log.info("報表產製完成，位於: " + output_dir);
//		僅回傳檔案產生路徑，便於信件夾檔或傳給前端下載
		return output_dir;
	}
	
//	自動檢查、設定參數
	private void checkAndGetCode(String formCode, Map<String, String> params) {
		CodeDetailDto formDetail = codeDetailMap.get("form_template", formCode);
		if (formDetail == null) {
			throw new BadRequestException("表單: " + formCode + "不存在");
		}
		if (!formDetail.getIsEnabled()) {
			throw new BadRequestException("表單: " + formCode + " 未啟用");
		}
		
		this.template_dir = Constants.SYS_HOME + formDetail.getProperty1();
		if (Files.notExists(Paths.get(this.template_dir))) {
			throw new BadRequestException("樣板檔案: " + this.template_dir + " 不存在");
		}
		
		CodeDetailDto tempFolderDetail = codeDetailMap.get("file_path", "temp_folder");
		this.output_dir = Constants.SYS_HOME + tempFolderDetail.getProperty2() + formDetail.getName() + "-" + System.currentTimeMillis() + ".xlsx";
		
		try {
			String[] index = formDetail.getProperty2().split(",");
			this.start_sheet_index = Integer.valueOf(index[0].trim()) - 1;
			this.start_row_index =  Integer.valueOf(index[1].trim()) - 1;
			this.start_column_index =  Integer.valueOf(index[2].trim()) - 1;
			if (this.start_sheet_index < 0 || this.start_row_index < 0 || this.start_column_index < 0) {
				throw new NumberFormatException();
			}
		} catch (NumberFormatException e) {
			throw new BadRequestException("資料起始座標格式異常: " + formDetail.getProperty3());
		}

		this.sql = formDetail.getProperty9();
		checkParam(params);
		try {
			this.data = jdbcTemplate.queryForList(sql);			
		} catch (DataAccessException e) {
			throw new BadRequestException("資料取得sql有誤，請確認: " + this.sql);
		}
	}
	
	private void writeSheet(XSSFSheet sheet) {
		getTitleSet(sheet);
		writeRow(sheet, this.start_row_index, 0);
	}
	
	private void getTitleSet(XSSFSheet sheet) {
//		自資料起始點的前一行取得表頭
//		技術上可使用sql裡的欄位title來動態產生表頭
//		但須寫一個新方法來對應此種情境
		XSSFRow row = sheet.getRow(this.start_row_index - 1);
		if (row == null) {
			throw new BadRequestException("未找到標題列");
		}
		
		int first_col = this.start_column_index;
//		以sql查詢的資料欄位數決定表單邊界
		int last_col = first_col + this.data.get(0).size() - 1;
		XSSFCell cell = null;
		while (first_col <= last_col) {
			cell = row.getCell(first_col ++);
			this.titles.put(cell.getStringCellValue(), cell.getAddress().getColumn());
		}
	}
	
	private void writeRow(XSSFSheet sheet, int rowNumber, int index) {
		if (index >= this.data.size()) {
			return;
		}
		
		if (sheet.getRow(rowNumber + 3) == null) {
//			將新增起始座標下既存的MOVE_EXIST_ROWS行內容往下搬動一行
//			MOVE_EXIST_ROWS可以是很大的數字，但沒有必要
//			看實際template樣式來調整
			sheet.shiftRows(rowNumber, rowNumber + MOVE_EXIST_ROWS, 1);			
		}

//		先取得樣板行，此行應包含所有新增行的公式、欄位型別等資訊
		XSSFRow templateRow = sheet.getRow(rowNumber + 1);
		if (templateRow == null) {
//			樣板行不含任何資訊時，建立新的空白行使用
			sheet.createRow(rowNumber);
		} else {
//			樣板行含資訊時，複製樣板行來使用
			sheet.copyRows(rowNumber + 1, rowNumber + 1, rowNumber, new CellCopyPolicy());
//			備用(自訂義builder)
//			sheet.copyRows(rowNumber + 1, rowNumber + 1, rowNumber, new Builder().cellStyle(true)
//																				 .cellFormula(true)
//																				 .cellValue(true)
//																				 .build());			
		}
		XSSFRow newRow = sheet.getRow(rowNumber);		
		
		writeCell(newRow, this.data.get(index));
		writeRow(sheet, rowNumber + 1, index + 1);
	}
	
	private void writeCell(XSSFRow row, Map<String, Object> rowData) {
		for (Entry<String, Object> entry : rowData.entrySet()) {
			String colName = entry.getKey();
			String colValue = entry.getValue().toString();

//			將欄位名稱(colName)對應的資料(colValue)放入和表頭名稱相應位置的格子內
			int dest = this.titles.get(colName);
			XSSFCell cell = row.getCell(dest);
			if (cell == null) {
				cell = row.createCell(dest);
			}

			checkCellValueType(cell, colValue);
		}
	}
	
//	替換sql語法內的變數，目前格式為 @變數名稱
	private void checkParam(Map<String, String> params) {		
		for (Entry<String, String> entry : params.entrySet()) {
			String key = entry.getKey();
			String value = entry.getValue();
			
			this.sql = this.sql.replace("@" + key, value);
		}
	}

//	判斷為數字或文字
//	目前預期公式都會寫在excel裡，因此未做判斷(公式會被當成一般字串)
	private void checkCellValueType(XSSFCell cell, String value) {
		try {
			double num = Double.parseDouble(value);
			cell.setCellValue(num);
		} catch (Exception e) {
			cell.setCellValue(value);
		}
	}
	
}
