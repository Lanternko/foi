package com.ezcore.tools.spreadsheetgen.generator;

import java.io.IOException;

import java.io.InputStream;
import java.util.Map;

import org.jxls.builder.AreaBuilder;
import org.jxls.builder.xls.XlsCommentAreaBuilder;

import java.util.List;
import org.jxls.area.Area;
import org.jxls.common.CellRef;
import org.jxls.transform.Transformer;
import org.jxls.util.TransformerFactory;
import java.io.FileOutputStream;
import java.io.OutputStream;
import org.jxls.common.Context;
import org.jxls.area.XlsArea;

// 尚無法填入資料進第二個頁面
public class MultiSheetGenerator {

    public static void execute(String templatePath, Map<String, Object> data, String outputFilePath) throws IOException {
        if (data == null || templatePath.isEmpty()) {
            throw new IllegalArgumentException("Data and template path cannot be null or empty");
        }

        try (InputStream is = MultiSheetGenerator.class.getClassLoader().getResourceAsStream(templatePath);
             OutputStream os = new FileOutputStream(outputFilePath)) {
        	Transformer transformer = TransformerFactory.createTransformer(is, os);
	        AreaBuilder areaBuilder = new XlsCommentAreaBuilder(transformer, true);
	        List<Area> xlsAreaList = areaBuilder.build();
	        Area sheet1Area = xlsAreaList.get(0); //抓第一個sheet
//	        Area sheet2Area = xlsAreaList.get(1); //第二個sheet
	        Context context1 = new Context();
//	        Context context2 = new Context();
	        context1.putVar("dataList1", data.get("dataList1"));
//	        context2.putVar("dataList2", data.get("dataList2"));
	        sheet1Area.applyAt(new CellRef("sheet1!A1"), context1); // process sheet1
//	        sheet2Area.applyAt(new CellRef("sheet2!A1"), context2); // process sheet2
	        sheet1Area.processFormulas();
//	        sheet2Area.processFormulas();
	        transformer.write();
            
//            Transformer transformer = TransformerFactory.createTransformer(is, os);
//            XlsArea xlsArea1 = new XlsArea("Sheet1!A1:G7", transformer);
//            XlsArea xlsArea2 = new XlsArea("Sheet2!A1:G7", transformer);
//            Context context = new Context();
//
            // Adding the data to the context for first sheet
//            context.putVar("dataList1", data.get("dataList1"));
//            xlsArea1.applyAt(new CellRef("Sheet1!A1"), context);
            

//            // Adding the data to the context for second sheet
//            context.putVar("dataList2", data.get("dataList2"));
//            xlsArea2.applyAt(new CellRef("Sheet2!A1"), context);

//            transformer.write();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    
    private MultiSheetGenerator() {}
}
