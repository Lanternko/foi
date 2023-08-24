package com.ezcore.foi.ecase.service;

import java.util.List;

import com.ezcore.foi.ecase.model.bo.casedatabo.Attribute;
import com.ezcore.foi.ecase.model.bo.casedatabo.Base;
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
import com.ezcore.foi.ecase.model.bo.casedatabo.Result;
import com.ezcore.foi.ecase.model.bo.casedatabo.Suggestion;
import com.ezcore.foi.ecase.model.bo.casedatabo.User;
import com.ezcore.foi.ecase.model.request.casemaster.CaseManager05Request;
import com.ezcore.foi.ecase.model.request.casemaster.CaseManager51Request;
import com.ezcore.foi.ecase.model.request.casemaster.CaseManager53Request;
import com.ezcore.foi.ecase.model.request.casemaster.CaseManager54Request;
import com.ezcore.foi.ecase.model.request.casemaster.CaseMaster01Request;
import com.ezcore.foi.ecase.model.request.casemaster.CaseMaster29Request;
import com.ezcore.foi.ecase.model.response.CaseManager91Response;
import com.ezcore.foi.ecase.model.response.casemaster.CaseMaster02Response;
import com.ezcore.foi.ecase.model.response.casemaster.CaseMaster18Response;
import com.ezcore.foi.ecase.model.response.casemaster.CaseMaster28Response;

public interface CaseManagerService {

    /**
     * 取得案件清單-1
     */
	List<Result> getCaseRecords(CaseMaster01Request req);

    /**
     * 取得案件單筆(整組)
     */
	CaseMaster02Response getCaseRecord(String caseMasterTid);

    /**
     * 新增/異動案件單筆(整組)
     */
	void addOrModCaseRecord(String caseMasterTid);

    /**
     * 案件文號(資訊)區-查詢
     */
	Base findBase(String caseMasterTid);

    /**
     * 案件文號(資訊)區-新增/異動
     */
	CaseManager05Request addOrModBase(CaseManager05Request req);

    /**
     * 案件基本資料-查詢 
     */
	Attribute findAttribute(String caseMasterTid);

//    /**
//     * 案件基本資料-新增/異動
//     */
//	void addOrModAttribe(Attribute req);

    /**
     * 案件人名-查詢
     * 狀態：完成
     * todo：統一編號、僑胞證
     */
	User findUser(String caseMasterTid);

    /**
     * 案件人名-新增/異動/刪除
     */
	void addOrModUser(User req);

    /**
     * 契約關系人-查詢
     */
	List<ReferUser> findReferUsers(String caseMasterTid);

    /**
     * 契約關系人-新增/異動/刪除
     */
	void addOrModUserRefer(List<ReferUser> req);

    /**
     * 爭議內容-查詢
     */
	DisputeContent findDisputeContent(String caseMasterTid);

    /**
     * 爭議內容-新增/異動
     */
    void addOrModDisputeContent(DisputeContent req);

    /**
     * 諮詢顧問-查詢
     */
    List<Consultant> findConsultant(String caseMasterTid);

    /**
     * 諮詢顧問-新增/異動
     */
    void addOrModConsultant(List<Consultant> req);

    /**
     * 預審資訊-查詢
     */
    CaseMaster18Response findPreExam(String caseMasterTid);

    /**
     * 預審資訊-新增/異動
     */
    CaseMaster18Response addOrModPreExam(Suggestion req);

    /**
     * 提會-查詢
     */
    MeetPlan findMeet(String caseMasterTid);

    /**
     * 提會-新增/異動
     */
    void addOrModMeet(MeetPlan req);

    /**
     * 評議決定-查詢
     */
    DisputeDecision findDisputeDecision(String caseMasterTid);

    /**
     * 評議決定-新增/異動
     */
    void addOrModDisputeDecision(DisputeDecision req);

    /**
     * 調處程序-查詢
     */
    Mediate findMediate(String caseMasterTid);

    /**
     * 調處程序-新增/異動
     */
    void addOrModMediate(Mediate req);

    /**
     * 案件摘要-查詢
     */
    Memo findAnnotation(String caseMasterTid);

    /**
     * 案件摘要-新增/異動
     */
    void addOrModAnnotation(Memo req);

    /**
     * 案件備註-查詢
     */
    CaseMaster28Response findMemo(String caseMasterTid);

    /**
     * 案件備註-新增/異動
     */
    void addOrModMemo(CaseMaster29Request req);

    /**
     * 案關文號-查詢
     */
    List<ReceiveAppl> findReceiveAppl(String caseMasterTid);

    /**
     * 案關文號-新增/異動
     */
    void addOrModReceiveAppl(List<ReceiveAppl> req);

    /**
     * 金融服務業回覆-查詢
     */
    CompanyResponse findCompanyResponse(String caseMasterTid);

    /**
     * 金融服務業回覆-新增/異動
     */
    void addOrModCompanyResponse(CompanyResponse req);

    /**
     * 立委關切-查詢
     */
    List<ReceiveOther> findReceiveOther1(String caseMasterTid);

    /**
     * 立委關切-新增/異動
     */
    void addOrModReceiveOther1(List<ReceiveOther> req);

    /**
     * 法院核可-查詢
     */
    List<ReceiveOther> findReceiveOther2(String caseMasterTid);

    /**
     * 法院核可-新增/異動
     */
    void addOrModReceiveOther2(ReceiveOther req);

    /**
     * 預審委員郵件通知
     */
    void examinerNotification(CaseManager51Request req);

    /**
     * 預審委員預審通知書下載
     */
    void examinerDownloadNotice();

    /**
     * 預審委員-解鎖
     */
    void examinerUnlock(CaseManager53Request req);
    
    /**
     * 調處紀錄-複製到
     */
    void copyMediateContactTo(CaseManager54Request req);
    
    /**
     * 取得案件區塊及欄位設定
     */
    public CaseManager91Response getBandAndColumnInfo(String caseMasterTid, Long caseTypeCid);


    
}