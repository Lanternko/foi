package com.ezcore.foi.ecase.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ezcore.common.controller.BaseController;
import com.ezcore.foi.ecase.model.request.TmpMember121Request;
import com.ezcore.foi.ecase.model.request.TmpMember122Request;
import com.ezcore.foi.ecase.service.TmpMemberService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.zhengjie.annotation.Log;
import me.zhengjie.annotation.rest.AnonymousPostMapping;

@RequiredArgsConstructor
@Api(tags = "委員/顧問資料維護")
@RestController
@RequestMapping("/api/v1/member")
public class TmpMemberController extends BaseController {
	@Autowired
	private TmpMemberService tmpMemberService;
	
	@AnonymousPostMapping("/report1")
	@ApiOperation("下載評議委員報表")
	@Log("下載評議委員報表")
//	@PreAuthorize("@el.check('')")
	public ResponseEntity<Object> tmpMember121(@RequestBody TmpMember121Request req) {
		tmpMemberService.member121(req);
		return commonResponse("TmpMember121");
	}
	
	@AnonymousPostMapping("/report2")
	@ApiOperation("下載諮詢委員報表")
	@Log("下載諮詢委員報表")
//	@PreAuthorize("@el.check('')")
	public ResponseEntity<Object> tmpMember122(@RequestBody TmpMember122Request req) {
		tmpMemberService.member122(req);
		return commonResponse("TmpMember122");
	}
}
