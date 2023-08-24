package com.ezcore.foi.ecase.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ezcore.common.controller.BaseController;
import com.ezcore.foi.ecase.model.bo.configbo.FeeConfig;
import com.ezcore.foi.ecase.service.TmpConfigService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.zhengjie.annotation.Log;
import me.zhengjie.annotation.rest.AnonymousGetMapping;
import me.zhengjie.annotation.rest.AnonymousPostMapping;

@RequiredArgsConstructor
@Api(tags = "業務類代碼")
@RestController
@RequestMapping("/api/v1/config")
public class TmpConfigController extends BaseController {
	@Autowired
	private TmpConfigService configService;

	@AnonymousGetMapping("/fee/{memberType}")
	@ApiOperation("委員出席費代碼-查詢")
	@Log("委員出席費代碼-查詢")
//	@PreAuthorize("@el.check('')")
	public ResponseEntity<Object> config101(@PathVariable String memberType) {
		return commonResponse(configService.config101(memberType), "Config101");
	}

	@AnonymousPostMapping("/fee/{memberType}")
	@ApiOperation("委員出席費代碼-修改")
	@Log("委員出席費代碼-修改")
//	@PreAuthorize("@el.check('')")
	public ResponseEntity<Object> config102(@PathVariable String memberType, @RequestBody List<FeeConfig> req) {
		configService.config102(memberType, req);
		return commonResponse("Config102");
	}
}
