package com.ezcore.tools.spreadsheetgen.generator;

import java.io.IOException;
import java.io.InputStream;
import java.util.Map;

public interface ExcelService {
    InputStream generateExcelReport(String templateName, Map<String, Object> data) throws IOException;
}
