package com.ezcore.tools.spreadsheetgen.generator;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.ezcore.tools.common.CodeDetailMap;
import com.ezcore.tools.common.Constants;

import me.zhengjie.exception.BadRequestException;


//Service responsible for generating Excel reports
@Service
public class ExcelServiceImpl implements ExcelService {
	private static final Logger logger = LoggerFactory.getLogger(ExcelServiceImpl.class);
	
	// 使用指定的模板和數據生成Excel報告
    @Override
    public InputStream generateExcelReport(String templateName, Map<String, Object> data) throws IOException {
        // 準備模板和輸出檔案的路徑
		
		// 模板路徑
		/* com/ezcore/tools/spreadsheetgen/template/SampleReport.xls */
	    String templatePath = CodeDetailMap.get("file_path", "form_template_path").getProperty2() + templateName + ".xls";
	    /* C:\Users\administrator\ez-admin\temp\SampleReportPrintResult.xls */
        // 當前日期和時間
        LocalDateTime currentDateTime = LocalDateTime.now();
        String formattedDateTime = currentDateTime.format(DateTimeFormatter.ofPattern("yyMMdd_HH-mm-ss_SSS"));
        // 輸出路徑
        String separator = File.separator;
        String outputPath = Constants.SYS_HOME + separator + "ez-admin" + separator + "temp" + separator + 
            data.get("outputName") + "之" + formattedDateTime + ".xls";
	    
        // 生成Excel檔案
        ExcelGenerator.execute(templatePath, data, outputPath);

        File file = new File(outputPath);
        if (!file.exists()) {
            // 使用sl4j記錄錯誤信息
            logger.error("檔案不存在: {}", outputPath);
            // 拋出異常以通知呼叫者
            throw new BadRequestException("檔案生成失敗，請重試！");
        }

        // 將檔案作為InputStream返回，以便前端可以訪問文件路徑
        return new FileInputStream(new File(outputPath));
    }
}