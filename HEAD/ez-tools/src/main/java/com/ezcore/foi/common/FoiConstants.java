package com.ezcore.foi.common;

public class FoiConstants {
//	Case Manager
	public static final String ADD= "add";
	public static final String READONLY = "readOnly";
	public static final String UPDATE_BY_OWNER = "updateByOwner";
	public static final String UPDATE_BY_MEMBER = "updateByMember";
	public static final String UPDATE_BY_MANAGER = "updateByManager";
	public static final String UPDATE_BY_COMPANY_OWNER = "updateByCompanyOwner";
	public static final String CASE_USER_KIND = "case_user_kind"; //kind
	public static final String APPLICANT = "applicant";
	public static final String AGENT = "agent";
	public static final String CONTRACTOR = "contractor";
	public static final String INSURED = "insured";
	public static final String BENEFICIARY = "beneficiary";
	public static final String GUARANTOR = "guarantor";

    public static final String IDNO_TYPE_A = "1";
    public static final String IDNO_TYPE_B = "2";
	public static final String IDNO_TYPE = "idno_type"; // kind
	public static final String REPARATION = "reparation"; // kind
	public static final Integer C_CRYPT_DATE_ADD = 768;


	/** 資料表操作: 更新 */
	public static final String UPDATE = "update";
	/** 資料表操作: 刪除 */
	public static final String DELETE = "delete";
//	資料表table名稱
	public static final String CASE_MASTER = "CASE_MASTER";
	public static final String CODEDETAIL = "codedetail";
	public static final String SESSION_MEMBER = "SESSION_MEMBER";
	public static final String SESSION_MEMBER_AVOID = "SESSION_MEMBER_AVOID";
	public static final String CASE_FLOW = "CASE_FLOW";
	public static final String CASE_USER = "CASE_USER";
	public static final String CASE_TREE = "CASE_TREE";
	public static final String CASE_EXAMINER = "CASE_EXAMINER";
	public static final String CASE_FILE = "CASE_FILE";
	public static final String CASE_MEET_PLAN = "CASE_MEET_PLAN";
	public static final String CASE_MEET_PLAN_REF_DOC = "CASE_MEET_PLAN_REF_DOC";
	public static final String CASE_CONSULTANT = "CASE_CONSULTANT";
	public static final String CASE_SUGGESTION = "CASE_SUGGESTION";
	public static final String CASE_SUGGESTION_BOOK = "CASE_SUGGESTION_BOOK";
	public static final String CASE_MEDIATE_CONTACT = "CASE_MEDIATE_CONTACT";
	public static final String CASE_RECEIVE_APPL = "CASE_RECEIVE_APPL";
	public static final String CASE_RECEIVE_OTHER = "CASE_RECEIVE_OTHER";

//	codedetail 
	public static final String CHILD_KIND_LIST_DTO = "ChildKindListDto";
	public static final String LATEST_CASE_FLOW_TID = "latestCaseFlowTid";
	public static final String ITEM_TYPE = "item_type";
	public static final String ITEM_KIND = "item_kind";
	
//	codedetail : band_code
	public static final String BAND_CODE = "band_code";
	public static final String COLUMN_ADJUST = "column_adjust";
	public static final String CASETYPEBAND = "caseType.Band";
	public static final String BASE = "base";
	public static final String ATTRIBUTE = "attribute";
	public static final String DISPUTE_CONTENT = "dispute.content";
	public static final String PREEXAM = "preExam";
	public static final String MEET = "meet";
	public static final String USERS = "users";
	public static final String USER_REFER = "user_refer";
	public static final String FLOW = "flow";
	public static final String ANNOTATION = "annotation";
	public static final String MEMO = "memo";
	public static final String RECEIVE_APPL = "receiveAppl";
	public static final String RECEIVE_OTHER1 = "receiveOther1";
	public static final String RECEIVE_OTHER2 = "receiveOther2";
//	public static final String CONSULTANT = "consultant";
	public static final String DISPUTE_DECISION = "dispute.decision";
	public static final String COMPANY_RESPONSE = "companyResponse";
	public static final String CLOSE_SUMMARY = "closeSummary";
	public static final String DISCRIPTION = "discription";	
//	codedetail : session
	/** 屆次 (kind) */
	public static final String SESSION = "session";

//	codedetail : industry
	/** 產業別 (kind) */
	public static final String INDUSTRY = "industry";

//	codedetail : industry.A
	/** 銀行業.公司別 (kind) */
	public static final String INDUSTRY_A = "industry.A";	
//	codedetail : industry.B
	/** 保險業.公司別 (kind) */
	public static final String INDUSTRY_B = "industry.B";

//	codedetail : industry.C
	/** 證券期貨業公司別 (kind) */
	public static final String INDUSTRY_C = "industry.C";
	
//	codedetail : flow_code
	/** 流程代碼 (kind) */
	public static final String FLOW_CODE = "flow_code";

//	codedetail : case_type
	/** 流程代碼 (kind) */
	public static final String CASE_TYPE = "case_type";

//	codedetail : case_file_type
	/** 檔案類型 (kind) */
	public static final String CASE_FILE_TYPE = "case_file_type";
	/** 諮詢顧問上傳文件 (code) */
	public static final String CONSULTANT = "consultant";
	/** 承辦人預審附件 (code) */
	public static final String SUGGESTION = "suggestion";
	/** 預審委員上傳文件 (code) */
	public static final String EXAMINNER = "examinner";
	/** 提會草本(公文稿) (code) */
	public static final String MEET_DRAFT = "meetDraft";
	/** 評議決定書 (code) */
	public static final String DECIDE = "decide";
	/** 調處人員上傳 (code) */
	public static final String MEDIATE = "mediate";
	/** 收文文件 (code) */
	public static final String RECEIVE = "receive";
	/** 收文資料.承辦人上傳(不公開) (code) */
	public static final String RECEIVE_PRIVATE = "receive.private";
	
//	codedetail : case_class
	/** 專案類別(進件類別) (kind) */
	public static final String CASE_CLASS = "case_class";
	
//	codedetail : in_method
	/** 進件方式 (kind) */
	public static final String IN_METHOD = "in_method";

//	codedetail : tel_type
	/**  (kind) */
	public static final String TEL_TYPE = "tel_type";
	
//	codedetail : flow_State
	/** 流程代碼 (kind) */
	public static final String FLOW_STATE = "flow_state";

//	codedetail : workGroup
	/** 工作群組 (kind) */
	public static final String WORKGROUP = "workGroup";
	
//	codedetail : memo_type
	/** 備註類型 (kind) */
	public static final String MEMO_TYPE = "memo_type";
	/** 退回描述 (code) */
	public static final String EFLOW = "eflow.";

//	codedetail : owner_type
	/** 承辦人類型 (kind) */
	public static final String OWNER_TYPE = "owner_type";
	/** 業者承辦人 (code) */
	public static final String COMPANY = "COMPANY";

//	codedetail : communication_class
	/** 來文樣態 (kind) */
	public static final String COMMUNICATION_CLASS = "communication_class";

//	codedetail : identify_type
	/** 身份類型 (kind) */
	public static final String IDENTIFY_TYPE = "identify_type";
	
//	codedetail : issue_sign_kind
	/** 簽核類型 (kind) */
	public static final String ISSUE_SIGN_KIND = "issue_sign_kind";
	
//	codedetail : company_state
	/** 爭議對象.狀態 (kind) */
	public static final String COMPANY_STATE = "company_state";
	/** 啟用 (code) */
	public static final String ENABLED = "enabled";
	
//	codedetail : role.bank
	/** 金融業者群組 (kind) */
	public static final String ROLE_BANK = "role.bank";
	/** 管理者群組 (code) */
	public static final String ADMIN_GROUP = "adminGroup";
	/** 使用者群組 (code) */
	public static final String USER_GROUP = "userGroup";
	
//	codedetail : sys.pgcode
	/** 異常代號定義 (kind) */
	public static final String SYS_PGCODE = "sys.pgcode";
	
//	codedetail : contract_type
	/** 契約數.欄位類型 (kind) */
	public static final String CONTRACT_TYPE = "contract_type";
	
//	codedetail : contract_type.company_code
	/** 契約數.保發公司別代碼 (kind) */
	public static final String CONTRACT_TYPE_COMPANY_CODE = "contract_type.保發公司別代碼";
	
//	codedetail : ref_other
	/** 案關文件來文者類型 (kind) */
	public static final String REF_OTHER = "ref_other";

//	codedetail : exam_status
	/** 預審狀態 (kind) */
	public static final String EXAM_STATUS = "exam_status";

//	codedetail : WEB090301
	/** 爭議對象設定 (kind) */
	public static final String WEB090301 = "WEB090301";
	/** 預設密碼 (code) */
	public static final String DEFAULTPWD = "defaultPWD";
	/** 公司流水碼 (code) */
	public static final String COMPANY_CODE_SEQ = "company_code.seq";
	
//	codedetail : WEB090101
	/** 案件維護參數 (kind) */
	public static final String WEB090101 = "WEB090101";

//	codedetail : WS
	/** 評議流程代號 (kind) */
	public static final String WS = "ws";
	
// 	exception
	public static final String DECRYPT_FAILED_MESSAGE = "解密失敗";
    public static final String ENCRYPT_FAILED_MESSAGE = "加密失敗";
	public static final String CAN_NOT_FOUND = "找不到%s";
	public static final String CAN_NOT_FOUND_ID = "找不到ID為'%s'的%s";
	public static final String ILLEGAL_ARGUMENT = "找不到與代碼： %s 相匹配的 %s 物件。";
    public static final String CASE_CANNOT_BE_MOD = "案件: %s, 區塊: %s 資料無權異動";
	public static final String ID_NO_EXCEPTION = "證號檢查異常，請再確認並更正。";
	public static final String TAXID_NO_EXCEPTION = "統一編號檢查異常，請再確認並更正。";
	public static final String WRONG_LENGTH_FOR_IDNO = "證號長度錯誤";
	public static final String NO_HASHTAG = "電話不可輸入#字符號";
	
//	sonarqube提示修改
	public static final String CODE_NOT_FOUND = "查無代碼檔(cid=%s)";
	public static final String CASE_MASTER_NOT_FOUND = "查無案件主檔(case_master_id=%s)";
	public static final String CASE_EFLOW_NOT_FOUND = "查無流程檔(case_eflow_id=%s)";
	public static final String CASE_FLOW_NOT_FOUND = "查無案件流程檔(case_flow_id=%s)";
	
//	各種pattern
	public static final String YYYYMMDD = "yyyyMMdd";
	public static final String YYYMMDD = "yyyMMdd";
	public static final String YYY = "yyy";
	
// 	常用字 #common #often used word
	public static final String NEW = "new";
	public static final String HASHTAG = "#";
	public static final String ONE_STRING = "1";
	public static final String PRIVATE = "private";
	public static final String PUBLIC = "public";
	
	

	/** 0000 */
	public static final String EFLOW_INIT_STATE = "0000";
	/** 9999 */
	public static final String EFLOW_END_STATE = "9999";
	/** 1000 */
	public static final String PCODE_1000 = "1000";
	/** 2000 */
	public static final String PCODE_2000 = "2000";
	/** null字串 */
	public static final String NULL = "null";
	/** Y */
	public static final String Y = "Y";
	/** N */
	public static final String N = "N";
	/** 進件類別: 諮詢 */
	public static final String A = "A";
	/** 進件類別: 申訴 */
	public static final String B = "B";
	/** 進件類別: 評議 */
	public static final String C = "C";
	/** 公文收件 */
	public static final String C01001 = "C01001";	
	/** 電話收件 */
	public static final String C01002 = "C01002";	
	/** 臨櫃收件 */
	public static final String C01003 = "C01003";
	/** 臨櫃登錄 */
	public static final String NEW001 = "NEW001";
	/** 巡查 */
	public static final String NEW002 = "NEW002";
	/** 樹名稱: 案件標籤 */
	public static final String TAG_TREE = "tagTree";

	private FoiConstants() {
	}
}
