package com.ezcore.foi.ecase.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ezcore.common.controller.BaseController;
import com.ezcore.common.model.BasePageResponse;
import com.ezcore.foi.ecase.model.bo.casedatabo.Examiner;
import com.ezcore.foi.ecase.model.request.TmpCaseManager108Request;
import com.ezcore.foi.ecase.model.request.tmpcasemanager.TmpCaseManager101Request;
import com.ezcore.foi.ecase.model.request.tmpcasemanager.TmpCaseManager102Request;
import com.ezcore.foi.ecase.model.request.tmpcasemanager.TmpCaseManager103Request;
import com.ezcore.foi.ecase.model.request.tmpcasemanager.TmpCaseManager104Request;
import com.ezcore.foi.ecase.model.request.tmpcasemanager.TmpCaseManager105Request;
import com.ezcore.foi.ecase.model.request.tmpcasemanager.TmpCaseManager107Request;
import com.ezcore.foi.ecase.model.request.tmpcasemanager.TmpCaseManager121Request;
import com.ezcore.foi.ecase.model.request.tmpcasemanager.TmpCaseManager122Request;
import com.ezcore.foi.ecase.model.request.tmpcasemanager.TmpCaseManager123Request;
import com.ezcore.foi.ecase.model.response.tmpcasemanager.TmpCaseManager104Response;
import com.ezcore.foi.ecase.model.response.tmpcasemanager.TmpCaseManager104ResponseChild;
import com.ezcore.foi.ecase.service.TmpCaseManagerService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.zhengjie.annotation.Log;
import me.zhengjie.annotation.rest.AnonymousGetMapping;
import me.zhengjie.annotation.rest.AnonymousPostMapping;

@RequiredArgsConstructor
@Api(tags = "案件管理")
@RestController
@RequestMapping("/api/v1/caseManager")
public class TmpCaseManagerController extends BaseController {
	@Autowired
	private TmpCaseManagerService caseManagerService;

	@AnonymousPostMapping("/list/style2")
    @ApiOperation("查詢案件進度(外網)")
    @Log("查詢案件進度(外網)")
//    @PreAuthorize("@el.check('')")
    public ResponseEntity<Object> tmpCaseManager101(@RequestBody TmpCaseManager101Request req) {
        return commonResponse(caseManagerService.caseManager101(req), "CaseManager101");
    }
    
    @AnonymousPostMapping("/list/style3")
    @ApiOperation("爭議專案處理（外網）")
    @Log("爭議專案處理（外網）")
//    @PreAuthorize("@el.check('')")
    public ResponseEntity<Object> tmpCaseManager102(@RequestBody TmpCaseManager102Request req) {
        return commonResponse(caseManagerService.caseManager102(req), "CaseManager102");
    }
    
    @AnonymousPostMapping("/list/style4")
	@ApiOperation("評議案件指派查詢")
	@Log("評議案件指派查詢")
//	@PreAuthorize("@el.check('')")
	public ResponseEntity<Object> tmpCaseManager103(@RequestBody TmpCaseManager103Request req) {
		return commonResponse(caseManagerService.caseManager103(req), "CaseManager103");
	}

	@AnonymousPostMapping("/list/style5")
	@ApiOperation("案件結案查詢")
	@Log("案件結案查詢")
//	@PreAuthorize("@el.check('')")
	public ResponseEntity<Object> tmpCaseManager104(@RequestBody TmpCaseManager104Request req) {
		TmpCaseManager104Response res = caseManagerService.caseManager104(req);
	    
	    List<TmpCaseManager104ResponseChild> content = res.getContent();
	    BasePageResponse page = res.getPage();
	    
		return commonResponse(content, "CaseManager104", page);
	}

	@AnonymousPostMapping("/list/style6")
	@ApiOperation("爭議案件移交清單查詢")
	@Log("爭議案件移交清單查詢")
//	@PreAuthorize("@el.check('')")
	public ResponseEntity<Object> tmpCaseManager105(@RequestBody TmpCaseManager105Request req) {
		return commonResponse(caseManagerService.caseManager105(req), "CaseManager105");
	}
	
	@AnonymousPostMapping("/list/style7")
	@ApiOperation("評議委員預審資料(外網)")
	@Log("評議委員預審資料(外網)")
//	@PreAuthorize("@el.check('')")
	public ResponseEntity<Object> tmpCaseManager107(@RequestBody TmpCaseManager107Request req) {
		return commonResponse(caseManagerService.caseManager107(req), "CaseManager107");
	}
	
	@AnonymousPostMapping("/list/style8")
	@ApiOperation("案件移轉查詢")
	@Log("案件移轉查詢")
//	@PreAuthorize("@el.check('')")
	public ResponseEntity<Object> tmpCaseManager108(@RequestBody TmpCaseManager108Request req) {
		return commonResponse(caseManagerService.caseManager108(req), "CaseManager108");
	}
	
	@AnonymousPostMapping("/mediate/list")
	@ApiOperation("調處情形-查詢")
	@Log("調處情形-查詢")
//	@PreAuthorize("@el.check('')")
	public ResponseEntity<Object> tmpCaseManager121(@RequestBody TmpCaseManager121Request req) {
		return commonResponse(caseManagerService.caseManager121(req), "CaseManager121");
	}

	@AnonymousPostMapping("/mediate/check")
	@ApiOperation("調處情形-確認")
	@Log("調處情形-確認")
//	@PreAuthorize("@el.check('')")
	public ResponseEntity<Object> tmpCaseManager122(@RequestBody TmpCaseManager122Request req) {
		caseManagerService.caseManager122(req);
		return commonResponse("CaseManager122");
	}

	@AnonymousPostMapping("/data/temp")
	@ApiOperation("評字第號更新")
	@Log("評字第號更新")
//	@PreAuthorize("@el.check('')")
	public ResponseEntity<Object> tmpCaseManager123(@RequestBody TmpCaseManager123Request req) {
		caseManagerService.caseManager123(req);
		return commonResponse("CaseManager123");	
	}
	
	@AnonymousGetMapping("/data/examiner/{caseMasterTid}")
	@ApiOperation("預審資料判斷-查詢（外網）")
	@Log("預審資料判斷-查詢（外網）")
//	@PreAuthorize("@el.check('')")
	public ResponseEntity<Object> tmpCaseManager124(@PathVariable String caseMasterTid) {
		return commonResponse(caseManagerService.caseManager124(caseMasterTid), "CaseManager124");	
	}
	
	@AnonymousPostMapping("/data/examiner/temp")
	@ApiOperation("預審資料判斷-暫存（外網）")
	@Log("預審資料判斷-暫存（外網）")
//	@PreAuthorize("@el.check('')")
	public ResponseEntity<Object> tmpCaseManager125(@RequestBody Examiner req) {
		caseManagerService.caseManager125(req);
		return commonResponse("CaseManager125");	
	}
	
	@AnonymousPostMapping("/data/examiner/submit")
	@ApiOperation("預審資料判斷-確認送出（外網）")
	@Log("預審資料判斷-確認送出（外網））")
//	@PreAuthorize("@el.check('')")
	public ResponseEntity<Object> tmpCaseManager126(@RequestBody Examiner req) {
		caseManagerService.caseManager126(req);
		return commonResponse("CaseManager126");	
	}

}