package com.ezcore.foi.ecase.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ezcore.common.controller.BaseController;
import com.ezcore.foi.ecase.model.bo.meetingbo.Decide;
import com.ezcore.foi.ecase.model.bo.meetingbo.MeetingBo;
import com.ezcore.foi.ecase.model.bo.meetingbo.MeetingFile;
import com.ezcore.foi.ecase.model.request.Meeting01Request;
import com.ezcore.foi.ecase.model.request.Meeting06Request;
import com.ezcore.foi.ecase.model.request.Meeting21Request;
import com.ezcore.foi.ecase.model.request.Meeting22Request;
import com.ezcore.foi.ecase.service.MeetingService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.zhengjie.annotation.Log;

@RequiredArgsConstructor
@Api(tags = "評議大會")
@RestController
@RequestMapping("/api/v1/meeting")
public class MeetingController extends BaseController {
	
	@Autowired
	private MeetingService meetingService;

    @PostMapping("/list/")
    @ApiOperation("取得會次清單")
    @PreAuthorize("@el.check('')")
    @Log("取得會次清單")
    public ResponseEntity<Object> Meeting01(Meeting01Request req) {
        return commonResponse(meetingService.getMeetList(req), "Meeting01");
    }

    @GetMapping("/data/{meetingTid}")
    @ApiOperation("取得會次完整資料")
    @PreAuthorize("@el.check('')")
    @Log("取得會次完整資料")
    public ResponseEntity<Object> Meeting02(@PathVariable String meetingTid) {
        return commonResponse(meetingService.getMeetDetails(meetingTid), "Meeting02");
    }

    @GetMapping("/data/meeting/{meetingTid}")
    @ApiOperation("會次資料-查詢")
    @PreAuthorize("@el.check('')")
    @Log("會次資料-查詢")
    public ResponseEntity<Object> Meeting03(@PathVariable String meetingTid) {
        return commonResponse(meetingService.getMeet(meetingTid), "Meeting03");
    }

    @PostMapping("/data/meeting")
    @ApiOperation("會次資料-異動")
    @PreAuthorize("@el.check('')")
    @Log("會次資料-異動")
    public ResponseEntity<Object> Meeting04(MeetingBo req) {
    	meetingService.modMeet(req);
        return commonResponse("Meeting04");
    }

    @GetMapping("/data/member/{meetingTid}")
    @ApiOperation("出席委員-查詢")
    @PreAuthorize("@el.check('')")
    @Log("出席委員-查詢")
    public ResponseEntity<Object> Meeting05(@PathVariable String meetingTid) {
        return commonResponse(meetingService.getMember(meetingTid), "Meeting05");
    }

    @PostMapping("/data/member/")
    @ApiOperation("出席委員-異動")
    @PreAuthorize("@el.check('')")
    @Log("出席委員-異動")
    public ResponseEntity<Object> Meeting06(Meeting06Request req) {
    	meetingService.modMember(req);
        return commonResponse("Meeting06");
    }

    @GetMapping("/data/case/{meetingTid}")
    @ApiOperation("提會案件-查詢")
    @PreAuthorize("@el.check('')")
    @Log("提會案件-查詢")
    public ResponseEntity<Object> Meeting07(@PathVariable String meetingTid) {
        return commonResponse(meetingService.getCase(meetingTid), "Meeting07");
    }

    @PostMapping("/data/case")
    @ApiOperation("提會案件-異動")
    @PreAuthorize("@el.check('')")
    @Log("提會案件-異動")
    public ResponseEntity<Object> Meeting08() {
    	meetingService.modCase();
        return commonResponse("Meeting08");
    }

    @GetMapping("/data/file/{meetingTid}")
    @ApiOperation("會議檔案資料-查詢")
    @PreAuthorize("@el.check('')")
    @Log("會議檔案資料-查詢")
    public ResponseEntity<Object> Meeting09(@PathVariable String meetingTid, String showall) {
        return commonResponse(meetingService.getMeetFile(meetingTid, showall), "Meeting09");
    }

    @PostMapping("/data/file")
    @ApiOperation("會議檔案資料-異動")
    @PreAuthorize("@el.check('')")
    @Log("會議檔案資料-異動")
    public ResponseEntity<Object> Meeting10(MeetingFile req) {
    	meetingService.modMeetFile(req);
        return commonResponse("Meeting10");
    }

    @GetMapping("/data/decide/{meetingTid}")
    @ApiOperation("會議決議-查詢")
    @PreAuthorize("@el.check('')")
    @Log("會議決議-查詢")
    public ResponseEntity<Object> Meeting11(@PathVariable String meetingTid) {
        return commonResponse(meetingService.getDecision(meetingTid), "Meeting11");
    }

    @PostMapping("/data/decide")
    @ApiOperation("會議決議-異動")
    @PreAuthorize("@el.check('')")
    @Log("會議決議-異動")
    public ResponseEntity<Object> Meeting12(Decide req) {
    	meetingService.modDecision(req);
        return commonResponse("Meeting12");
    }
    @PostMapping("/data/case/add")
    @ApiOperation("案件加入提案")
    @PreAuthorize("@el.check('')")
    @Log("案件加入提案")
    public ResponseEntity<Object> Meeting21(Meeting21Request req) {
    	meetingService.addCase(req);
    	return commonResponse("Meeting21");
    }
    @PostMapping("/data/case/remove")
    @ApiOperation("案件取消提案")
    @PreAuthorize("@el.check('')")
    @Log("案件取消提案")
    public ResponseEntity<Object> Meeting22(Meeting22Request req) {
    	meetingService.cancelCase(req);
    	return commonResponse("Meeting22");
    }

    @GetMapping("/download/{meetingTid}/menu")
    @ApiOperation("下載會議目錄")
    @PreAuthorize("@el.check('')")
    @Log("下載會議目錄")
    public ResponseEntity<Object> Meeting51(@PathVariable String meetingTid) {
    	meetingService.downloadMenu(meetingTid);
        return commonResponse("Meeting51");
    }

    @GetMapping("/download/{meetingTid}/schedule")
    @ApiOperation("下載會議議程")
    @PreAuthorize("@el.check('')")
    @Log("下載會議議程")
    public ResponseEntity<Object> Meeting52(@PathVariable String meetingTid) {
    	meetingService.downloadSchedule(meetingTid);
        return commonResponse("Meeting52");
    }

    @GetMapping("/download/{meetingTid}/minutes")
    @ApiOperation("下載預產會議紀錄")
    @PreAuthorize("@el.check('')")
    @Log("下載預產會議紀錄")
    public ResponseEntity<Object> Meeting53(@PathVariable String meetingTid) {
    	meetingService.downloadGeneratedMinute(meetingTid);
        return commonResponse("Meeting53");
    }
    
    @GetMapping("/download/{meetingFileTid}")
    @ApiOperation("下載會議檔案")
    @PreAuthorize("@el.check('')")
    @Log("下載會議檔案")
    public ResponseEntity<Object> Meeting54(@PathVariable String meetingFileTid) {
    	meetingService.downloadMeetingFile(meetingFileTid);
    	return commonResponse("Meeting54");
    }


    

}
