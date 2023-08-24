package com.ezcore.foi.ecase.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ezcore.common.controller.BaseController;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.zhengjie.annotation.Log;

@RestController
@RequiredArgsConstructor
@Api(tags = "介接服務-公文系統")
@RequestMapping("api/v1/wsdoc")
public class WsDocController extends BaseController {

	@Log("取得公文基本資料")
	@ApiOperation("取得公文基本資料")
	@GetMapping(value = "/receive/{receiveNo}")
//	@PreAuthorize("@el.check('')")	
	public ResponseEntity<Object> WSDOC01(@PathVariable String receiveNo) {
		return commonResponse("WSDOC01");
	}
	
	@Log("取得發文者相關資料")
	@ApiOperation("取得公文基本資料")
	@GetMapping(value = "/issue/{issueNo}")
//	@PreAuthorize("@el.check('')")	
	public ResponseEntity<Object> WSDOC02(@PathVariable String issueNo) {
		return commonResponse("WSDOC02");
	}
	
	@Log("下載公文單一附件")
	@ApiOperation("下載公文單一附件")
	@GetMapping(value = "/download/{receiveNo}/{fileId}")
//	@PreAuthorize("@el.check('')")	
	public ResponseEntity<Object> WSDOC03(@PathVariable String receiveNo, @PathVariable String fileId) {
		return commonResponse("WSDOC03");
	}
	
}
