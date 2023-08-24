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
import com.ezcore.foi.ecase.model.bo.casedatabo.CompanyResponse;
import com.ezcore.foi.ecase.model.bo.casedatabo.Consultant;
import com.ezcore.foi.ecase.model.bo.casedatabo.DisputeContent;
import com.ezcore.foi.ecase.model.bo.casedatabo.DisputeDecision;
import com.ezcore.foi.ecase.model.bo.casedatabo.Mediate;
import com.ezcore.foi.ecase.model.bo.casedatabo.MeetPlan;
import com.ezcore.foi.ecase.model.bo.casedatabo.Memo;
import com.ezcore.foi.ecase.model.bo.casedatabo.ReceiveAppl;
import com.ezcore.foi.ecase.model.bo.casedatabo.ReceiveOther;
import com.ezcore.foi.ecase.model.bo.casedatabo.ReferUser;
import com.ezcore.foi.ecase.model.bo.casedatabo.Suggestion;
import com.ezcore.foi.ecase.model.bo.casedatabo.User;
import com.ezcore.foi.ecase.model.request.casemaster.CaseManager05Request;
import com.ezcore.foi.ecase.model.request.casemaster.CaseManager51Request;
import com.ezcore.foi.ecase.model.request.casemaster.CaseManager53Request;
import com.ezcore.foi.ecase.model.request.casemaster.CaseManager54Request;
import com.ezcore.foi.ecase.model.request.casemaster.CaseMaster01Request;
import com.ezcore.foi.ecase.model.request.casemaster.CaseMaster29Request;
import com.ezcore.foi.ecase.service.CaseManagerService;

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
public class CaseManagerController extends BaseController {

	@Autowired
	private CaseManagerService caseManagerService;
	
    @PostMapping("/list/style1")
    @ApiOperation("取得案件清單-1")
    @PreAuthorize("@el.check('')")
    @Log("取得案件清單-1")
    public ResponseEntity<Object> CaseManager01(@RequestBody CaseMaster01Request req) {
        return commonResponse(caseManagerService.getCaseRecords(req), "CaseManager01");
    }

    @GetMapping("/data/{caseMasterTid}")
    @ApiOperation("取得案件單筆(整組)")
//    @PreAuthorize("@el.check('')")
    @Log("取得案件單筆(整組)")
    public ResponseEntity<Object> CaseManager02(@PathVariable String caseMasterTid) {
        return commonResponse(caseManagerService.getCaseRecord(caseMasterTid), "CaseManager02");
    }

    @PostMapping("/data/{caseMasterTid}")
    @ApiOperation("新增/異動案件單筆(整組)")
//    @PreAuthorize("@el.check('')")
    @Log("新增/異動案件單筆(整組)")
    public ResponseEntity<Object> CaseManager03(@PathVariable String caseMasterTid) {
    	caseManagerService.addOrModCaseRecord(caseMasterTid);
        return commonResponse("CaseManager03");
    }

    @GetMapping("/data/base/{caseMasterTid}")
    @ApiOperation("案件文號(資訊)區-查詢")
//    @PreAuthorize("@el.check('')")
    @Log("案件文號(資訊)區-查詢")
    public ResponseEntity<Object> CaseManager04(@PathVariable String caseMasterTid) {
        return commonResponse(caseManagerService.findBase(caseMasterTid), "CaseManager04");
    }

    @PostMapping("/data/base")
    @ApiOperation("案件文號(資訊)區-新增/異動")
//    @PreAuthorize("@el.check('')")
    @Log("案件文號(資訊)區-新增/異動")
    public ResponseEntity<Object> CaseManager05(@RequestBody CaseManager05Request req) {
        return commonResponse(caseManagerService.addOrModBase(req), "CaseManager05");
    }

    @GetMapping("/data/attribute/{caseMasterTid}")
    @ApiOperation("案件基本資料-查詢")
//    @PreAuthorize("@el.check('')")
    @Log("案件基本資料-查詢")
    public ResponseEntity<Object> CaseManager06(@PathVariable String caseMasterTid) {
        return commonResponse(caseManagerService.findAttribute(caseMasterTid), "CaseManager06");
    }

//    @PostMapping("/data/attribute")
//    @ApiOperation("案件基本資料-新增/異動")
////    @PreAuthorize("@el.check('')")
//    @Log("案件基本資料-新增/異動")
//    public ResponseEntity<Object> CaseManager07(@RequestBody Attribute req) {
//    	caseManagerService.addOrModAttribe(req);
//        return commonResponse("CaseManager07");
//    }

