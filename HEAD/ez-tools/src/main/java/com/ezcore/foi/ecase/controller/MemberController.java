package com.ezcore.foi.ecase.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ezcore.common.controller.BaseController;
import com.ezcore.foi.ecase.dao.dto.MemberSeqNoModifyDto;
import com.ezcore.foi.ecase.model.bo.MemberBo;
import com.ezcore.foi.ecase.service.MemberService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.zhengjie.annotation.Log;

@RestController
@RequiredArgsConstructor
@Api(tags = "委員/顧問資料維護")
@RequestMapping("api/v1/member")
public class MemberController extends BaseController {
	
	@Autowired
	private MemberService memberService;
	
	@Log("取得委員資料清單")
	@ApiOperation("取得委員資料清單")
	@GetMapping(value = "/{memberTypeCid}/list")
	@PreAuthorize("@el.check('')")	
	public ResponseEntity<Object> Member01(@PathVariable Long memberTypeCid) {
		return commonResponse(memberService.getList(memberTypeCid), "Member01");
	}
	
	@Log("取得單筆委員資料")
	@ApiOperation("取得單筆委員資料")
	@GetMapping(value = "/{memberTypeCid}/{id}")
	@PreAuthorize("@el.check('')")		
	public ResponseEntity<Object> Member02(@PathVariable Long memberTypeCid, @PathVariable String id) {
		return commonResponse(memberService.get(memberTypeCid, id), "Member02");
	}
	
	@Log("異動單筆委員資料")
	@ApiOperation("異動單筆委員資料")
	@PostMapping
	@PreAuthorize("@el.check('')")		
	public ResponseEntity<Object> Member03(@RequestBody MemberBo req) {
		memberService.update(req);
		return commonResponse("Member03");
	}
	
	@Log("調整委員次序")
	@ApiOperation("調整委員次序")
	@PostMapping(value = "/resort")
	@PreAuthorize("@el.check('')")		
	public ResponseEntity<Object> Member04(@RequestBody List<MemberSeqNoModifyDto> req) {
		memberService.resort(req);
		return commonResponse("Member04");
	}
}
