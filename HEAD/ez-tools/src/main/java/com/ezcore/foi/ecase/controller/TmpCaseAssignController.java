package com.ezcore.foi.ecase.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ezcore.common.controller.BaseController;
import com.ezcore.foi.ecase.model.request.TmpCaseAssign101Request;
import com.ezcore.foi.ecase.model.request.TmpCaseAssign102Request;
import com.ezcore.foi.ecase.service.TmpCaseAssignService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.zhengjie.annotation.Log;
import me.zhengjie.annotation.rest.AnonymousPostMapping;

@RequiredArgsConstructor
@Api(tags = "案件指派")
@RestController
@RequestMapping("/api/v1/caseAssign")
public class TmpCaseAssignController extends BaseController {
	@Autowired
	private TmpCaseAssignService tmpCaseAssignService;

	@AnonymousPostMapping("/case/")
	@ApiOperation("案件移轉")
	@Log("案件移轉")
//	@PreAuthorize("@el.check('')")
	public ResponseEntity<Object> tmpCaseAssign101(@RequestBody TmpCaseAssign101Request req) {
		tmpCaseAssignService.tmpCaseAssign101(req);
		return commonResponse("TmpCaseAssign101");
	}

	@AnonymousPostMapping("/docCase/")
	@ApiOperation("評議案件指派")
	@Log("評議案件指派")
//	@PreAuthorize("@el.check('')")
	public ResponseEntity<Object> tmpCaseAssign102(@RequestBody TmpCaseAssign102Request req) {
		tmpCaseAssignService.tmpCaseAssign102(req);
		return commonResponse("TmpCaseAssign102");
	}
}