    @AnonymousGetMapping("/data/user/{caseMasterTid}")
    @ApiOperation("案件人名-查詢")
//    @PreAuthorize("@el.check('')")
    @Log("案件人名-查詢")
    public ResponseEntity<Object> CaseManager08(@PathVariable String caseMasterTid) {
        return commonResponse(caseManagerService.findUser(caseMasterTid), "CaseManager08");
    }

    @AnonymousPostMapping("/data/user/")
    @ApiOperation("案件人名-新增/異動/刪除")
//    @PreAuthorize("@el.check('')")
    @Log("案件人名-新增/異動/刪除")
    public ResponseEntity<Object> CaseManager09(@RequestBody User req) {
    	caseManagerService.addOrModUser(req);
        return commonResponse("CaseManager09");
    }

    @AnonymousGetMapping("/data/user/refer/{caseMasterTid}")
    @ApiOperation("契約關系人-查詢")
//    @PreAuthorize("@el.check('')")
    @Log("契約關系人-查詢")
    public ResponseEntity<Object> CaseManager12(@PathVariable String caseMasterTid) {
        return commonResponse(caseManagerService.findReferUsers(caseMasterTid), "CaseManager12");
    }

    @AnonymousPostMapping("/data/user/refer")
    @ApiOperation("契約關系人-新增/異動/刪除")
//    @PreAuthorize("@el.check('')")
    @Log("契約關系人-新增/異動/刪除")
    public ResponseEntity<Object> CaseManager13(@RequestBody List<ReferUser> req) {
    	caseManagerService.addOrModUserRefer(req);
        return commonResponse("CaseManager13");
    }

    @AnonymousGetMapping("/data/dispute/content/{caseMasterTid}")
    @ApiOperation("爭議內容-查詢")
//    @PreAuthorize("@el.check('')")
    @Log("爭議內容-查詢")
    public ResponseEntity<Object> CaseManager14(@PathVariable String caseMasterTid) {
        return commonResponse(caseManagerService.findDisputeContent(caseMasterTid), "CaseManager14");
    }

    @AnonymousPostMapping("/data/dispute/content")
    @ApiOperation("爭議內容-新增/異動")
//    @PreAuthorize("@el.check('')")
    @Log("爭議內容-新增/異動")
    public ResponseEntity<Object> CaseManager15(@RequestBody DisputeContent req) {
    	caseManagerService.addOrModDisputeContent(req);
        return commonResponse("CaseManager15");
    }

    @GetMapping("/data/consultant/{caseMasterTid}")
    @ApiOperation("諮詢顧問-查詢")
//    @PreAuthorize("@el.check('')")
    @Log("諮詢顧問-查詢")
    public ResponseEntity<Object> CaseManager16(@PathVariable String caseMasterTid) {
        return commonResponse(caseManagerService.findConsultant(caseMasterTid), "CaseManager16");
    }

    @PostMapping("/data/consultant")
    @ApiOperation("諮詢顧問-新增/異動")
//    @PreAuthorize("@el.check('')")
    @Log("諮詢顧問-新增/異動")
    public ResponseEntity<Object> CaseManager17(@RequestBody List<Consultant> req) {
    	caseManagerService.addOrModConsultant(req);
        return commonResponse("CaseManager17");
    }

    @GetMapping("/data/preExam/{caseMasterTid}")
    @ApiOperation("預審資訊-查詢")
//    @PreAuthorize("@el.check('')")
    @Log("預審資訊-查詢")
    public ResponseEntity<Object> CaseManager18(@PathVariable String caseMasterTid) {
        return commonResponse(caseManagerService.findPreExam(caseMasterTid), "CaseManager18");
    }

    @PostMapping("/data/preExam/suggestion")
    @ApiOperation("預審資料-新增/異動（只異動預審資料，未異動委員資料）")
//    @PreAuthorize("@el.check('')")
    @Log("預審資料-新增/異動（只異動預審資料，未異動委員資料）")
    public ResponseEntity<Object> CaseManager19(@RequestBody Suggestion req) {
    	caseManagerService.addOrModPreExam(req);
        return commonResponse("CaseManager19");
    }

    @GetMapping("/data/meet/{caseMasterTid}")
    @ApiOperation("提會-查詢")
//    @PreAuthorize("@el.check('')")
    @Log("提會-查詢")
    public ResponseEntity<Object> CaseManager20(@PathVariable String caseMasterTid) {
        return commonResponse(caseManagerService.findMeet(caseMasterTid), "CaseManager20");
    }

