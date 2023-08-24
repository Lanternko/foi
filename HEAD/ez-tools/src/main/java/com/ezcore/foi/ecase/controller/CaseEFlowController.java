package com.ezcore.foi.ecase.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ezcore.common.controller.BaseController;
import com.ezcore.foi.ecase.model.bo.EflowBoDoProc;
import com.ezcore.foi.ecase.model.request.caseeflow.CaseEFlow01Request;
import com.ezcore.foi.ecase.model.request.caseeflow.CaseEFlow05Request;
import com.ezcore.foi.ecase.model.request.caseeflow.CaseEFlow06Request;
import com.ezcore.foi.ecase.model.request.caseeflow.CaseEFlow07Request;
import com.ezcore.foi.ecase.model.request.caseeflow.CaseEFlow08Request;
import com.ezcore.foi.ecase.service.CaseEFlowService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.RequestBody;
import lombok.RequiredArgsConstructor;
import me.zhengjie.annotation.Log;

@RequiredArgsConstructor
@Api(tags = "案件電子流程")
@RestController
@RequestMapping("/api/v1/caseEFlow")
public class CaseEFlowController extends BaseController {

	@Autowired
	private CaseEFlowService caseEFlowService;
	
    @PostMapping("/map")
    @Log("取得作業可用電子流程表")
    @ApiOperation("取得作業可用電子流程表")
//    @PreAuthorize("@el.check('')")
    public ResponseEntity<Object> CaseEFlow01(@RequestBody CaseEFlow01Request req) {
    	return commonResponse(caseEFlowService.getMap(req), "CaseEFlow01");
    }

    @GetMapping("/{pCode}/init/{account}")
    @Log("(電話檢核表)取得待建立電話流程清單")
    @ApiOperation("(電話檢核表)取得待建立電話流程清單")
//    @PreAuthorize("@el.check('')")
    public ResponseEntity<Object> CaseEFlow02(@PathVariable String pCode, @PathVariable String account) {
        return commonResponse(caseEFlowService.get1000Init(pCode, account), "CaseEFlow02");
    }

    @GetMapping("/{pCode}/list/{currentWorkGroupCode}/{currentCode}/{account}")
    @Log("(電話檢核表)取指定流程清單")
    @ApiOperation("(電話檢核表)取指定流程清單")
//    @PreAuthorize("@el.check('')")
    public ResponseEntity<Object> CaseEFlow03(@PathVariable String pCode, @PathVariable String currentWorkGroupCode, 
    										  @PathVariable String currentCode, @PathVariable String account) {
        return commonResponse(caseEFlowService.get1000List(pCode, currentWorkGroupCode, currentCode, account), "CaseEFlow03");
    }

    @PostMapping("/doProc")
    @Log("推進流程")
    @ApiOperation("推進流程")
//    @PreAuthorize("@el.check('')")
    public ResponseEntity<Object> CaseEFlow04(@RequestBody List<EflowBoDoProc> req) {
    	caseEFlowService.doProc(req);
    	return commonResponse("CaseEFlow04");
    }

    @PostMapping("/2000/init")
    @Log("(電話申訴結案檢核)取得待建立電話流程清單")
    @ApiOperation("(電話申訴結案檢核)取得待建立電話流程清單")
//    @PreAuthorize("@el.check('')")
    public ResponseEntity<Object> CaseEFlow05(@RequestBody CaseEFlow05Request req) {
        return commonResponse(caseEFlowService.get2000Init(req), "CaseEFlow05");
    }

    @PostMapping("/2000/list")
    @Log("(電話申訴結案檢核)取指定流程清單")
    @ApiOperation("(電話申訴結案檢核)取指定流程清單")
//    @PreAuthorize("@el.check('')")
    public ResponseEntity<Object> CaseEFlow06(@RequestBody CaseEFlow06Request req) {
        return commonResponse(caseEFlowService.get2000List(req), "CaseEFlow06");
    }
    
   /* 
    * CaseEFlow 07
    * 初步完成，但是還沒有塞入DB做檢查，因為我手邊DB沒有case_eflow的資料
    * @author: 柯子捷
    * @date: 2023/6/6 17:09
    */
    @PostMapping("/1000/history")
    @Log("(電話檢核表)查詢移交歷史")
    @ApiOperation("(電話檢核表)查詢移交歷史")
//    @PreAuthorize("@el.check('')")
    public ResponseEntity<Object> CaseEFlow07(@RequestBody CaseEFlow07Request req) {
        return commonResponse(caseEFlowService.get1000History(req), "CaseEFlow07");
    }

    /*
     * CaseEFlow 08
     * status 999; 尚有未修復的bug: perhaps some value is null so it cause runtime exception
     * @author: 柯子捷
     * @date: 2023/6/7 16:33
     */
    @PostMapping("/2000/history")
    @Log("(電話申訴結案檢核)查詢移交歷史")
    @ApiOperation("(電話申訴結案檢核)查詢移交歷史")
//    @PreAuthorize("@el.check('')")
    public ResponseEntity<Object> CaseEFlow08(@RequestBody CaseEFlow08Request req) {
        return commonResponse(caseEFlowService.get2000History(req), "CaseEFlow08");
    }
    
}