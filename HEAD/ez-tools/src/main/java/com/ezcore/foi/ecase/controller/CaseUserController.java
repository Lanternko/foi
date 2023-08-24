package com.ezcore.foi.ecase.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ezcore.common.controller.BaseController;
import com.ezcore.foi.ecase.service.CaseUserService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.zhengjie.annotation.Log;

@RestController
@RequiredArgsConstructor
@Api(tags = "")
@RequestMapping("")
public class CaseUserController extends BaseController {

	@Autowired
	private CaseUserService caseUserService;
	
	@GetMapping("")
	@Log("")
	@ApiOperation("")
	@PreAuthorize("@el.check('')")
	public ResponseEntity<Object> CaseUser01(String caseMasterTid) {
		return commonResponse(caseUserService.getApplicantNames(caseMasterTid), "CaseUser01");
	}
	
}