    @PostMapping("/data/meet")
    @ApiOperation("提會-新增/異動")
//    @PreAuthorize("@el.check('')")
    @Log("提會-新增/異動")
    public ResponseEntity<Object> CaseManager21(@RequestBody MeetPlan req) {
    	caseManagerService.addOrModMeet(req);
        return commonResponse("CaseManager21");
    }

    @GetMapping("/data/dispute/decision/{caseMasterTid}")
    @ApiOperation("評議決定-查詢")
//    @PreAuthorize("@el.check('')")
    @Log("評議決定-查詢")
    public ResponseEntity<Object> CaseManager22(@PathVariable String caseMasterTid) {
        return commonResponse(caseManagerService.findDisputeDecision(caseMasterTid), "CaseManager22");
    }

    @PostMapping("/data/dispute/decision")
    @ApiOperation("評議決定-新增/異動")
//    @PreAuthorize("@el.check('')")
    @Log("評議決定-新增/異動")
    public ResponseEntity<Object> CaseManager23(@RequestBody DisputeDecision req) {
    	caseManagerService.addOrModDisputeDecision(req);
        return commonResponse("CaseManager23");
    }

    @GetMapping("/data/mediate/{caseMasterTid}")
    @ApiOperation("調處程序-查詢")
//    @PreAuthorize("@el.check('')")
    @Log("調處程序-查詢")
    public ResponseEntity<Object> CaseManager24(@PathVariable String caseMasterTid) {
        return commonResponse(caseManagerService.findMediate(caseMasterTid), "CaseManager24");
    }

    @PostMapping("/data/mediate")
    @ApiOperation("調處程序-新增/異動")
//    @PreAuthorize("@el.check('')")
    @Log("調處程序-新增/異動")
    public ResponseEntity<Object> CaseManager25(@RequestBody Mediate req) {
    	caseManagerService.addOrModMediate(req);
        return commonResponse("CaseManager25");
    }

    @GetMapping("/data/annotation/{caseMasterTid}")
    @ApiOperation("案件摘要-查詢")
//    @PreAuthorize("@el.check('')")
    @Log("案件摘要-查詢")
    public ResponseEntity<Object> CaseManager26(@PathVariable String caseMasterTid) {
        return commonResponse(caseManagerService.findAnnotation(caseMasterTid), "CaseManager26");
    }

    @PostMapping("/data/annotation")
    @ApiOperation("案件摘要-新增/異動")
//    @PreAuthorize("@el.check('')")
    @Log("案件摘要-新增/異動")
    public ResponseEntity<Object> CaseManager27(@RequestBody Memo req) {
    	caseManagerService.addOrModAnnotation(req);
        return commonResponse("CaseManager27");
    }

    @GetMapping("/data/memo/{caseMasterTid}")
    @ApiOperation("案件備註-查詢")
//    @PreAuthorize("@el.check('')")
    @Log("案件備註-查詢")
    public ResponseEntity<Object> CaseManager28(@PathVariable String caseMasterTid) {
        return commonResponse(caseManagerService.findMemo(caseMasterTid), "CaseManager28");
    }

    @PostMapping("/data/memo")
    @ApiOperation("案件備註-新增/異動")
//    @PreAuthorize("@el.check('')")
    @Log("案件備註-新增/異動")
    public ResponseEntity<Object> CaseManager29(@RequestBody CaseMaster29Request req) {
    	caseManagerService.addOrModMemo(req);
        return commonResponse("CaseManager29");
    }

    @GetMapping("/data/refDocNoAppl/{caseMasterTid}")
    @ApiOperation("案關文號-查詢")
//    @PreAuthorize("@el.check('')")
    @Log("案關文號-查詢")
    public ResponseEntity<Object> CaseManager30(@PathVariable String caseMasterTid) {
        return commonResponse(caseManagerService.findReceiveAppl(caseMasterTid), "CaseManager30");
    }

    @PostMapping("/data/refDocNoAppl")
    @ApiOperation("案關文號-新增/異動")
//    @PreAuthorize("@el.check('')")
    @Log("案關文號-新增/異動")
    public ResponseEntity<Object> CaseManager31(@RequestBody List<ReceiveAppl> req) {
    	caseManagerService.addOrModReceiveAppl(req);
        return commonResponse("CaseManager31");
    }

