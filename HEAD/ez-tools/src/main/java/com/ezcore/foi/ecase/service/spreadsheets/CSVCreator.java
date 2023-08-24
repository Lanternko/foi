package com.ezcore.foi.ecase.service.spreadsheets;

import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

public class CSVCreator {
    public static void main(String[] args) {
        String[] headers = {"序號", "案號", "申請人（申訴人）", "相對人", "金融服務業主張不予揭露說明", "評議中心審核結果回覆", "進件方式", "續行評議", "評議處理狀況"};

        // 這裡是一個假設的資料庫資料
        List<String[]> dataRows = Arrays.asList(
            new String[]{"1", "1110800859", "林建民", "華南商業銀行", "與案號1110800733之當事人", "查林君…", "臨櫃進件", "無", "無"},
            new String[]{"2", "T111117781", "林書大", "台北富邦商業銀行", "本案屬相同申訴人", "查林君…", "臨櫃進件", "112/01/10", "審理中"},
            new String[]{"3", "T1111106946", "王洋行", "華南商業銀行", "非金融消費爭議", "查王君…", "金管會副知", "否", "否"}
            // ... 其他資料行
        );

        try {
        	BufferedWriter csvWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream("output2.csv"), "UTF-8"));


            // 寫入標頭行
            for (String header : headers) {
                csvWriter.append(header);
                csvWriter.append(",");
            }
            csvWriter.append("\n");

            // 寫入資料行
            for (String[] dataRow : dataRows) {
                for (String data : dataRow) {
                    csvWriter.append(data);
                    csvWriter.append(",");
                }
                csvWriter.append("\n");
            }

            csvWriter.flush();
            csvWriter.close();

            System.out.println("CSV 文件已成功生成。");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
