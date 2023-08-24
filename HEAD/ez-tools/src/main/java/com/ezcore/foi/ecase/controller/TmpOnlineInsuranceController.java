package com.ezcore.foi.ecase.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ezcore.common.controller.BaseController;
import com.ezcore.foi.ecase.model.request.TmpOnlineInsurance01Request;
import com.ezcore.foi.ecase.model.request.TmpOnlineInsurance02Request;
import com.ezcore.foi.ecase.service.TmpOnlineInsuranceService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.zhengjie.annotation.Log;
import me.zhengjie.annotation.rest.AnonymousPostMapping;

@RequiredArgsConstructor
@Api(tags = "線上保險")
@RestController
@RequestMapping("/api/v1/online")
public class TmpOnlineInsuranceController extends BaseController {
	@Autowired
    private TmpOnlineInsuranceService onlineInsuranceService;

	@AnonymousPostMapping("/apply/dispute")
    @ApiOperation("新增防疫保單線上評議")
//    @PreAuthorize("@el.check('')")
    @Log("新增防疫保單線上評議")
    public ResponseEntity<Object> onlineInsurance01(@RequestBody TmpOnlineInsurance01Request req) {
    	onlineInsuranceService.addInsuranceDispute(req);
        return commonResponse("OnlineInsurance01");
    }
    
	@AnonymousPostMapping("/apply/case")
    @ApiOperation("新增防疫保單線上申訴")
//    @PreAuthorize("@el.check('')")
    @Log("新增防疫保單線上申訴")
    public ResponseEntity<Object> onlineInsurance02(@RequestBody TmpOnlineInsurance02Request req) {
        onlineInsuranceService.addInsuranceAppeal(req);
        return commonResponse("OnlineInsurance02"); // 無回應內容
    }

}
