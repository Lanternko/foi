package com.ezcore.tools.spreadsheetgen.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ezcore.tools.common.Constants;
import com.ezcore.tools.spreadsheetgen.generator.ExcelService;
import com.ezcore.tools.spreadsheetgen.generator.ExcelServiceImpl;
import com.ezcore.tools.spreadsheetgen.generator.MultiSheetServiceImpl;
import com.ezcore.tools.spreadsheetgen.service.SharedReportService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import me.zhengjie.annotation.Log;
import me.zhengjie.annotation.rest.AnonymousGetMapping;
import me.zhengjie.exception.BadRequestException;

@RestController
@Api(tags = "系統 : 報表控制")
@RequestMapping("tools/report/api/v1")
public class ReportController {

	@Autowired
    private BeanFactory factory;
    @Autowired
    private ApplicationContext applicationContext;
    
    private static final Logger logger = LoggerFactory.getLogger(ReportController.class);

    /*
     * 接前端傳進來的參數
     */
// ------------------------------------------------------------------------------------------------------------------- //    
    @Log("報表生成")
    @ApiOperation("報表生成")
//    @PreAuthorize("@el.check('menu:list')")
    @AnonymousGetMapping("/")
 // 此方法用於生成指定報表並將其以Excel形式返回給客戶端
    public void theReport(@RequestParam Map<String, String> allParams, HttpServletResponse response) throws IOException {
    	// 檢查報表代號是否存在
        if (allParams.isEmpty() || allParams.get(Constants.REPORT) == null) {
            throw new BadRequestException("產報表時最少需傳入報表代號(report='?')");
        }
        
        // 根據報表代號導到對應的worker
        String templateName = allParams.get(Constants.REPORT);
        SharedReportService sharedService = factory.getBean(templateName, SharedReportService.class);
        Map<String, Object> data = sharedService.getDataMapFromServiceImp(templateName, allParams);

        InputStream excelStream;
        ExcelService excelService;
        
        // 導到excelService
        if (sharedService.isMultiSheet()) {
            excelService = applicationContext.getBean(MultiSheetServiceImpl.class);
        } else {
            excelService = applicationContext.getBean(ExcelServiceImpl.class);
        }
        
        excelStream = excelService.generateExcelReport(templateName, data);
        
        // 轉換ez-admin/temp裡的檔案格式
        response.setContentType("application/vnd.ms-excel");
        response.setHeader("Content-Disposition", "attachment; filename=" + URLEncoder.encode(data.get("outputName") + "PrintResult.xls", "UTF-8"));
        
        logger.info("print successfully of {}", data.get("outputName")); 	// 使用日誌記錄成功信息
        OutputStream out = response.getOutputStream();
        byte[] buffer = new byte[1000000];
        int bytesRead;
        while ((bytesRead = excelStream.read(buffer)) != -1) {
            out.write(buffer, 0, bytesRead);
        }

        excelStream.close();
        out.flush();
        out.close();
    }
    
    @AnonymousGetMapping("/test")
    public void test(HttpServletResponse response) throws IOException {
        for (int i = 1; i <= 24; i++) {
        	if (i == 8 || i == 9 || i == 15) {
        		continue;
        	}
            String reportName = String.format("web0802%02d", i);
            Map<String, String> params = new HashMap<>();
            params.put(Constants.REPORT, reportName);

            theReport(params, response);
        }
    }

}
