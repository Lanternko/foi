package com.ezcore.foi.ecase.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ezcore.common.controller.BaseController;
import com.ezcore.foi.ecase.service.ConfigService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import me.zhengjie.annotation.Log;

@Slf4j
@RestController
@RequiredArgsConstructor
@Api(tags = "業務類代碼")
@RequestMapping("api/v1/config")
public class ConfigController extends BaseController {

	@Autowired
	private ConfigService configService;
	
	@Log("產業別樹")
	@ApiOperation("產業別樹")
	@PostMapping(value = "/industryTree")
//	@PreAuthorize("@el.check('')")	
	public ResponseEntity<Object> industryTree() {
		return commonResponse(configService.getIndustryTree(), "industryTree");
	}

	@Log("查詢為金融業者使用者")
	@ApiOperation("查詢為金融業者使用者")
	@GetMapping(value = "/isCompanyUser")
//	@PreAuthorize("@el.check('')")	
	public ResponseEntity<Object> Config02() {
		return commonResponse(configService.isCompanyUser(), "Config02");
	}

	@Log("")
	@ApiOperation("")
	@PostMapping(value = "")
//	@PreAuthorize("@el.check('')")	
	public ResponseEntity<Object> Config03() {
		
		
		return commonResponse("Config03");
	}
	
}
