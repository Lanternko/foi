package com.ezcore.foi.ecase.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ezcore.common.controller.BaseController;
import com.ezcore.foi.ecase.dao.dto.HistorySessionMemberDetailsDto;
import com.ezcore.foi.ecase.service.SessionMemberService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.zhengjie.annotation.Log;
import me.zhengjie.exception.BadRequestException;

@RestController
@RequiredArgsConstructor
@Api(tags = "屆次委員")
@RequestMapping("api/v1/sessionMember")
public class SessionMemberController extends BaseController {

	@Autowired
	private SessionMemberService sessionMemberService;
	
	@Log("取得歷屆委員清單")
	@ApiOperation("取得歷屆委員清單")
	@GetMapping(value = "/list")
	@PreAuthorize("@el.check('')")	
	public ResponseEntity<Object> SessionMember01() {
		return commonResponse(sessionMemberService.getList(), "SessionMember01");
	}
	
	@Log("取得單筆屆次委員清單")
	@ApiOperation("取得單筆屆次委員清單")
	@GetMapping(value = "/{session}")
	@PreAuthorize("@el.check('')")	
	public ResponseEntity<Object> SessionMember02(@PathVariable String session) {
		return commonResponse(sessionMemberService.get(session), "SessionMember02");
	}
	
	@Log("新增/異動單筆屆次委員資料")
	@ApiOperation("新增/異動單筆屆次委員資料")
	@PostMapping
	@PreAuthorize("@el.check('')")	
	public ResponseEntity<Object> SessionMember03(@RequestBody HistorySessionMemberDetailsDto req) {
		sessionMemberService.update(req);
		return commonResponse("SessionMember03");
	}

	@Log("刪除屆次前置檢查")
	@ApiOperation("刪除屆次前置檢查")
	@DeleteMapping(value = "/{session}/check")
	@PreAuthorize("@el.check('')")	
	public ResponseEntity<Object> SessionMember04A(@PathVariable Integer session) {
		boolean notRemovable = sessionMemberService.deleteCheck(session);
		if (notRemovable) {
			throw new BadRequestException(1, String.format("屆次(%s)已被使用，不可刪除", session));
		}
		return commonResponse("SessionMember04A");	
	}
	
	@Log("刪除屆次")
	@ApiOperation("刪除屆次")
	@DeleteMapping(value = "/{session}")
	@PreAuthorize("@el.check('')")	
	public ResponseEntity<Object> SessionMember04B(@PathVariable Integer session) {
		boolean notRemovable = sessionMemberService.deleteCheck(session);
		if (notRemovable) {
			throw new BadRequestException(1, String.format("屆次(%s)已被使用，不可刪除", session));
		}
		sessionMemberService.delete(session);
		return commonResponse("SessionMember04B");
	}
	
}
