package com.ezcore.tools.spreadsheetgen.generator;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Map;
import org.jxls.common.Context;
import org.jxls.util.JxlsHelper;


/**
 * Excel Generate  
 */
public class ExcelGenerator {

	/**
	 * 產製Excel
	 * @param templatePath   ClassLoader可以取得的Excel範本檔路徑
	 * @param dataSource		 匯入的資料
	 * @param outputFilePath	 輸出檔案路徑
	 * @throws IOException 
	 */
	public static void execute(String templatePath, Map<String, Object> dataSource, String outputFilePath) throws IOException{
		if (dataSource == null || templatePath.isEmpty()) {
			throw new IllegalArgumentException("");			
		}

		try (InputStream is = ExcelGenerator.class.getClassLoader().getResourceAsStream(templatePath); 
			 OutputStream os = new FileOutputStream(outputFilePath);) {
			JxlsHelper.getInstance().processTemplate(is, os, new Context(dataSource));
		} catch (IOException e) {
			e.printStackTrace();
		}
        
	}
	
	private ExcelGenerator() {
	}
	
}