    @GetMapping("/data/companyResponse/{caseMasterTid}")
    @ApiOperation("金融服務業回覆-查詢")
//    @PreAuthorize("@el.check('')")
    @Log("金融服務業回覆-查詢")
    public ResponseEntity<Object> CaseManager32(@PathVariable String caseMasterTid) {
        return commonResponse(caseManagerService.findCompanyResponse(caseMasterTid), "CaseManager32");
    }

    @PostMapping("/data/companyResponse")
    @ApiOperation("金融服務業回覆-新增/異動")
//    @PreAuthorize("@el.check('')")
    @Log("金融服務業回覆-新增/異動")
    public ResponseEntity<Object> CaseManager33(@RequestBody CompanyResponse req) {
    	caseManagerService.addOrModCompanyResponse(req);
        return commonResponse("CaseManager33");
    }

    @GetMapping("/data/refDocNoOther1/{caseMasterTid}")
    @ApiOperation("立委關切-查詢")
//    @PreAuthorize("@el.check('')")
    @Log("立委關切-查詢")
    public ResponseEntity<Object> CaseManager34(@PathVariable String caseMasterTid) {
        return commonResponse(caseManagerService.findReceiveOther1(caseMasterTid), "CaseManager34");
    }

    @PostMapping("/data/refDocNoOther1")
    @ApiOperation("立委關切-新增/異動")
//    @PreAuthorize("@el.check('')")
    @Log("立委關切-新增/異動")
    public ResponseEntity<Object> CaseManager35(@RequestBody List<ReceiveOther> req) {
    	caseManagerService.addOrModReceiveOther1(req);
        return commonResponse("CaseManager35");
    }

    @GetMapping("/data/refDocNoOther2/{caseMasterTid}")
    @ApiOperation("法院核可-查詢")
//    @PreAuthorize("@el.check('')")
    @Log("法院核可-查詢")
    public ResponseEntity<Object> CaseManager36(@PathVariable String caseMasterTid) {
        return commonResponse(caseManagerService.findReceiveOther2(caseMasterTid), "CaseManager36");
    }

    @PostMapping("/data/refDocNoOther2")
    @ApiOperation("法院核可-新增/異動")
//    @PreAuthorize("@el.check('')")
    @Log("法院核可-新增/異動")
    public ResponseEntity<Object> CaseManager37(@RequestBody ReceiveOther req) {
    	caseManagerService.addOrModReceiveOther2(req);
        return commonResponse("CaseManager37");
    }

    @PostMapping("/data/examinner/mail")
    @ApiOperation("預審委員郵件通知")
//    @PreAuthorize("@el.check('')")
    @Log("預審委員郵件通知")
    public ResponseEntity<Object> CaseManager51(@RequestBody CaseManager51Request req) {
        caseManagerService.examinerNotification(req);
        return commonResponse("CaseManager51");
    }

    @GetMapping("/data/examinner/print/{caseMasterTid}/{caseExaminnerTid}")
    @ApiOperation("預審委員預審通知書下載")
//    @PreAuthorize("@el.check('')")
    @Log("預審委員預審通知書下載")
    public ResponseEntity<Object> CaseManager52(@PathVariable String caseMasterTid, @PathVariable String caseExaminnerTid) {
        return commonResponse("CaseManager52");
    }

    @PostMapping("/data/examinner/clean")
    @ApiOperation("預審委員-解鎖")
//    @PreAuthorize("@el.check('')")
    @Log("預審委員-解鎖")
    public ResponseEntity<Object> CaseManager53(@RequestBody CaseManager53Request req) {
        caseManagerService.examinerUnlock(req);
        return commonResponse("CaseManager53");
    }

    @PostMapping("/data/mediate/contcat/copy")
    @ApiOperation("預審委員-解鎖")
//    @PreAuthorize("@el.check('')")
    @Log("預審委員-解鎖")
    public ResponseEntity<Object> CaseManager54(@RequestBody CaseManager54Request req) {
    	caseManagerService.copyMediateContactTo(req);
        return commonResponse("CaseManager54");
    }
    
    @AnonymousGetMapping("/data/band/{caseMasterTid}/{caseTypeCid}")
    @ApiOperation("取得案件重要資訊、案件區塊及欄位設定")
//    @PreAuthorize("@el.check('')")
    @Log("取得案件重要資訊、案件區塊及欄位設定")
    public ResponseEntity<Object> CaseManager91(@PathVariable String caseMasterTid, @PathVariable Long caseTypeCid) {
        return commonResponse(caseManagerService.getBandAndColumnInfo(caseMasterTid, caseTypeCid), "CaseManager91"); 
    }
    


}
