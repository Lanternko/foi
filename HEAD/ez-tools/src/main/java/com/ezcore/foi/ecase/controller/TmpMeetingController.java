package com.ezcore.foi.ecase.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ezcore.common.controller.BaseController;
import com.ezcore.foi.ecase.service.TmpMeetingService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.zhengjie.annotation.Log;
import me.zhengjie.annotation.rest.AnonymousGetMapping;

@RequiredArgsConstructor
@Api(tags = "評議大會")
@RestController
@RequestMapping("/api/v1/meeting")
public class TmpMeetingController extends BaseController {
	@Autowired
	private TmpMeetingService tmpMeetingService;

	@AnonymousGetMapping("/list/member")
	@ApiOperation("評議委員會議議程資料（外網）")
	@Log("評議委員會議議程資料（外網）")
//	@PreAuthorize("@el.check('')")
	public ResponseEntity<Object> meeting101() {
		return commonResponse(tmpMeetingService.meeting101(), "Meeting101");
	}
}
