package com.ezcore.tools.spreadsheetgen.generator;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.io.File;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.tools.common.CodeDetailMap;
import com.ezcore.tools.common.Constants;

@Service("MultiSheet")
public class MultiSheetServiceImpl implements ExcelService {
    
    @Override
    public InputStream generateExcelReport(String templateName, Map<String, Object> data) throws IOException {
        String templatePath = CodeDetailMap.get("file_path", "form_template_path").getProperty2() + templateName + ".xls";	// 找出系統規定的檔案存放路徑
        String outputPath = Constants.SYS_HOME + "\\downloads\\" + data.get("outputName") + "PrintResult.xls";
        MultiSheetGenerator.execute(templatePath, data, outputPath);
        return new FileInputStream(new File(outputPath));
    }
}
