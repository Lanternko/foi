package com.ezcore.foi.ecase.controller;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ezcore.common.controller.BaseController;
import com.ezcore.foi.ecase.model.bo.CaseTelEflow2000BoList;
import com.ezcore.foi.ecase.model.bo.Eflow2000BoData;
import com.ezcore.foi.ecase.model.request.CaseTel02Request;
import com.ezcore.foi.ecase.service.CaseTelService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.zhengjie.annotation.Log;

@RestController
@RequiredArgsConstructor
@Api(tags = "案件電話件")
@RequestMapping("api/v1/caseTel/eflow/2000")
public class CaseTelController extends BaseController {

    private final CaseTelService caseTelService;
    
    /*
     * tel 01
     * @author: 柯子捷
     * 完成狀態：900 找不到目前登入的資訊
     * 解決方法：導入前端，輸入token
     * 完成時間：6/8 14:36
     */
    @PostMapping(value = "/check")
    @Log("取得案件電話申訴檢核表")
    @ApiOperation("取得案件電話申訴檢核表")
//    @PreAuthorize("@el.check('')")
    public ResponseEntity<Object> CaseTel01(@RequestBody List<Eflow2000BoData> datas) {
        List<CaseTelEflow2000BoList> caseTelDetailDTOs = caseTelService.getEflow2000Check(datas);

        // If no caseTelDetailDTOs found, return an empty response
        if (caseTelDetailDTOs.isEmpty()) {
            return commonResponse("CaseTel01");
        }

        return commonResponse(caseTelDetailDTOs, "CaseTel01");
    }
    /*
     * tel 02
     * author: 柯子捷
     * status: -1 id not found; no data in db
     * completion time: 2023-06-09 16:30
     */
    @PostMapping(value = "/update")
    @Log("異動電話申訴檢核表單一節點")
    @ApiOperation("異動電話申訴檢核表單一節點")
    public ResponseEntity<Object> CaseTel02(@RequestBody CaseTel02Request req) {
        caseTelService.updateEflow2000Check(req.getCaseTelCheckTid(), req.getValue());
        return commonResponse("CaseTel02");
    }
}