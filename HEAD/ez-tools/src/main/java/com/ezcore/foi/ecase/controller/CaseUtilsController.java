package com.ezcore.foi.ecase.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ezcore.common.controller.BaseController;
import com.ezcore.foi.ecase.model.request.caseutils.CaseUtils02Request;
import com.ezcore.foi.ecase.model.request.caseutils.CaseUtils03Request;
import com.ezcore.foi.ecase.service.CaseTelService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.zhengjie.annotation.Log;

@RestController
@RequiredArgsConstructor
@Api(tags = "案件處理工具")
@RequestMapping("api/v1/caseUtils")
public class CaseUtilsController extends BaseController {

    @GetMapping("/user/{idNo}/{topN}")
    @ApiOperation("以ID查找人名資料")
    @Log("以ID查找人名資料")
//    @PreAuthorize("@el.check('')")
    public ResponseEntity<Object> CaseUtils01(@PathVariable String idNo, @PathVariable Integer topN) {
        return commonResponse("CaseUtils01");
    }
    
    @PostMapping("/email")
    @ApiOperation("寄送Email")
    @Log("寄送Email")
//    @PreAuthorize("@el.check('')")
    public ResponseEntity<Object> CaseUtils02(@RequestBody CaseUtils02Request req) {
        return commonResponse("CaseUtils02");
    }
    
    @PostMapping("/sms")
    @ApiOperation("寄送SMS")
    @Log("寄送SMS")
//    @PreAuthorize("@el.check('')")
    public ResponseEntity<Object> CaseUtils03(@RequestBody CaseUtils03Request req) {
        return commonResponse("CaseUtils03");
    }
	
}
