package com.ezcore.tools.codedetail.model;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Component;

import com.ezcore.tools.codedetail.dto.CodeDetailDto;

@Component
public class CreateCodeDetailExcel {
	public static final String TYPE = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
	private static final String[] HEADERS = {
			"cid",
			"kind",
			"code",
			"name",
			"description",
			"isEnabled",
			"property1",
			"property2",
			"property3",
			"property4",
			"property5",
			"property6",
			"property7",
			"property8",
			"property9",
			"parentId",
			"childId" };
	static final String SHEET = "CodeDetails";

	/* constructor */
	private CreateCodeDetailExcel() {
	}

	public static ByteArrayInputStream codeDetailToExcel(List<CodeDetailDto> codes) throws IOException {
		/*
		 * create a new Workbook
		 * create a new Sheet using Workbook.createSheet()
		 */
		try (Workbook workbook = new XSSFWorkbook()) {
			ByteArrayOutputStream out = new ByteArrayOutputStream();
			Sheet sheet = workbook.createSheet(SHEET);

			/* create header */
			Row headerRow = sheet.createRow(0);
			for (int col = 0; col < HEADERS.length; col++) {
				Cell cell = headerRow.createCell(col);
				cell.setCellValue(HEADERS[col]);
			}
			/*
			 * for each Tutorial, create a Row using Sheet.createRow()
			 * create Cell using Row.createCell(), then use Cell.setCellValue()
			 */

			int rowIdx = 1;
			for (CodeDetailDto code : codes) {
				Row row = sheet.createRow(rowIdx++);

				row.createCell(0).setCellValue(code.getCid());
				row.createCell(1).setCellValue(code.getKind());
				row.createCell(2).setCellValue(code.getCode());
				row.createCell(3).setCellValue(code.getName());
				row.createCell(4).setCellValue(code.getDescription());
				row.createCell(5).setCellValue(code.getIsEnabled()==null?false:code.getIsEnabled());
				row.createCell(7).setCellValue(code.getProperty1());
				row.createCell(8).setCellValue(code.getProperty2());
				row.createCell(9).setCellValue(code.getProperty3());
				row.createCell(10).setCellValue(code.getProperty4());
				row.createCell(11).setCellValue(code.getProperty5());
				row.createCell(12).setCellValue(code.getProperty6());
				row.createCell(13).setCellValue(code.getProperty7());
				row.createCell(14).setCellValue(code.getProperty8());
				row.createCell(15).setCellValue(code.getProperty9());
				row.createCell(16).setCellValue(code.getParentId()==null?0:code.getParentId());
				row.createCell(17).setCellValue(code.getChildId()==null?0:code.getChildId());

			}

			/* use Workbook.write() to write out ByteArrayOutputStream */
			workbook.write(out);
			return new ByteArrayInputStream(out.toByteArray());
		}

	}
}
