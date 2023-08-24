package com.ezcore.foi.ecase.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ezcore.common.controller.BaseController;
import com.ezcore.foi.ecase.model.bo.caseflowbo.EditData;
import com.ezcore.foi.ecase.service.CaseFlowService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.zhengjie.annotation.Log;

@RequiredArgsConstructor
@Api(tags = "案件流程")
@RestController
@RequestMapping("/api/v1/caseFlow")
public class CaseFlowController extends BaseController {

	@Autowired
	private CaseFlowService caseFlowService;
	
    @PutMapping("/")
    @ApiOperation("新增一筆進度")
//    @PreAuthorize("@el.check('')")
    @Log("新增一筆進度")
    public ResponseEntity<Object> CaseFlow01(@RequestBody EditData req) {
        return commonResponse(caseFlowService.addCaseFlow(req), "CaseFlow01");
    }

    @DeleteMapping("/{caseMasterTid}/{caseFlowTid}")
    @ApiOperation("刪除一筆進度")
//    @PreAuthorize("@el.check('')")
    @Log("刪除一筆進度")
    public ResponseEntity<Object> CaseFlow02(@PathVariable String caseMasterTid, @PathVariable String caseFlowTid) {
    	caseFlowService.delCaseFlow(caseMasterTid, caseFlowTid);
        return commonResponse("CaseFlow02");
    }

    @PostMapping("/")
    @ApiOperation("修改案件進度")
//    @PreAuthorize("@el.check('')")
    @Log("修改案件進度")
    public ResponseEntity<Object> CaseFlow03(@RequestBody EditData req) {
        return commonResponse(caseFlowService.modCaseFlow(req), "CaseFlow03");
    }

    @GetMapping("/list/{caseMasterTid}")
    @ApiOperation("取得單一案件流程")
//    @PreAuthorize("@el.check('')")
    @Log("取得單一案件流程")
    public ResponseEntity<Object> CaseFlow04(@PathVariable String caseMasterTid) {
        return commonResponse(caseFlowService.getCaseFlow(caseMasterTid), "CaseFlow04");
    }

    @GetMapping("/flowState/{caseTypeCode}/{caseMasterTid}")
    @ApiOperation("取得案件最近一筆指定流程代碼")
//    @PreAuthorize("@el.check('')")
    @Log("取得案件最近一筆指定流程代碼")
    public ResponseEntity<Object> CaseFlow05(@PathVariable String caseTypeCode, @PathVariable String caseMasterTid) {
        return commonResponse(caseFlowService.getFlowCodeByState(caseTypeCode, caseMasterTid), "CaseFlow05");
    }

}