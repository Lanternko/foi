package com.ezcore.foi.ecase.service.spreadsheets;

import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.List;
import java.util.Date;

public class GenerateExcelPractice {
	
    public static void main(String[] args) {
        // Create a new workbook
        Workbook workbook = new XSSFWorkbook();

        // Create a sheet
        Sheet sheet = workbook.createSheet("Sheet1");

        // Create the column titles row
        Row titleRow = sheet.createRow(0);
        String[] columnTitles = {"序號", "案號", "申請人（申訴人）", "相對人", "金融服務業主張不予揭露說明", "評議中心審核結果回覆", "進件方式", "續行評議", "評議處理狀況"};
        for (int i = 0; i < columnTitles.length; i++) {
            Cell cell = titleRow.createCell(i);
            cell.setCellValue(columnTitles[i]);
        }

        // Create placeholder rows with empty values
        for (int i = 1; i <= 10; i++) {
            Row placeholderRow = sheet.createRow(i);
            for (int j = 0; j < columnTitles.length; j++) {
                Cell cell = placeholderRow.createCell(j);
                cell.setCellValue("");
            }
        }
        /*
         * try to input some values into the sheet
         */
        List<String> data = Arrays.asList("Data 1", "Data 2", "Data 3");

	     // Create placeholder rows with actual data values
        for (int i = 1; i <= data.size(); i++) {
        	Row placeholderRow = sheet.createRow(i);
        	for (int j = 0; j < columnTitles.length; j++) {
        		Cell cell = placeholderRow.createCell(j);
        		String cellValue = data.get(i - 1); // Assuming the data list is 0-based
        		cell.setCellValue(cellValue);
        	}
        }
	          

	     /*
	      * name the file according to the current time, then save the file
	      */
	     // Get the current timestamp
	     Date currentTime = new Date();

	     // Format the timestamp as a string
	     SimpleDateFormat dateFormat = new SimpleDateFormat("MMdd_HHmm");
	     String timestamp = dateFormat.format(currentTime);

	     // Generate the filename with the timestamp
	     String filename = "holder_temp_" + timestamp + ".xlsx";

	     // Save the workbook to the generated filename
	     try (FileOutputStream fileOut = new FileOutputStream(filename)) {
	         workbook.write(fileOut);
	         System.out.println("Excel file generated successfully: " + filename);
	     } catch (IOException e) {
	         e.printStackTrace();
	     }
	     
        // Close the workbook
        try {
            workbook.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
//        Date currentTime = new Date();
//        SimpleDateFormat dateFormat2 new SimpleDateFormat("")
//        try {
//        	workbook.close();
//        } catch (IOException e) {
//        	e.printStackTrace();
//        }
    }
}
