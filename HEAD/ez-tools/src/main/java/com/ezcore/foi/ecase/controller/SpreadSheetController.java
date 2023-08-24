package com.ezcore.foi.ecase.controller;

import java.io.FileNotFoundException;
import java.util.Map;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ezcore.common.controller.BaseController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.zhengjie.annotation.Log;
import me.zhengjie.annotation.rest.AnonymousGetMapping;
import me.zhengjie.exception.BadRequestException;
import me.zhengjie.service.SpreadSheetService;

@RestController
@RequiredArgsConstructor
@Api(tags = "產生報表")
@RequestMapping("/api/v1/spreadsheet")
public class SpreadSheetController extends BaseController {

	@Autowired
	private BeanFactory factory;
	
	@Log("產生報表")
	@ApiOperation("產生報表")
	@AnonymousGetMapping(value = "/create")
	public ResponseEntity<Object> createExcelWorkbook(@RequestParam Map<String, String> params) throws FileNotFoundException  {
		if (params.isEmpty() || params.get("form") == null) {
			throw new BadRequestException("產報表時最少需傳入報表代號(form)");
		}
		
		String formCode = params.get("form"); 
//		動態載入service實作
		SpreadSheetService service = factory.getBean(formCode, SpreadSheetService.class);
		String filepath = service.create(params);
		
//		是否傳檔案回前端?
		
		return commonResponse("createExcelWorkbook");
	}
	
}
