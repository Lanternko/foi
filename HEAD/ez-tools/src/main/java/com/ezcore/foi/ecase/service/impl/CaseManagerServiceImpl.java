package com.ezcore.foi.ecase.service.impl;

import java.security.NoSuchAlgorithmException;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Period;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Optional;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ezcore.common.utils.ModifyLogWriter;
import com.ezcore.common.utils.TypeUtils;
import com.ezcore.common.utils.VerifyInputs;
import com.ezcore.foi.common.FoiConstants;
import com.ezcore.foi.ecase.dao.CaseCompanyReplyRepository;
import com.ezcore.foi.ecase.dao.CaseConsultantRepository;
import com.ezcore.foi.ecase.dao.CaseDecideRepository;
import com.ezcore.foi.ecase.dao.CaseDeskExtRepository;
import com.ezcore.foi.ecase.dao.CaseDocExtRepository;
import com.ezcore.foi.ecase.dao.CaseDynamicColumnRepository;
import com.ezcore.foi.ecase.dao.CaseExaminerRepository;
import com.ezcore.foi.ecase.dao.CaseFileRepository;
import com.ezcore.foi.ecase.dao.CaseFlowRepository;
import com.ezcore.foi.ecase.dao.CaseManagerRepository;
import com.ezcore.foi.ecase.dao.CaseMasterRepository;
import com.ezcore.foi.ecase.dao.CaseMediateContactRepository;
import com.ezcore.foi.ecase.dao.CaseMediateRepository;
import com.ezcore.foi.ecase.dao.CaseMeetPlanRefDocRepository;
import com.ezcore.foi.ecase.dao.CaseMeetPlanRepository;
import com.ezcore.foi.ecase.dao.CaseMemoRepository;
import com.ezcore.foi.ecase.dao.CaseProductItemRepository;
import com.ezcore.foi.ecase.dao.CaseReceiveApplRepository;
import com.ezcore.foi.ecase.dao.CaseReceiveOtherRepository;
import com.ezcore.foi.ecase.dao.CaseSuggestionBookRepository;
import com.ezcore.foi.ecase.dao.CaseSuggestionRepository;
import com.ezcore.foi.ecase.dao.CaseTelExtRepository;
import com.ezcore.foi.ecase.dao.CaseTreeRepository;
import com.ezcore.foi.ecase.dao.CaseTreeSearchRepository;
import com.ezcore.foi.ecase.dao.CaseUserAgentRepository;
import com.ezcore.foi.ecase.dao.CaseUserRepository;
import com.ezcore.foi.ecase.dao.CodedetailRepository;
import com.ezcore.foi.ecase.dao.MeetingDecideRepository;
import com.ezcore.foi.ecase.dao.MeetingRepository;
import com.ezcore.foi.ecase.dao.dto.ChildKindListDto;
import com.ezcore.foi.ecase.dao.entity.CaseCompanyReply;
import com.ezcore.foi.ecase.dao.entity.CaseConsultant;
import com.ezcore.foi.ecase.dao.entity.CaseDecide;
import com.ezcore.foi.ecase.dao.entity.CaseDeskExt;
import com.ezcore.foi.ecase.dao.entity.CaseDocExt;
import com.ezcore.foi.ecase.dao.entity.CaseDynamicColumn;
import com.ezcore.foi.ecase.dao.entity.CaseExaminer;
import com.ezcore.foi.ecase.dao.entity.CaseFile;
import com.ezcore.foi.ecase.dao.entity.CaseFlow;
import com.ezcore.foi.ecase.dao.entity.CaseMaster;
import com.ezcore.foi.ecase.dao.entity.CaseMediate;
import com.ezcore.foi.ecase.dao.entity.CaseMediateContact;
import com.ezcore.foi.ecase.dao.entity.CaseMeetPlan;
import com.ezcore.foi.ecase.dao.entity.CaseMeetPlanRefDoc;
import com.ezcore.foi.ecase.dao.entity.CaseMemo;
import com.ezcore.foi.ecase.dao.entity.CaseProductItem;
import com.ezcore.foi.ecase.dao.entity.CaseReceiveAppl;
import com.ezcore.foi.ecase.dao.entity.CaseReceiveOther;
import com.ezcore.foi.ecase.dao.entity.CaseSuggestion;
import com.ezcore.foi.ecase.dao.entity.CaseSuggestionBook;
import com.ezcore.foi.ecase.dao.entity.CaseTelExt;
import com.ezcore.foi.ecase.dao.entity.CaseTree;
import com.ezcore.foi.ecase.dao.entity.CaseTreeSearch;
import com.ezcore.foi.ecase.dao.entity.CaseUser;
import com.ezcore.foi.ecase.dao.entity.CaseUserAgent;
import com.ezcore.foi.ecase.dao.entity.Codedetail;
import com.ezcore.foi.ecase.dao.entity.Meeting;
import com.ezcore.foi.ecase.dao.entity.compositeid.CaseTreeSearchId;
import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
import com.ezcore.foi.ecase.model.bo.casedatabo.AgentUser;
import com.ezcore.foi.ecase.model.bo.casedatabo.ApplicantUser;
import com.ezcore.foi.ecase.model.bo.casedatabo.Attribute;
import com.ezcore.foi.ecase.model.bo.casedatabo.Band;
import com.ezcore.foi.ecase.model.bo.casedatabo.Base;
import com.ezcore.foi.ecase.model.bo.casedatabo.CaseUserType;
import com.ezcore.foi.ecase.model.bo.casedatabo.CompanyResponse;
import com.ezcore.foi.ecase.model.bo.casedatabo.Consultant;
import com.ezcore.foi.ecase.model.bo.casedatabo.DeskExt;
import com.ezcore.foi.ecase.model.bo.casedatabo.DisputeContent;
import com.ezcore.foi.ecase.model.bo.casedatabo.DisputeDecision;
import com.ezcore.foi.ecase.model.bo.casedatabo.DocExt;
import com.ezcore.foi.ecase.model.bo.casedatabo.DynamicColumn;
import com.ezcore.foi.ecase.model.bo.casedatabo.DynamicData;
import com.ezcore.foi.ecase.model.bo.casedatabo.Examiner;
import com.ezcore.foi.ecase.model.bo.casedatabo.Info;
import com.ezcore.foi.ecase.model.bo.casedatabo.Mediate;
import com.ezcore.foi.ecase.model.bo.casedatabo.MediateContact;
import com.ezcore.foi.ecase.model.bo.casedatabo.MeetPlan;
import com.ezcore.foi.ecase.model.bo.casedatabo.MeetPlanRefDoc;
import com.ezcore.foi.ecase.model.bo.casedatabo.Memo;
import com.ezcore.foi.ecase.model.bo.casedatabo.ProductItem;
import com.ezcore.foi.ecase.model.bo.casedatabo.ReceiveAppl;
import com.ezcore.foi.ecase.model.bo.casedatabo.ReceiveOther;
import com.ezcore.foi.ecase.model.bo.casedatabo.ReferUser;
import com.ezcore.foi.ecase.model.bo.casedatabo.Result;
import com.ezcore.foi.ecase.model.bo.casedatabo.Suggestion;
import com.ezcore.foi.ecase.model.bo.casedatabo.SuggestionBook;
import com.ezcore.foi.ecase.model.bo.casedatabo.TelExt;
import com.ezcore.foi.ecase.model.bo.casedatabo.TreeSelected;
import com.ezcore.foi.ecase.model.bo.casedatabo.TreeSelectedDetail;
import com.ezcore.foi.ecase.model.bo.casedatabo.User;
import com.ezcore.foi.ecase.model.bo.casefilebo.CaseFileBoData;
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
import com.ezcore.foi.ecase.service.CaseManagerService;
import com.ezcore.foi.ecase.service.CaseUtilsService;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.common.CodeDetailMap;
import com.ezcore.tools.common.SequenceString;

import lombok.extern.slf4j.Slf4j;
import me.zhengjie.exception.BadRequestException;
import me.zhengjie.modules.system.repository.DeptRepository;
import me.zhengjie.modules.system.service.impl.DeptServiceImpl;
import me.zhengjie.modules.system.service.impl.SubstituteServiceImpl;
import me.zhengjie.service.impl.Notification;
import me.zhengjie.utils.AES256Encryption;
import me.zhengjie.utils.DateUtil;
import me.zhengjie.utils.SecurityUtils;
import me.zhengjie.utils.StringUtils;

@Slf4j
@Service
public class CaseManagerServiceImpl implements CaseManagerService {
	
	@Autowired
	private CaseManagerRepository caseManagerRepository;
	@Autowired
    private CodedetailRepository codedetailRepository;
	@Autowired
	private CaseUtilsService caseUtilsService;
	@Autowired
	private CaseMasterRepository caseMasterRepository;
	@Autowired
	private CaseDocExtRepository caseDocExtRepository;
	@Autowired
	private CaseTelExtRepository caseTelExtRepository;
	@Autowired
	private CaseDeskExtRepository caseDeskExtRepository;
    @Autowired
    private CaseFlowRepository caseFlowRepository;
    @Autowired
    private CaseTreeRepository caseTreeRepository;
    @Autowired
    private CaseTreeSearchRepository caseTreeSearchRepository;
    @Autowired
    private DeptRepository deptRepository;
    @Autowired
    private CaseDynamicColumnRepository caseDynamicColumnRepository;
	@Autowired
    private CaseUserRepository caseUserRepository;
    @Autowired
    private CaseUserAgentRepository caseUserAgentRepository;
    @Autowired
    private CaseProductItemRepository caseProductItemRepository;
    @Autowired
    private CaseSuggestionRepository caseSuggestionRepository;
    @Autowired
    private CaseSuggestionBookRepository caseSuggestionBookRepository;
    @Autowired
    private CaseFileRepository caseFileRepository;
    @Autowired
    private CaseExaminerRepository caseExaminerRepository;
    @Autowired
    private CaseConsultantRepository caseConsultantRepository;
    @Autowired
    private CaseMeetPlanRepository caseMeetPlanRepository;
    @Autowired
    private CaseDecideRepository caseDecideRepository;
    @Autowired
    private CaseMeetPlanRefDocRepository caseMeetPlanRefDocRepository;
    @Autowired
	private CaseMemoRepository caseMemoRepository;
	@Autowired
	private MeetingRepository meetingRepository;
	@Autowired
    private MeetingDecideRepository meetingDecideRepository;
    @Autowired
    private CaseMediateRepository caseMediateRepository;
    @Autowired
    private CaseMediateContactRepository caseMediateContactRepository;
    @Autowired
    private CaseReceiveApplRepository caseReceiveApplRepository;
    @Autowired
    private CaseCompanyReplyRepository caseCompanyReplyRepository;
    @Autowired
    private CaseReceiveOtherRepository caseReceiveOtherRepository;
    @Autowired
    private SequenceString sequenceStr;

    @Autowired
    private ModifyLogWriter modifyLog;
	@Autowired
	private Notification notification;
    @Autowired
    private DeptServiceImpl deptServiceImpl;
    @Autowired
	private SubstituteServiceImpl substituteServiceImpl;
    @Autowired
    private CommServiceImpl commServiceImpl;
    @Autowired
    private CaseFlowServiceImpl caseFlowServiceImpl;
    @Autowired 
    private CaseFileServiceImpl caseFileServiceImpl;
    @Autowired
    private TmpCaseManagerServiceImpl tmpCaseManagerServiceImpl;
    @PersistenceContext
    private EntityManager entityManager;
    
    private final AES256Encryption aesEncryption;

    public CaseManagerServiceImpl() {
        try {
            this.aesEncryption = new AES256Encryption();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(FoiConstants.ENCRYPT_FAILED_MESSAGE, e);
        }
    }
    
	@Override
	public List<Result> getCaseRecords(CaseMaster01Request req) {		
		List<Result> rtn = caseMasterRepository.findCaseRecords(// 查詢條件 :
								req.getCaseTypeCid(),			// 收件方式(公文/電話/臨櫃)
								req.getInMethodCid(),			// 進件方式
								req.getCaseClassCid(), 			// 案件類型(諮詢/申訴/評議/申訴後續行評議)
								req.getIndustryCid(), 			// 產業別
								req.getDisputeKindCid(), 		// 移交點
								req.getCaseNo(), 				// 案號
								req.getCenterOwnerAccount(), 	// 承辦人
								req.getCaseDate(), 				// 申請日期
								req.getApplicantName(), 		// 申請人
								req.getApplicantIdNo(),			// 申請人證號 
								req.getContinueStatusCid(), 	// 續辦否
								req.getIsClose(), 				// 結案否
								req.getAppealCaseNo(),			// 原申訴案號
								req.getLatestCaseFlowTid(), 	// 案件進度
								req.getReceiveName(),  			// 來文者
								req.getDocYear(),				// 評字第案號
								req.getDocWord(),				// 評字第案號 
								req.getDocNo(),  				// 評字第案號
								null, 			// 有無理賠(畫面上沒有)
				  				req.getPhoneNo(), 				// 電話1
				  				null); 			// 電話2(畫面上沒有)
		
		for (Result result : rtn) {
			TreeSelected tag = result.getDisputeKind();
			CaseTree caseTree = caseTreeRepository.findByCaseMasterTidAndNodeCid(result.getCaseMasterTid(), tag.getSelectedCid());
			tag.setCaseTreeTid(caseTree.getId());

			List<TreeSelectedDetail> nodeCids = new ArrayList<>();
			caseTreeSearchRepository.findAllByCaseTreeTidOrderByLevelAsc(caseTree.getId()).forEach(e -> nodeCids.add(new TreeSelectedDetail(e)));
	    	tag.setNodeCids(nodeCids);
	    	tag.setSelectedName(concatTagNamesByTreeSelectedDetailsLevelAsc(nodeCids));	

			result.setFlowCode10034Date(caseMasterRepository.findEarlist10034FlowTime(result.getCaseMasterTid()));
		}

		return rtn;
	}

	@Override
	@Transactional(readOnly = true)
	public CaseMaster02Response getCaseRecord(String caseMasterTid) {
	    VerifyInputs.checkCaseMaster(caseMasterRepository.findById(caseMasterTid).orElse(null));
	    
	    return CaseMaster02Response.builder()
	            .base(findBase(caseMasterTid))                        				// 取得基礎資料
	            .attribute(findAttribute(caseMasterTid))              				// 取得屬性資料
	            .user(findUser(caseMasterTid))                        				// 取得使用者資料
	            .referUsers(findReferUsers(caseMasterTid))            				// 取得契約關係人資料
	            .disputeContent(findDisputeContent(caseMasterTid))    				// 取得爭議內容資料
	            .flows(caseFlowServiceImpl.getCaseFlow(caseMasterTid))              // 取得案件進度資料
	            .mediate(findMediate(caseMasterTid))                  				// 取得調處程序資料
	            .consultant(findConsultant(caseMasterTid))            				// 取得諮詢顧問資料
	            .suggestionExam(findPreExam(caseMasterTid).getSuggestionInfo())    	// 取得預審資訊
	            .examiners(findPreExam(caseMasterTid).getExaminers())              	// 取得預審委員
	            .meet(findMeet(caseMasterTid))                    	  				// 取得提會資料
	            .disputeDecision(findDisputeDecision(caseMasterTid))  				// 取得評議決定資料
	            .companyResponse(findCompanyResponse(caseMasterTid))  				// 取得金融服務業回覆資料
	            .annotation(findAnnotation(caseMasterTid))         	  				// 取得案情摘要
	            .memo(findMemo(caseMasterTid))                        				// 取得案件備註
	            .receiveAppl(findReceiveAppl(caseMasterTid))          				// 取得案關文號
	            .receiveOther1(findReceiveOther1(caseMasterTid))      				// 取得立委關切
	            .receiveOther2(findReceiveOther2(caseMasterTid))      				// 取得法院核可
	            .build();
	}


	@Override
	public void addOrModCaseRecord(String caseMasterTid) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Base findBase(String caseMasterTid) {
//		1.查案件主檔(case_master)
//		2.查收件方式(kind=case_type)
//		3.若收件方式為公文收件，繼續查(case_doc_ext)
//		4.取得動態欄位資料
		
		CaseMaster master = VerifyInputs.checkCaseMaster(caseMasterRepository.findById(caseMasterTid).orElse(null));
		CodeDetailDto caseTypeCode = VerifyInputs.checkCode(FoiConstants.CASE_TYPE, CodeDetailMap.get(master.getCaseTypeCid()));

		CaseDocExt docExt = null;
		if (FoiConstants.C01001.equals(caseTypeCode.getCode())) {
//			3
			docExt = caseDocExtRepository.findByCaseMasterTid(caseMasterTid);
		}
		
		Base rtn = new Base();
		rtn.setCaseMasterTid(caseMasterTid);
		rtn.setCaseType(new ShowCodeBo(caseTypeCode));
		rtn.setCaseNo(master.getCaseNo());
		rtn.setCaseDate(master.getCaseDate());
		rtn.setCreateBy(master.getCreateBy());
		rtn.setSubject(docExt == null ? null : docExt.getSubject());
		rtn.setReceiveName(docExt == null ? null : docExt.getReceiveName());
		
//		4
		rtn.setDynamicDatas(getDynamicData(caseMasterTid, 2316L));	//the cid of base
		
		return rtn;
	}

	@Override
	public CaseManager05Request addOrModBase(CaseManager05Request req) {
//		1.案件標籤(case_tree)、搜尋樹(case_tree#)處理(此操作不依存案件主檔id，因此優先處理)
//		2.嘗試取得案件(未取得時為新增，取得時為更新)
//		3.案件主檔(case_master)處理
//		  3.1.新增:
//		    3.1.1.案號檢核/產生(詳見方法: createCaseNoByRules 說明)
//		  3.2.更新:
//	        3.2.1.檢查畫面區塊是否可異動
//		4.案件擴充檔(case_doc_ext、case_tel_ext、case_desk_ext)處理
//		  4.1.依案件種類區分新增/更新對象
//		5.動態欄位(case_dynamic_column)處理
//		  5.1.案件文號(Base)欄位處理
//		  5.2.案件資訊(Attribute)欄位處理
		
//		1
		createOrModCaseTree(req.getTags(), req.getCaseMasterTid());
		if (FoiConstants.DELETE.equals(req.getCaseMasterTid())) {
			req.setTags(null);
			return req;
		}

//		2
		CaseMaster master = caseMasterRepository.findById(req.getCaseMasterTid()).orElse(null);
		if (master == null) {
			master = new CaseMaster();
			master.setId(req.getCaseMasterTid());
			
//			2.1.1
			String caseNoStr = createCaseNoByRules(req);
			master.setCaseNo(caseNoStr);
			req.setCaseNo(caseNoStr);

			master.setCaseDate(req.getCaseDate());
			master.setCaseTypeCid(req.getCaseType().getCid());
			master.setInMethodCid(req.getInMethod().getCid());
			master.setCaseClassCid(req.getCaseClass().getCid());
			master.setContactNo(req.getContactNo());
			master.setSpecialCid(req.getSpecial().getCid());
			master.setIsAppeal(false);
			master.setCenterOwnerAccount(substituteServiceImpl.getCurrentOpUser());
			master.setIsFree(false);
		} else {
//			2.2.1
			checkCaseCanBeModify(FoiConstants.BASE, master);
			checkCaseCanBeModify(FoiConstants.ATTRIBUTE, master);

			master.setCaseDate(req.getCaseDate());
		}
		
		master = caseMasterRepository.saveAndFlush(master);
		
//		3.1
		switch (req.getCaseType().getCode()) {
		case FoiConstants.C01001: // 公文件
			req.setDocExtInfo(new DocExt(createOrModCaseDocExt(master, req)));
			break;
		case FoiConstants.C01002: // 電話件
			req.setTelExtInfo(new TelExt(createOrModCaseTelExt(master, req)));
			break;
		case FoiConstants.C01003: // 臨櫃件
			req.setDeskExtInfo(new DeskExt(createOrModCaseDeskExt(master, req)));
			break;
		default:
			break;
		}

//		6.1
		updateDynamicData(req.getCaseType(), master.getId(), FoiConstants.BASE, req.getBaseDatas());
//		6.2
		updateDynamicData(req.getCaseType(), master.getId(), FoiConstants.ATTRIBUTE, req.getAttributeDatas());

		return req;
	}
	
	/*
	 * 06 案件基本資料-查詢
	 */
	@Override
	public Attribute findAttribute(String caseMasterTid) {
//		1.查案件主檔(case_master)
//		2.查收件方式(kind=case_type)，取得對應收件方式的ext物件
//		3.以case_tree查詢的資訊為樹結構末端，配合case_tree#查詢結果進行案件標籤(tags)組合
//		4.取得動態欄位資料
				
		CaseMaster master = VerifyInputs.checkCaseMaster(caseMasterRepository.findById(caseMasterTid).orElse(null));
		
		Attribute rtn = new Attribute();
		rtn.setCaseMasterTid(caseMasterTid);
		rtn.setCaseType(new ShowCodeBo(CodeDetailMap.get(master.getCaseTypeCid())));
		rtn.setInMethod(new ShowCodeBo(CodeDetailMap.get(master.getInMethodCid())));
		rtn.setCaseClass(new ShowCodeBo(CodeDetailMap.get(master.getCaseClassCid())));
		rtn.setSpecial(new ShowCodeBo(CodeDetailMap.get(master.getSpecialCid())));
		rtn.setContactNo(master.getContactNo());
		rtn.setAppealCaseNo(master.getAppealCaseNo());
		rtn.setContinueStatus(new ShowCodeBo(CodeDetailMap.get(master.getContinueStatusCid())));
		rtn.setPreCaseNo(master.getPreCaseNo());
		
//		2
		CodeDetailDto caseTypeCode = VerifyInputs.checkCode(FoiConstants.CASE_TYPE, CodeDetailMap.get(master.getCaseTypeCid()));
		switch (caseTypeCode.getCode()) {
		case FoiConstants.C01001: // 公文件
			rtn.setDocExtInfo(new DocExt(caseDocExtRepository.findByCaseMasterTid(caseMasterTid)));
			break;
		case FoiConstants.C01002: // 電話件
			rtn.setTelExtInfo(new TelExt(caseTelExtRepository.findByCaseMasterTid(caseMasterTid)));
			break;
		case FoiConstants.C01003: // 臨櫃件
			rtn.setDeskExtInfo(new DeskExt(caseDeskExtRepository.findByCaseMasterTid(caseMasterTid)));
			break;
		default:
			break;
		}
				
//		3
		List<TreeSelected> tags = new ArrayList<>();
		List<CaseTree> trees = caseTreeRepository.findAllByCaseMasterTid(caseMasterTid);
	    for (CaseTree tree : trees) {
	    	TreeSelected tag = new TreeSelected();
	    	tag.setCaseTreeTid(tree.getId());
	    	tag.setSelectedCid(tree.getNodeCid());
	    	
	    	List<TreeSelectedDetail> nodeCids = new ArrayList<>();
	    	for (CaseTreeSearch entity : caseTreeSearchRepository.findAllByCaseTreeTidOrderByLevelAsc(tree.getId())) {	// 依level小至大查出樹節點資訊
	    		nodeCids.add(new TreeSelectedDetail(entity));
	    	}
	    	tag.setNodeCids(nodeCids);
	    	tag.setSelectedName(concatTagNamesByTreeSelectedDetailsLevelAsc(nodeCids));									// 用樹節點代碼資訊組合完整標籤名稱
//	    	tag.setSelectedCode(CodeDetailMap.get(tree.getNodeCid()).getCode());
	    	
	    	tags.add(tag);
	    }
		rtn.setTags(tags);

//		4
		rtn.setDynamicDatas(getDynamicData(caseMasterTid, 2317L )); // the cid of attribute

		return rtn;
	}
	
	/*
	 * 08 案件人名-查詢
	 */
	@Override
	@Transactional(readOnly = true) 							// 表示這個方法在一個只讀的交易範疇內執行
	public User findUser(String caseMasterTid) {
	    User user = new User();
	    List<CaseUser> caseUsers = caseUserRepository.findByCaseMasterTid(caseMasterTid);

	    List<ApplicantUser> applicants = new ArrayList<>();
	    List<AgentUser> agents = new ArrayList<>();

	    for (CaseUser caseUser : caseUsers) {
//	        processCaseUser(cu); 								// 解密和驗證
	    	CodeDetailDto codedetail = CodeDetailMap.get(caseUser.getCaseUserKindCid()); 	//TODO cid can be null
	    	System.out.println(codedetail);
	    	System.out.println(caseUser.getCaseUserKindCid());
	        switch (codedetail.getCode()) {
	            case FoiConstants.APPLICANT:
	                applicants.add(createApplicantUser(caseUser)); 	// 創建並添加申請人
	                break;
	            case FoiConstants.AGENT:
	                agents.add(createAgentUser(caseUser)); 			// 創建並添加代理人
	                break;
	        }
	    }

	    user.setApplicants(applicants);
	    user.setAgents(agents);
	    return user;
	}

//	private void processCaseUser(CaseUser cu) { 				// 解密和驗證 helper function
//	    try {
//	        cu.decryptFields();
//	    } catch (NoSuchAlgorithmException e) {
//	    	throw new RuntimeException(FoiConstants.DECRYPT_FAILED_MESSAGE, e);
//	    }
//	    
//    	CodeDetailDto cd = CodeDetailMap.get(cu.getIdnoTypeCid());
//    	VerifyInputs.checkCode(FoiConstants.IDNO_TYPE, cd);
//    	if (cd.getCode().equals(2)) {							// TODO 其他證號的情況都當做是：統一編號 
//    		VerifyInputs.isValidTaxID(cu.getIdnoCrypt());
//    	} else if (!VerifyInputs.isValidID(cu.getIdnoCrypt())) {		
//	        throw new IllegalArgumentException(FoiConstants.ID_NO_EXCEPTION);
//	    }
//	}
	private ApplicantUser createApplicantUser(CaseUser cu) { 	// 創建申請人 helper function
	    ApplicantUser applicantUser = new ApplicantUser();
	    applicantUser.copyFromCaseUser(cu);
	    applicantUser.setBirthDate(applicantUser.adjustBirthDate(cu.getBirthDate()));
	    return applicantUser;
	}
	private AgentUser createAgentUser(CaseUser cu) { 			// 創建代理人 helper function
	    AgentUser agentUser = new AgentUser();
	    CaseUserAgent caseUserAgent = caseUserAgentRepository.findByCaseUserTid(cu.getId());
	    agentUser.copyFromCaseUser(cu);
	    agentUser.copyFromCaseUserAgent(caseUserAgent);
	    agentUser.setBirthDate(agentUser.adjustBirthDate(cu.getBirthDate()));
	    return agentUser;
	}
	
	/*
	 * 09 案件人名-新增/異動/刪除
	 */
	@Override
	public void addOrModUser(User user) {
	    for (CaseUserType caseUser : user.getAllUsers()) {
	        String caseUserTid = caseUser.getCaseUserTid();
	        String caseMasterTid = caseUser.getCaseMasterTid();
	        if (FoiConstants.DELETE.equals(caseMasterTid)) {
	            deleteCaseUser(caseUserTid);
	        } else {
	            processUser(caseUser, caseUser.getUserKind());
	        }
	    }
	}


	private void deleteCaseUser(String caseUserTid) {
	    caseUserRepository.deleteById(caseUserTid);	// TID == null; parentKeyID == null 
	}
	
	private void processUser(CaseUserType caseUserType, String userKind) {
		CaseUser caseUser = createOrUpdateUser(caseUserType, userKind);
	    validateAndEncryptUser(caseUser);
	    // If caseUserType is an agent, also create a CaseUserAgent
	    if (caseUserType instanceof AgentUser) {
	    	AgentUser agentUserType = (AgentUser) caseUserType;
	        createOrUpdateAgent(agentUserType);
	    }
	}
	
	// 從 agent 或 applicant 型別 轉換成 CASE_USER 型別
	private CaseUser createOrUpdateUser(CaseUserType caseUserType, String userKind) {
	    String caseUserTid = caseUserType.getCaseUserTid();
	    CaseUser caseUser = caseUserRepository.findById(caseUserTid).orElse(new CaseUser());
	    
	    caseUser.setId(caseUserType.getCaseUserTid());
	    caseUser.setCaseUserKindCid(codedetailRepository.findCidByKindAndCode(FoiConstants.CASE_USER_KIND, userKind));
	    caseUser.setName(caseUserType.getName());
	    caseUser.setIdnoCrypt(caseUserType.getIdno());
	    caseUser.setSex(caseUserType.getSex());
	    caseUser.setBirthDate(caseUserType.getBirthDate()); 
	    caseUser.setPhone1NoCrypt(caseUserType.getPhone1No()); 
	    caseUser.setPhone1Ext(caseUserType.getPhone1Ext());
	    caseUser.setPhone2NoCrypt(caseUserType.getPhone2No()); 
	    caseUser.setPhone2Ext(caseUserType.getPhone2Ext());
	    caseUser.setEmailCrypt(caseUserType.getEmail());
	    caseUser.setZipCode(caseUserType.getZipCode());
	    caseUser.setSysCityCid(caseUserType.getSysCity().getCid());
	    caseUser.setSysDistrictCid(caseUserType.getSysDistrict().getCid());
	    caseUser.setAddressCrypt(caseUserType.getAddress()); 
	    caseUser.setAssignTime(caseUserType.getAssignTime());
	    // create by, time; update by, time is define in the entity annotation
	    caseUserRepository.save(caseUser); // Save or update CaseUser
	    
	    return caseUser;
	}

	
	private void createOrUpdateAgent(AgentUser agentUserType) {
	    String caseUserTid = agentUserType.getCaseUserTid();
	    CaseUserAgent caseUserAgent = caseUserAgentRepository.findById(caseUserTid).orElse(new CaseUserAgent());
	    
	    caseUserAgent.setCaseUserTid(caseUserTid);
	    caseUserAgent.setAgentKindCid(agentUserType.getAgentKind().getCid());
	    caseUserAgent.setAgentTypeCid(agentUserType.getAgentType().getCid());
	    caseUserAgent.setOtherRemark(agentUserType.getOtherRemark());

	    caseUserAgentRepository.save(caseUserAgent); // Save or update CaseUserAgent
	}


	private void validateAndEncryptUser(CaseUser caseUser) {
		// 1. 檢查 電話號碼不含#字號
		//    1.1 年齡小於120歲；
		// 2. 加密資料
	    VerifyInputs.isContainHash(caseUser.getPhone1NoCrypt());
	    VerifyInputs.isContainHash(caseUser.getPhone2NoCrypt());
	    
	    if (calculateAge(caseUser.getBirthDate()) > 120) {
	        throw new IllegalArgumentException("申請人生日換算為年齡應小於 120 歲");
	    }

	    try {
	        caseUser.encryptFields();
	    } catch (NoSuchAlgorithmException e) {
	        throw new RuntimeException(FoiConstants.ENCRYPT_FAILED_MESSAGE, e);
	    }
	}
	
	
		
	/*
	 * 12   契約關係人 
	 */
	@Override	
	@Transactional(readOnly = true)
	public List<ReferUser> findReferUsers(String caseMasterTid) {
	    // 1. 根據案件識別值查詢所有的 CaseUser
	    List<CaseUser> caseUsers = caseUserRepository.findByCaseMasterTid(caseMasterTid);

	    // 身分類型的列表
	    List<String> userKinds = Arrays.asList(FoiConstants.CONTRACTOR, FoiConstants.INSURED, FoiConstants.BENEFICIARY, FoiConstants.GUARANTOR);

	    // 2. 創建空的 ReferUser 列表，預設四種身分類型
	    List<ReferUser> referUsers = new ArrayList<>();
	    for (String kind : userKinds) {
	        Long cid = codedetailRepository.findCidByKindAndCode(FoiConstants.CASE_USER_KIND, kind);
	        CodeDetailDto cd = CodeDetailMap.get(cid);
	        referUsers.add(ReferUser.builder()
	                .caseUserKind(new ShowCodeBo(cd))
	                .build());
	    }

	    // 3. 遍歷 caseUsers 並填入相對應的資訊到 referUsers
	    for (CaseUser cu : caseUsers) {
	        CodeDetailDto cd = CodeDetailMap.get(cu.getCaseUserKindCid());

	        // 若 CodeDetail 中的 code 存在於身分類型列表中，則更新相對應的 referUser
	        if (userKinds.contains(cd.getCode())) {
	            ReferUser user = referUsers.stream()
	                    .filter(u -> u.getCaseUserKind().getCid().equals(cd.getCid()))
	                    .findFirst()
	                    .orElse(null);

	            if (user != null) {
	            	try {
	            		cu.decryptFields();
	        	    } catch (NoSuchAlgorithmException e) {
	        	    	throw new RuntimeException(FoiConstants.DECRYPT_FAILED_MESSAGE, e);
	        	    }
	                user.setCaseMasterTid(caseMasterTid);
	                user.setCaseUserTid(cu.getId());
	                user.setName(cu.getName());
	                user.setIdno(cu.getIdnoCrypt()); // 解密完成
	            }
	        }
	    }

	    return referUsers;
	}


	/*
	 * 13
	 */
	@Override
	@Transactional
	public void addOrModUserRefer(List<ReferUser> referUsers) {				
		
	    for (ReferUser referUser : referUsers) {
	        String caseMasterTid = referUser.getCaseMasterTid();
	        if (FoiConstants.DELETE.equals(caseMasterTid)) {
	            deleteCaseUser(referUser.getCaseUserTid());  				// 刪除 CaseUser
	        } else {
	            createOrUpdateCaseUserFromReferUser(referUser);  			// 創建、更新 新的 CaseUser
	        }
	    }
	}

	private void createOrUpdateCaseUserFromReferUser(ReferUser referUser) {
	    ShowCodeBo caseUserKind = referUser.getCaseUserKind();
	    CodeDetailDto idTypeCodeDetail = getIdTypeCodeDetail(referUser.getIdno());

	    String caseUserTid = referUser.getCaseUserTid();

	    CaseUser caseUser = caseUserRepository.findById(caseUserTid).orElse(new CaseUser());
	    caseUser.setCaseMasterTid(referUser.getCaseMasterTid());  			// 設置 CaseMasterTid
	    caseUser.setCaseUserKindCid(caseUserKind.getCid());  				// 設置 CaseUserKindCid
	    caseUser.setName(referUser.getName());  							// 設置名稱
	    caseUser.setIdnoTypeCid(idTypeCodeDetail.getCid());  				// 設置 IdnoTypeCid
	    caseUser.setIdnoCrypt(aesEncryption.encrypt(referUser.getIdno()));  // 對 Idno 進行加密

	    caseUserRepository.save(caseUser);  								// 儲存 CaseUser
	}

	private CodeDetailDto getIdTypeCodeDetail(String idno) {
	    if (idno.length() == 10) {											
	        VerifyInputs.isValidID(idno);  									// 如果是10位數 就驗證 身份證字號
	        return CodeDetailMap.get(FoiConstants.IDNO_TYPE, FoiConstants.IDNO_TYPE_A);
	    } else if (idno.length() == 8) {
	        VerifyInputs.isValidTaxID(idno);  								// 驗證統編
	        return CodeDetailMap.get(FoiConstants.IDNO_TYPE, FoiConstants.IDNO_TYPE_B);
	    } 
	    
	    else {
	        throw new BadRequestException(FoiConstants.WRONG_LENGTH_FOR_IDNO);  
	    }
	}

	/*
	 * 14 爭議內容-查詢
	 */
	@Override
	@Transactional(readOnly = true) 
    public DisputeContent findDisputeContent(String caseMasterTid) {
		// 1. 抓CASE_MASTER & CASE_PRODUCT_ITEMS
		// 2. 將case_master 對應到 DisputeContent
		// 3. Map CaseProductItems to ProductItem BOs
        // 4. Map CaseDynamicColumns to DynamicData BOs
		System.out.println("【findDisputeContent】 input tid = " + caseMasterTid);
		CaseMaster caseMaster = VerifyInputs.checkCaseMaster(caseMasterRepository.findById(caseMasterTid).orElse(null));
	    List<CaseProductItem> caseProductItems = caseProductItemRepository.findByCaseMasterTid(caseMasterTid);
	    
	    DisputeContent disputeContent = toDisputeContent(caseMaster);

	    List<ProductItem> productItems = caseProductItems.stream()
	        .map(this::toProductItem)
	        .collect(Collectors.toList());
	    
	    List<DynamicData> dynamicDatas = getDynamicData(caseMasterTid, 2320L); 	// the cid of dispute.content        
	    disputeContent.setProductItem(productItems);
	    disputeContent.setDynamicDatas(dynamicDatas);

	    return disputeContent;    
    }

	private ProductItem toProductItem(CaseProductItem caseProductItem) {
	    // 建立新的 ProductItem BO 並從 CaseProductItem 對映欄位
	    System.out.println("處理 ItemTypeCid..."); // 增加打印語句
	    ShowCodeBo itemTypeCid = new ShowCodeBo(caseProductItem.getItemTypeCid());
	    System.out.println("處理 ItemKindCid..."); // 增加打印語句
	    ShowCodeBo itemKindCid = new ShowCodeBo(caseProductItem.getItemKindCid());
	    return ProductItem.builder()
	        .caseProductItemTid(caseProductItem.getId())
	        .caseMasterTid(caseProductItem.getCaseMasterTid())
	        .itemType(itemTypeCid)
	        .itemKind(itemKindCid)
//	        .itemType(new ShowCodeBo(CodeDetailMap.get(caseProductItem.getItemTypeCid())))
//	        .itemKind(new ShowCodeBo(CodeDetailMap.get(caseProductItem.getItemKindCid())))
	        .itemName(caseProductItem.getItemName())
	        .build();																					
	}
	
	// map CASE_MASTER to dispute content. fill in telType if caseType = C01002
	private DisputeContent toDisputeContent(CaseMaster caseMaster) {
		// if caseType.equals(C01002) >> telType = CASE_TEL_EXT.telType
		ShowCodeBo scTelType = determineTelType(caseMaster);
		
		System.out.println("處理 closeStatus..."); // 增加打印語句 可delete
	    ShowCodeBo closeStatus = new ShowCodeBo(caseMaster.getCloseStatusCid());
	    System.out.println("處理 closeReason1..."); // 增加打印語句
	    ShowCodeBo closeReason1 = new ShowCodeBo(caseMaster.getCloseReason1Cid());
	    System.out.println("處理 closeReason2..."); // 增加打印語句
	    ShowCodeBo closeReason2 = new ShowCodeBo(caseMaster.getCloseReason2Cid());

	    return DisputeContent.builder()
	        .caseMasterTid(caseMaster.getId())
	        .treeIndustryCid(mapCaseMasterToTree(caseMaster, caseMaster.getTreeIndustryCid()))
	        .companyTid(caseMaster.getCompanyTid())
	        .isReparation(toIsReparation(caseMaster.getReparationCid()))
	        .disputeKind(mapCaseMasterToTree(caseMaster, caseMaster.getDisputeKindCid()))
//	        .closeStatus(new ShowCodeBo(caseMaster.getCloseStatusCid()))
//	        .closeReason1(new ShowCodeBo(caseMaster.getCloseReason1Cid()))
//	        .closeReason2(new ShowCodeBo(caseMaster.getCloseReason2Cid()))
	        .closeStatus((closeStatus))
	        .closeReason1(closeReason1)
	        .closeReason2(closeReason2)
	        .centerOwnerAccount(caseMaster.getCenterOwnerAccount())
	        .companyOwnerAccount(caseMaster.getCompanyOwnerAccount())
	        .telType(scTelType)
	        .build();
	}

	private Boolean toIsReparation(Long reparationCid) {
	    if (reparationCid != null) {
	        String code = CodeDetailMap.get(reparationCid).getCode();
	        if (code != null) {
	            return "1".equals(code);
	        }
	    }
	    return null;
	}


	/*
	 * 15 爭議內容-新增或更改
	 */
	@Override
	@Transactional
	public void addOrModDisputeContent(DisputeContent disputeContent) {
	    // 從 CASE_MASTER 和 CASE_PRODUCT_ITEM 中取得資料
	    String caseMasterTid = disputeContent.getCaseMasterTid();
	    CaseMaster caseMaster = caseMasterRepository.findById(caseMasterTid).orElse(new CaseMaster());
	    List<CaseProductItem> caseProductItems = caseProductItemRepository.findByCaseMasterTid(caseMasterTid);
	    // 如果該 band 無法被變更，立刻返回
		checkCaseCanBeModify(FoiConstants.DISPUTE_CONTENT, caseMaster);
	    // 更新 CaseMaster 和 CaseProductItems 和 CaseDynamicColumns 資料
	    updateCaseMaster(caseMaster, disputeContent);
	    updateCaseProductItems(caseProductItems, disputeContent.getProductItem());
	    updateDynamicData(new ShowCodeBo(caseMaster.getCaseTypeCid()), caseMasterTid, FoiConstants.DISPUTE_CONTENT, disputeContent.getDynamicDatas());	
	    updateCaseTelExt(caseMaster, disputeContent);
	}
	

		//only update
		private void updateCaseMaster(CaseMaster caseMaster, DisputeContent disputeContent) {
		    caseMaster.setId(disputeContent.getCaseMasterTid());
		    caseMaster.setTreeIndustryCid(disputeContent.getTreeIndustryCid().getSelectedCid());
		    caseMaster.setCompanyTid(disputeContent.getCompanyTid());
		    caseMaster.setReparationCid(getCidFromBoolean(disputeContent.getIsReparation())); // TODO from boolean to cid by codedetail
		    caseMaster.setDisputeKindCid(disputeContent.getDisputeKind().getSelectedCid()); 
		    caseMaster.setCloseStatusCid(disputeContent.getCloseStatus().getCid());
		    caseMaster.setCloseReason1Cid(disputeContent.getCloseReason1().getCid());
		    caseMaster.setCloseReason2Cid(disputeContent.getCloseReason2().getCid());
		    caseMaster.setCenterOwnerAccount(disputeContent.getCenterOwnerAccount());
		    caseMaster.setCompanyOwnerAccount(disputeContent.getCompanyOwnerAccount());
		    
		    caseMasterRepository.save(caseMaster);
		}
	
	
		private void updateCaseProductItems(List<CaseProductItem> caseProductItems, List<ProductItem> updatedProductItems) {
		    for (ProductItem updatedProductItem : updatedProductItems) {
	            CaseProductItem newCaseProductItem = mapProductItemToCaseProductItem(updatedProductItem); // 假設這是一個把ProductItem映射到CaseProductItem的方法
	            caseProductItemRepository.save(newCaseProductItem);
		    }
		}
	
		private void updateCaseTelExt(CaseMaster caseMaster, DisputeContent disputeContent) {
			CodeDetailDto caseTypeDetail = CodeDetailMap.get(caseMaster.getCaseTypeCid());
			
			// Check if caseType is available and matches the specific code.
			if (caseTypeDetail != null && FoiConstants.C01002.equals(caseTypeDetail.getCode())) {
				ShowCodeBo telType = disputeContent.getTelType();
				
				if (telType == null) {
					// Handle the scenario when telType is null, maybe log or throw an exception.
					return;
				}
				
				CaseTelExt caseTelExt = caseTelExtRepository.findByCaseMasterTid(caseMaster.getId());
				
				if (caseTelExt == null) {
					caseTelExt = new CaseTelExt();  // create a new object first
					caseTelExt.setCaseMasterTid(caseMaster.getId());
					caseTelExt.setTelTypeCid(telType.getCid());
					caseTelExtRepository.save(caseTelExt);  // Save the new CaseTelExt to the repository
					return;
				}
				caseTelExt.setTelTypeCid(telType.getCid());
				caseTelExtRepository.save(caseTelExt);
			}
		}

	/*
	 * 16 諮詢顧問-查詢
	 */
	// 查詢資料庫中的諮詢顧問資料並將它們轉換為Consultant對象返回
	@Override
	@Transactional(readOnly = true)
	public List<Consultant> findConsultant(String caseMasterTid) {
		// 檢查caseMasterTid是否存在於資料庫中
	    Optional<CaseMaster> caseMasterOptional = caseMasterRepository.findById(caseMasterTid);
	    if (!caseMasterOptional.isPresent()) {
	        throw new BadRequestException("找不到指定的案件主檔"); // 這裡可以提供具體的錯誤代碼或訊息
	    }
	    // 從資料庫中獲取CASE_CONSULTANT資料，並按seqNo進行排序
	    List<CaseConsultant> caseConsultants = caseConsultantRepository.findByCaseMasterTidOrderBySeqNo(caseMasterTid);

	    // 使用AtomicInteger來給每個Consultant設定一個新的連續編號，從1開始
	    AtomicInteger counter = new AtomicInteger(1);
	    return caseConsultants.stream()
	        .map(caseConsultant -> toConsultant(caseConsultant, counter.getAndIncrement(), caseMasterTid))
	        .collect(Collectors.toList());
	}

	// 將CASE_CONSULTANT轉換為Consultant BO
	private Consultant toConsultant(CaseConsultant caseConsultant, int newSeqNo, String caseMasterTid) {
	    Consultant consultant = new Consultant();
	    CaseMaster caseMaster = caseMasterRepository.getById(caseMasterTid);

	    consultant.setCaseMasterTid(caseMasterTid);
	    consultant.setCaseConsultantTid(caseConsultant.getId());
	    consultant.setCaseMemberTid(caseConsultant.getMemberTid());
	    consultant.setSeqNo(newSeqNo);
	    consultant.setName(caseConsultant.getName());
	    consultant.setIssueDate(caseConsultant.getIssueDate()); 
	    consultant.setIssueNo(caseConsultant.getIssueNo()); 
	    consultant.setReceiveDate(caseConsultant.getReceiveDate() == null ? null : caseConsultant.getReceiveDate());
	    consultant.setReceiveNo(caseConsultant.getReceiveNo());

	    // 從CASE_FILE表中取得與該CASE_CONSULTANT相關的文件資料
	    // 從 codedetail 取得 consultant 的 cid
	    CodeDetailDto cd = CodeDetailMap.get("case_file_type", "consultant");
	    //TODO call caseFile01;假設 CASE_FILE.caseNo = consultant.receiveNo
	    List<CaseFileBoData> files = caseFileServiceImpl.getListByCaseFileType(caseMaster.getCaseNo(), cd.getCid()); 	//TODO fromtabletid
	    consultant.setFiles(files);

	    return consultant;
	}

	/*
	 * 17
	 */
	@Override
	@Transactional
	public void addOrModConsultant(List<Consultant> consultantsToUpdate) {
		if (consultantsToUpdate == null || consultantsToUpdate.isEmpty()) {
	        throw new BadRequestException("傳入的參數為空，無法進行資料修改");
	    }
		
		String caseMasterTid = consultantsToUpdate.get(0).getCaseMasterTid();
		CaseMaster caseMaster = VerifyInputs.checkCaseMaster(caseMasterRepository.findById(caseMasterTid).orElse(null));
		checkCaseCanBeModify(FoiConstants.CONSULTANT, caseMaster);
		
	    for (Consultant consultantToUpdate : consultantsToUpdate) {
	        CaseConsultant caseConsultant;

	        Optional<CaseConsultant> existingCaseConsultantOpt = caseConsultantRepository.findById(consultantToUpdate.getCaseConsultantTid());

	        if (existingCaseConsultantOpt.isPresent()) {
	            caseConsultant = existingCaseConsultantOpt.get();

	            // 如果所有欄位都相同，則不進行更新
	            if (areConsultantsIdentical(consultantToUpdate, caseConsultant)) {
	                continue;
	            }

	            updateCaseConsultant(caseConsultant, consultantToUpdate);
	        } else {
	            caseConsultant = createNewCaseConsultant(consultantToUpdate);
	        }
	        
	        caseConsultantRepository.save(caseConsultant);
	    }
	}

	private boolean areConsultantsIdentical(Consultant consultantToUpdate, CaseConsultant existingConsultant) {
	    // 檢查所有欄位是否相同，根據您的需求加入其他欄位
	    return Objects.equals(consultantToUpdate.getName(), existingConsultant.getName())
	        && Objects.equals(consultantToUpdate.getIssueDate(), existingConsultant.getIssueDate())
	        && Objects.equals(consultantToUpdate.getIssueNo(), existingConsultant.getIssueNo())
	        && Objects.equals(consultantToUpdate.getReceiveDate(), existingConsultant.getReceiveDate())
	        && Objects.equals(consultantToUpdate.getReceiveNo(), existingConsultant.getReceiveNo());
	}

	private void updateCaseConsultant(CaseConsultant caseConsultant, Consultant consultantToUpdate) {
        caseConsultant.setName(consultantToUpdate.getName());
        caseConsultant.setIssueDate(consultantToUpdate.getIssueDate());
        caseConsultant.setIssueNo(consultantToUpdate.getIssueNo());
        caseConsultant.setReceiveDate(consultantToUpdate.getReceiveDate());
        caseConsultant.setReceiveNo(consultantToUpdate.getReceiveNo());
	}


	private CaseConsultant createNewCaseConsultant(Consultant consultantToUpdate) {
	    CaseConsultant caseConsultant = new CaseConsultant();
	    caseConsultant.setCaseMasterTid(consultantToUpdate.getCaseMasterTid());
	    caseConsultant.setName(consultantToUpdate.getName());
	    caseConsultant.setIssueDate(consultantToUpdate.getIssueDate());
	    caseConsultant.setIssueNo(consultantToUpdate.getIssueNo());
	    caseConsultant.setReceiveDate(consultantToUpdate.getReceiveDate());
	    caseConsultant.setReceiveNo(consultantToUpdate.getReceiveNo());

	    // 設定 seqNo 如果有提供，或計算下一個序列號
	    if (consultantToUpdate.getSeqNo() != null) {
	        caseConsultant.setSeqNo(consultantToUpdate.getSeqNo());
	    } else {
	        int nextSeqNo = caseConsultantRepository.findMaxSeqNo() + 1;
	        caseConsultant.setSeqNo(nextSeqNo);
	    }

	    return caseConsultant;
	}



	@Override
	public CaseMaster18Response findPreExam(String caseMasterTid) {
//		1.確認傳入案件是否為公文評議件(含續行)，不是則丟出異常
//		2.取得判斷書與其內容(case_suggestion、case_suggestion_book)
//		  2.1.判斷書內容(case_suggestion_book)有多筆時，依次序給定預審案別
//		3.取得預審委員資訊(case_examiner)
//		4.取得預審附件(含諮詢顧問、承辦人上傳的，須依順序加入)
//		  4.1.諮詢顧問上傳附件(caseFileType=consultant)
//		  4.2.承辦人上傳附件(caseFileType=suggestion)
//		5.取得發信記錄(方法caseUtil.getMailLogSimple)
//		6.取得動態欄位資料
		
//		1
		CaseMaster caseMaster = VerifyInputs.checkCaseMaster(caseMasterRepository.findById(caseMasterTid).orElse(null));
		CodeDetailDto caseTypeCode = VerifyInputs.checkCode(FoiConstants.CASE_TYPE, CodeDetailMap.get(caseMaster.getCaseTypeCid()));
		if (!FoiConstants.C01001.equals(caseTypeCode.getCode())) {
			throw new BadRequestException("本件非公文件，不顯示預審資料");
		}
		
		CodeDetailDto caseClassCode = VerifyInputs.checkCode(FoiConstants.CASE_CLASS, CodeDetailMap.get(caseMaster.getCaseClassCid()));
		if (!FoiConstants.C.equals(caseClassCode.getProperty1())) {
			throw new BadRequestException("本件非評議類案件，不顯示預審資料");
		}
		
		CaseMaster18Response rtn = new CaseMaster18Response();
		
//		2
		Suggestion suggestionInfo = new Suggestion(caseSuggestionRepository.findByCaseMasterTid(caseMasterTid));
//		2.1
		if (suggestionInfo.getSuggestionBooks().size() > 1) {
			for (SuggestionBook suggestionBook : suggestionInfo.getSuggestionBooks()) {
				suggestionBook.setSuggestionBookDesc(concatAdditionalStr(suggestionBook.getSeqNo(), suggestionBook.getSuggestionBookDesc()));
			}
		}
		
//		3
		List<Examiner> examminers = new ArrayList<>();
		for (CaseExaminer caseExaminer : caseExaminerRepository.findAllByCaseMasterTid(caseMasterTid)) {
			examminers.add(new Examiner(caseExaminer));
		}
		rtn.setExaminers(examminers);
		
//		4
		List<CaseFileBoData> files = new ArrayList<>();
//		4.1
		CodeDetailDto consultantCode = CodeDetailMap.get(FoiConstants.CASE_FILE_TYPE, FoiConstants.CONSULTANT);
		files.addAll(caseFileServiceImpl.getListByCaseFileType(caseMaster.getCaseNo(), consultantCode.getCid()));		// 顧問上傳檔案
//		4.2
		CodeDetailDto suggestionCode = CodeDetailMap.get(FoiConstants.CASE_FILE_TYPE, FoiConstants.SUGGESTION);
		files.addAll(caseFileServiceImpl.getListByCaseFileType(caseMaster.getCaseNo(), suggestionCode.getCid()));		// 承辦人上傳的預審附件
		suggestionInfo.setFiles(files);
		
//		5
		suggestionInfo.setMailLogs(caseUtilsService.getMailLogSimple());
		
//		6
		suggestionInfo.setDynamicDatas(getDynamicData(caseMasterTid, 2328L)); //the cid of preExam
		
		rtn.setSuggestionInfo(suggestionInfo);

		return rtn;
	}

	@Override
	public CaseMaster18Response addOrModPreExam(Suggestion req) {
//		1.確認案件區塊是否可異動
//		2.判斷書(case_suggestion)處理
//		3.判斷書內容(case_suggestion_book)處理
//		  3.1.新增判斷書內容(case_suggestion_book)，有多筆時去掉前三碼預審類別
//		  3.2.更新判斷書內容
//		4.預審委員(case_examiner)處理
//		  4.1.預審委員有上傳檔案時不能刪除
//		5.動態欄位(case_dynamic_column)處理
		
//		1
		CaseMaster master = VerifyInputs.checkCaseMaster(caseMasterRepository.findById(req.getCaseMasterTid()).orElse(null));
		checkCaseCanBeModify(FoiConstants.PREEXAM, master);
		
//		2
		CaseSuggestion suggestion = caseSuggestionRepository.findById(req.getCaseSuggestionTid()).orElse(null);
		if (suggestion == null) {																						// 新增
			suggestion = new CaseSuggestion();
			suggestion.setId(null);
			suggestion.setCaseMasterTid(null);
		} else {																										// 更新
			if (!suggestion.getCaseMasterTid().equals(master.getId())) {
				throw new BadRequestException("判斷書與案件主檔不屬同一案件");
			}
		}
		suggestion.setCaseReasonDesc(req.getCaseReasonDesc());
		suggestion.setRequestDesc(req.getRequestDesc());
		suggestion.setMailMessage(req.getMailMessage());
		
		suggestion = caseSuggestionRepository.saveAndFlush(suggestion);
		
//		3
		for (SuggestionBook suggestionBook : req.getSuggestionBooks()) {
			if (StringUtils.isEmptyOrNull(suggestionBook.getCaseSuggestionBookTid())) {
//				3.1
				caseSuggestionBookRepository.saveAndFlush(suggestionBook.toEntity());
			} else {
//				3.2
				CaseSuggestionBook entity = caseSuggestionBookRepository.getById(suggestionBook.getCaseSuggestionBookTid());
				entity.setSeqNo(suggestionBook.getSeqNo());
				entity.setSuggestionBookDesc(suggestionBook.getSuggestionBookDesc().charAt(2) == '-' ? 
						suggestionBook.getSuggestionBookDesc().substring(3) : suggestionBook.getSuggestionBookDesc());
				caseSuggestionBookRepository.saveAndFlush(entity);
			}
		}
		
//		4
		List<CaseExaminer> caseExaminerList = caseExaminerRepository.findAllByCaseMasterTid(req.getCaseMasterTid());
		for (CaseExaminer caseExaminer : caseExaminerList) {
			List<CaseFile> fileList = caseFileRepository.findAllByFromTableNameAndFromTableTid(FoiConstants.CASE_EXAMINER, caseExaminer.getId());
			if (fileList.isEmpty()) {
				fileList.forEach(f -> modifyLog.newDeleteRecord(f.getId(), FoiConstants.CASE_FILE));					// 業務資料刪除紀錄(case_file)
				caseFileRepository.deleteAll(fileList);
				modifyLog.newDeleteRecord(caseExaminer.getId(), FoiConstants.CASE_EXAMINER);							// 業務資料刪除紀錄(case_examiner)
				caseExaminerRepository.delete(caseExaminer);
			} else {
//				4.1
				log.info(String.format("有檔案時不能刪除委員(%s), 需先解鎖、清空檔案", caseExaminer.getName()));
			}
		}
		
//		5
		updateDynamicData(new ShowCodeBo(master.getCaseTypeCid()), master.getId(), FoiConstants.PREEXAM, req.getDynamicDatas());
		
		return null;
	}

	@Override
	public MeetPlan findMeet(String caseMasterTid) {
		CaseMaster master = VerifyInputs.checkCaseMaster(caseMasterRepository.findById(caseMasterTid).orElse(null));
		
		MeetPlan rtn = new MeetPlan(caseMeetPlanRepository.findByCaseMasterTid(caseMasterTid));							// 取得case_meet_plan
		List<MeetPlanRefDoc> meetPlanRefDocList = new ArrayList<>();
		for (CaseMeetPlanRefDoc entity : caseMeetPlanRefDocRepository.findAllByCaseMeetPlanTid(caseMasterTid)) {
			meetPlanRefDocList.add(new MeetPlanRefDoc(entity));
		}
		rtn.setRefDocs(meetPlanRefDocList);																				// 取得case_meet_plan_ref_doc
		
		List<CaseFileBoData> files = new ArrayList<>();
		CodeDetailDto meetDraftCode = CodeDetailMap.get(FoiConstants.CASE_FILE_TYPE, FoiConstants.MEET_DRAFT);
		files.addAll(caseFileServiceImpl.getListByCaseFileType(master.getCaseNo(), meetDraftCode.getCid()));			// 取得提會草本檔案
		rtn.setFiles(files);
		
		CodeDetailDto bandCode = CodeDetailMap.get(FoiConstants.BAND_CODE, FoiConstants.MEET);							// 取得欄位資料
		rtn.setDynamicDatas(getDynamicData(caseMasterTid, bandCode.getCid()));
		
		rtn.setMutiDocMessge("來自公文系統");			// TODO : 來自公文系統
		
	    return rtn;
	}

	@Override
	public void addOrModMeet(MeetPlan req) {
		CaseMaster master = VerifyInputs.checkCaseMaster(caseMasterRepository.findById(req.getCaseMasterTid()).orElse(null));
		checkCaseCanBeModify(FoiConstants.MEET, master);
		
		Meeting meeting = VerifyInputs.checkMeeting(meetingRepository.findById(req.getMeetingTid()).orElse(null));
		if (DateUtil.getSystemTime().after(meeting.getLimitDate())) {
			throw new BadRequestException(String.format("已逾截止時間(%s)，該會次不可加入提案", meeting.getLimitDate()));
		}
		
		if (DateUtil.getSystemTime().after(meeting.getMeetDate())) {
			throw new BadRequestException(String.format("案件已過大會(%s)，不可異動", meeting.getMeetDate()));
		}
		
		CaseMeetPlan caseMeetPlan = null;
		if (StringUtils.isEmptyOrNull(req.getCaseMeetPlanTid())) {														// 新增
			caseMeetPlan = new CaseMeetPlan();
			caseMeetPlan.setId(StringUtils.newUuidStr());
			caseMeetPlan.setCaseMasterTid(req.getCaseMasterTid());
			caseMeetPlan.setMeetingTid(req.getMeetingTid());
		} else {																										// 更新
			caseMeetPlan = caseMeetPlanRepository.findById(req.getCaseMeetPlanTid()).orElse(null);
			if (caseMeetPlan.getSubmitTime() != null) {
				throw new BadRequestException("案件已提會不可異動。若須變更，請通知議事行政人員退回");
			}
		}
		caseMeetPlan.setPlanTypeCid(req.getPlanType().getCid());
		caseMeetPlan.setCloseStatusCid(req.getCloseStatus().getCid());
		caseMeetPlan.setCloseReason1Cid(req.getCloseReason1().getCid());
		caseMeetPlan.setSubmitTime(req.getSubmitTime());
		caseMeetPlan.setCancelTime(req.getCancelTime());
		
		caseMeetPlan = caseMeetPlanRepository.saveAndFlush(caseMeetPlan);
		
		List<MeetPlanRefDoc> refDocs = req.getRefDocs();
		for (int i = 0 ; i < refDocs.size() ; i ++) {
			MeetPlanRefDoc bo = refDocs.get(i);
			CaseMeetPlanRefDoc caseMeetPlanRefDoc = null;
			if (StringUtils.isEmptyOrNull(bo.getCaseMeetPlanTid())) {													// 新增
				caseMeetPlanRefDoc = new CaseMeetPlanRefDoc();
				caseMeetPlanRefDoc.setId(StringUtils.newUuidStr());
				caseMeetPlanRefDoc.setCaseMeetPlanTid(caseMeetPlan.getId());
			} else {																									// 更新
				caseMeetPlanRefDoc = VerifyInputs.checkCaseMeetPlanRefDoc(caseMeetPlanRefDocRepository
														.findById(bo.getCaseMeetPlanRefDocTid()).orElse(null));
			}
			
			if (FoiConstants.DELETE.equals(bo.getCaseMeetPlanTid())) {													// 刪除
				modifyLog.newDeleteRecord(caseMeetPlanRefDoc.getId(), FoiConstants.CASE_MEET_PLAN_REF_DOC);
				caseMeetPlanRefDocRepository.delete(caseMeetPlanRefDoc);
			} else {
				caseMeetPlanRefDoc.setDocYear(bo.getDocYear());
				caseMeetPlanRefDoc.setDocWord(bo.getDocWord());
				caseMeetPlanRefDoc.setDocNo(bo.getDocNo());
				caseMeetPlanRefDoc.setCreateBy(SecurityUtils.getCurrentUsername());
				caseMeetPlanRefDoc.setCreateTime(DateUtil.getSystemTime());
				
				caseMeetPlanRefDocRepository.saveAndFlush(caseMeetPlanRefDoc);
			}			
		}
																														// 更新欄位資料
		updateDynamicData(new ShowCodeBo(master.getCaseTypeCid()), master.getId(), FoiConstants.MEET, req.getDynamicDatas());
	}

	@Override
	public DisputeDecision findDisputeDecision(String caseMasterTid) {
		CaseMaster master = VerifyInputs.checkCaseMaster(caseMasterRepository.findById(caseMasterTid).orElse(null));
		
		DisputeDecision rtn = new DisputeDecision(caseDecideRepository.findByCaseMasterTid(caseMasterTid));				// 取得評議決定(case_decide)

		List<CaseFileBoData> files = new ArrayList<>();
		CodeDetailDto decideCode = CodeDetailMap.get(FoiConstants.CASE_FILE_TYPE, FoiConstants.DECIDE);
		files.addAll(caseFileServiceImpl.getListByCaseFileType(master.getCaseNo(), decideCode.getCid()));				// 取得評議決定書
		rtn.setFiles(files);
		
		CodeDetailDto bandCode = CodeDetailMap.get(FoiConstants.BAND_CODE, FoiConstants.DISPUTE_DECISION);				// 取得欄位資料
		rtn.setDynamicDatas(getDynamicData(caseMasterTid, bandCode.getCid()));

		rtn.setHaveMeetDecide(meetingDecideRepository.countByCaseMasterTid(caseMasterTid) > 0);							// 是否已存在大會決議
		
	    return rtn;
	}

	@Override
	public void addOrModDisputeDecision(DisputeDecision req) {
		CaseMaster master = VerifyInputs.checkCaseMaster(caseMasterRepository.findById(req.getCaseMasterTid()).orElse(null));
		checkCaseCanBeModify(FoiConstants.DECIDE, master);
		
		CaseDecide caseDecide = caseDecideRepository.findById(req.getCaseDescisionTid()).orElse(null);
		if (caseDecide == null) {
			if (caseMeetPlanRepository.countByCaseMasterTid(master.getId()) > 0) {
				throw new BadRequestException("評議決定已存在，不可重覆新增");
			}
			caseDecide = new CaseDecide();
			caseDecide.setId(StringUtils.newUuidStr());
			caseDecide.setCaseMasterTid(req.getCaseMasterTid());
		}
		caseDecide.setCloseReason1Cid(req.getCloseReason1().getCid());
		caseDecide.setDecideResultCid(req.getDecideResult().getCid());
		caseDecide.setRequestTypeCid(req.getRequestType().getCid());
		caseDecide.setAAmt(req.getAAmt());
		caseDecide.setBAmt(req.getBAmt());
		caseDecide.setQuotaStyleCid(req.getQuotaStyleCid());
		caseDecide.setApplReturnDate(req.getApplReturnDate());
		caseDecide.setApplReturnReceiveNo(req.getApplReturnReceiveNo());
		caseDecide.setCompanyReturnReceiveNo(req.getCompanyReturnReceiveNo());
		caseDecide.setQuotaTypeCid(req.getQuotaTypeCid());
		caseDecide.setIsCut(req.getIsCut());
		caseDecide.setDecideRemark("");
		
		caseDecideRepository.saveAndFlush(caseDecide);
																														// 更新欄位資料
		updateDynamicData(new ShowCodeBo(master.getCaseTypeCid()), master.getId(), FoiConstants.DECIDE, req.getDynamicDatas());
	}

	@Override
	public Mediate findMediate(String caseMasterTid) {
		CaseMaster master = VerifyInputs.checkCaseMaster(caseMasterRepository.findById(caseMasterTid).orElse(null));
		
		Mediate rtn = new Mediate(caseMediateRepository.findByCaseMasterTid(caseMasterTid));							// 取得調處程序(case_mediate)
		List<MediateContact> contacts = new ArrayList<>();
		for (CaseMediateContact entiry : caseMediateContactRepository.findAllByCaseMediateTid(rtn.getCaseMediateTid())) {
			MediateContact mediateContact = new MediateContact(entiry);
			
			List<CaseFileBoData> files = new ArrayList<>();
			CodeDetailDto mediateCode = CodeDetailMap.get(FoiConstants.CASE_FILE_TYPE, FoiConstants.MEDIATE);
			files.addAll(caseFileServiceImpl.getListByCaseFileType(master.getCaseNo(), mediateCode.getCid()));			// 取得調處人員上傳檔案
			mediateContact.setFiles(files);
			
			contacts.add(mediateContact);
		}
		rtn.setContacts(contacts);

		CodeDetailDto bandCode = CodeDetailMap.get(FoiConstants.BAND_CODE, FoiConstants.MEDIATE);						// 取得欄位資料
		rtn.setDynamicDatas(getDynamicData(caseMasterTid, bandCode.getCid()));

	    return rtn;
	}

	@Override
	public void addOrModMediate(Mediate req) {
		CaseMaster master = VerifyInputs.checkCaseMaster(caseMasterRepository.findById(req.getCaseMasterTid()).orElse(null));
		checkCaseCanBeModify(FoiConstants.MEDIATE, master);
		
		CaseMediate caseMediate = null;
		if (StringUtils.isEmptyOrNull(req.getCaseMediateTid())) {
			caseMediate = new CaseMediate();
			caseMediate.setId(StringUtils.newUuidStr());
			caseMediate.setCaseMasterTid(req.getCaseMasterTid());
		} else {
			caseMediate = VerifyInputs.checkCaseMediate(caseMediateRepository.findById(req.getCaseMediateTid()).orElse(null));
		}
		caseMediate.setMediateAmt(req.getMediateAmt());
		caseMediate.setMediateUser(req.getMediateUser());
		caseMediate.setMediateRejectDate(req.getMediateRejectDate());
		caseMediate.setRejectNoticeDate(req.getRejectNoticeDate());
		caseMediate.setMediateDesc(req.getMediateDesc());

		caseMediate = caseMediateRepository.saveAndFlush(caseMediate);

		List<MediateContact> contacts = req.getContacts();
		for (int i = 0 ; i < contacts.size() ; i ++) {
			MediateContact bo = contacts.get(i);
			CaseMediateContact caseMediateContact = null;
			if (StringUtils.isEmptyOrNull(bo.getCaseMediateContractTid())) {											// 新增
				caseMediateContact = new CaseMediateContact();
				caseMediateContact.setId(StringUtils.newUuidStr());
				caseMediateContact.setCaseMediateTid(caseMediate.getId());
			} else {																									// 更新
				caseMediateContact = VerifyInputs.checkCaseMediateContact(caseMediateContactRepository
														.findById(bo.getCaseMediateContractTid()).orElse(null));
			}
			
			if (FoiConstants.DELETE.equals(bo.getCaseMediateTid())) {													// 刪除
				modifyLog.newDeleteRecord(caseMediateContact.getId(), FoiConstants.CASE_MEDIATE_CONTACT);
				caseMediateContactRepository.delete(caseMediateContact);
			} else {
				caseMediateContact.setContactDate(contacts.get(i).getContactDate());				
				caseMediateContact.setContactUserText(String.join("\t", contacts.get(i).getContactUsers()));
				caseMediateContact.setContactTypeCid(contacts.get(i).getContactType().getCid());
				caseMediateContact.setContactMethodCid(contacts.get(i).getContactMethod().getCid());
				caseMediateContact.setRemark(contacts.get(i).getRemark());
				caseMediateContact.setNeedMail(contacts.get(i).getNeedMail());
				caseMediateContact.setMailTime(contacts.get(i).getMailTime());
				caseMediateContact.setSignTime(contacts.get(i).getSignTime());
				caseMediateContact.setSignStatusCid(contacts.get(i).getSignStatus().getCid());
				caseMediateContact.setSignMemo(contacts.get(i).getSignMemo());
				caseMediateContact.setCreateBy(SecurityUtils.getCurrentUsername());
				caseMediateContact.setCreateTime(DateUtil.getSystemTime());
				
				caseMediateContactRepository.saveAndFlush(caseMediateContact);
			}			
		}
																														// 更新欄位資料
		updateDynamicData(new ShowCodeBo(master.getCaseTypeCid()), master.getId(), FoiConstants.MEDIATE, req.getDynamicDatas());
	}
	
	/**
	 * 26 案件摘要-查詢
	 */
	@Override
	public Memo findAnnotation(String caseMasterTid) {
		// 1. verify casemaster
		// 	1.1 檢查改區塊能否被變更
		// 2. get cid of memo_type  = annotation
		// 3. get memo, whose cid and casemaster match
		
		VerifyInputs.checkCaseMaster(caseMasterRepository.findById(caseMasterTid).orElse(null));	
		
		CodeDetailDto cd = CodeDetailMap.get(FoiConstants.MEMO_TYPE, FoiConstants.ANNOTATION);
		Long memoTypeCid = cd.getCid();
		
		CaseMemo caseMemo = caseMemoRepository.findByCaseMasterTidAndMemoTypeCid(caseMasterTid, memoTypeCid);
		
		if (caseMemo == null) {
	        Memo noMemo = new Memo();
	        noMemo.setMemoText("尚未有摘要資料");
	        return noMemo;				// 無資料的情況
	    }

	    return new Memo(caseMemo); 		// 有資料的情況
	}
	

	@Override
	public void addOrModAnnotation(Memo req) {
	    // 1. 驗證caseMaster是否存在
		CaseMaster caseMaster = VerifyInputs.checkCaseMaster(caseMasterRepository.findById(req.getCaseMasterTid()).orElse(null));
	    checkCaseCanBeModify(FoiConstants.ANNOTATION, caseMaster);

	    // 2. 獲取摘要類型的CID
	    CodeDetailDto cd = CodeDetailMap.get(FoiConstants.MEMO_TYPE, FoiConstants.ANNOTATION);
	    Long memoTypeCid = cd.getCid();

	    // 3. 尋找與caseMasterTid和memoTypeCid匹配的案件摘要
	    CaseMemo caseMemo = caseMemoRepository.findByCaseMasterTidAndMemoTypeCid(req.getCaseMasterTid(), memoTypeCid);

	    // 4. 如果找到了摘要，則修改它；否則，創建一個新的摘要
	    if (caseMemo != null) {
	        caseMemo.setMemoText(req.getMemoText()); // 修改摘要文字
	    } else {
	        caseMemo = new CaseMemo(); // 創建新的摘要
	        caseMemo.setId(UUID.randomUUID().toString()); 
	        caseMemo.setCaseMasterTid(req.getCaseMasterTid());
	        caseMemo.setMemoTypeCid(memoTypeCid);
	        caseMemo.setMemoText(req.getMemoText());
	        caseMemo.setSeqNo(caseMemoRepository.createMemoSeqNo(req.getCaseMasterTid())); 	// 設置seqNo為最大值加1（當前caseMaster）
	    }

	    // 5. 保存或更新摘要
	    caseMemoRepository.save(caseMemo);
	}


	@Override
	public CaseMaster28Response findMemo(String caseMasterTid) {
		// 1. 驗證casemaster
		VerifyInputs.checkCaseMaster(caseMasterRepository.findById(caseMasterTid).orElse(null));

		// 2. 取得公開備註(memo_type="public")的CID
		CodeDetailDto publicCd = CodeDetailMap.get(FoiConstants.MEMO_TYPE, FoiConstants.PUBLIC);
		Long publicMemoTypeCid = publicCd.getCid();
		List<CaseMemo> publicCaseMemos = caseMemoRepository.findAllByCaseMasterTidAndMemoTypeCid(caseMasterTid, publicMemoTypeCid);

		// 3. 取得內部紀錄(memo_type="private")的CID
		CodeDetailDto privateCd = CodeDetailMap.get(FoiConstants.MEMO_TYPE, FoiConstants.PRIVATE);
		Long privateMemoTypeCid = privateCd.getCid();
		List<CaseMemo> privateCaseMemos = caseMemoRepository.findAllByCaseMasterTidAndMemoTypeCid(caseMasterTid, privateMemoTypeCid);

		// 4. 轉換為Memo對象
		List<Memo> publicMemos = publicCaseMemos.stream().map(Memo::new).collect(Collectors.toList());
		List<Memo> privateMemos = privateCaseMemos.stream().map(Memo::new).collect(Collectors.toList());

		// 5. 建立CaseMaster28Response並設置值
		CaseMaster28Response response = new CaseMaster28Response();
		response.setPublicMemos(publicMemos);
		response.setPrivateMemos(privateMemos);

		return response;
	}
	
	/**
	 * 29 案件備註-新增 異動
	 */
	@Override
	public void addOrModMemo(CaseMaster29Request req) {	    
		// 從請求中的其中一個列表獲取第一個備註的caseMasterTid
	    String caseMasterTid = null;
	    if (!req.getPrivateMemos().isEmpty()) {
	        caseMasterTid = req.getPrivateMemos().get(0).getCaseMasterTid();
	    } else if (req.getPublicMemos() != null && !req.getPublicMemos().isEmpty()) {
	        caseMasterTid = req.getPublicMemos().get(0).getCaseMasterTid();
	    } else {
	        throw new BadRequestException("請求必須包含至少一個備註");	
	    }
	    // 驗證caseMaster是否存在
	    CaseMaster caseMaster = VerifyInputs.checkCaseMaster(caseMasterRepository.findById(caseMasterTid).orElse(null));
	    checkCaseCanBeModify(FoiConstants.MEMO, caseMaster);

	    // 處理privateMemos
	    processMemos(req.getPrivateMemos(), FoiConstants.PRIVATE, caseMasterTid);

	    // 處理publicMemos
	    processMemos(req.getPublicMemos(), FoiConstants.PUBLIC, caseMasterTid);
	}

		private void processMemos(List<Memo> memos, String type, String caseMasterTid) {
		    CodeDetailDto cd = CodeDetailMap.get(FoiConstants.MEMO_TYPE, type);
		    Long memoTypeCid = cd.getCid();
	
		    for (Memo memo : memos) {
		        CaseMemo caseMemo = caseMemoRepository.findById(memo.getCaseMemoTid()).orElse(null);
		        if (caseMemo == null) {
		            caseMemo = new CaseMemo();
		            caseMemo.setId(UUID.randomUUID().toString()); // 設置新的UUID
		        } else {
		            caseMemo.setId(memo.getCaseMemoTid());
		        }
		        caseMemo.setCaseMasterTid(caseMasterTid);
		        caseMemo.setMemoTypeCid(memoTypeCid);
		        caseMemo.setMemoText(memo.getMemoText());
		        caseMemo.setSeqNo(memo.getSeqNo());
	
		        caseMemoRepository.save(caseMemo);
		    }
		}


	@Override
	public List<ReceiveAppl> findReceiveAppl(String caseMasterTid) {
		CaseMaster master = VerifyInputs.checkCaseMaster(caseMasterRepository.findById(caseMasterTid).orElse(null));
		
		List<ReceiveAppl> rtn = new ArrayList<>();
		for (CaseReceiveAppl entity : caseReceiveApplRepository.findAllByCaseMasterTid(caseMasterTid)) {				// 取得案關文號(case_receive_appl)
			ReceiveAppl receiveAppl = new ReceiveAppl(entity);
			
			CodeDetailDto receiveCode = CodeDetailMap.get(FoiConstants.CASE_FILE_TYPE, FoiConstants.RECEIVE);
			CodeDetailDto receivePrivateCode = CodeDetailMap.get(FoiConstants.CASE_FILE_TYPE, FoiConstants.RECEIVE_PRIVATE);
			List<CaseFileBoData> files = new ArrayList<>();
			files.addAll(caseFileServiceImpl.getListByCaseFileType(master.getCaseNo(), receiveCode.getCid()));			// 取得收文資料
			files.addAll(caseFileServiceImpl.getListByCaseFileType(master.getCaseNo(), receivePrivateCode.getCid()));	// 取得收文資料(承辦上傳)
			receiveAppl.setFiles(files);
			
			rtn.add(receiveAppl);
		}
	    return rtn;
	}

	@Override
	public void addOrModReceiveAppl(List<ReceiveAppl> req) {
		CaseMaster master = VerifyInputs.checkCaseMaster(caseMasterRepository.findById(req.get(0).getCaseMasterTid()).orElse(null));

		for (ReceiveAppl receiveAppl : req) {
			CaseReceiveAppl caseReceiveAppl = null;
			if (StringUtils.isEmptyOrNull(receiveAppl.getCaseReceiveApplTid())) {										// 新增
				caseReceiveAppl = new CaseReceiveAppl();
				caseReceiveAppl.setId(StringUtils.newUuidStr());
				caseReceiveAppl.setCaseMasterTid(master.getId());
			} else {																									// 更新
				caseReceiveAppl = VerifyInputs.checkCaseReceiveAppl(caseReceiveApplRepository.findById(receiveAppl.getCaseReceiveApplTid()).orElse(null));
			}
			caseReceiveAppl.setReceiveDate(receiveAppl.getReceiveDate());
			caseReceiveAppl.setReceiveNo(receiveAppl.getReceiveNo());
			caseReceiveAppl.setReceiveName(receiveAppl.getReceiveName());
			caseReceiveAppl.setSubject(receiveAppl.getSubject());
			caseReceiveAppl.setMemo(receiveAppl.getMemo());
			caseReceiveAppl.setIssueDate(receiveAppl.getIssueDate());
			caseReceiveAppl.setIssueNo(receiveAppl.getIssueNo());
			caseReceiveAppl.setIssueName(receiveAppl.getIssueName());
			caseReceiveAppl.setCreateJobCode(receiveAppl.getCaseReceiveApplTid());

			caseReceiveAppl = caseReceiveApplRepository.saveAndFlush(caseReceiveAppl);
			
			for (CaseFileBoData fileBo : receiveAppl.getFiles()) {
//				TODO : 檔案修改的時間點?
				CaseFile caseFile = caseFileRepository.findById(fileBo.getCaseFileTid()).orElse(new CaseFile());
				caseFile.setCaseFileTypeCid(fileBo.getCaseFileType().getCid());
				caseFile.setCaseNo(fileBo.getCaseNo());
				caseFile.setFromTableName(FoiConstants.CASE_RECEIVE_APPL);
				caseFile.setFromTableTid(receiveAppl.getCaseReceiveApplTid());
				caseFile.setSeqNo(fileBo.getSeqNo());
				caseFile.setSha2(fileBo.getSha2());
				caseFile.setSize(fileBo.getSize());
				caseFile.setToolLocalStorageId(fileBo.getToolLocalStorageId());
				caseFile.setUploadBy(SecurityUtils.getCurrentUsername());
				caseFile.setUploadTime(DateUtil.getSystemTime());
				caseFileRepository.save(caseFile);
			}
		}

	}

	@Override
	public CompanyResponse findCompanyResponse(String caseMasterTid) {
		CaseMaster master = VerifyInputs.checkCaseMaster(caseMasterRepository.findById(caseMasterTid).orElse(null));
		
		CompanyResponse rtn = new CompanyResponse(caseCompanyReplyRepository.findByCaseMasterTid(caseMasterTid));
		
		TreeSelected disputeKind = new TreeSelected(caseTreeRepository.findByCaseMasterTidAndNodeCid(caseMasterTid, master.getDisputeKindCid()));
		List<TreeSelectedDetail> nodeCids = new ArrayList<>();
		caseTreeSearchRepository.findAllByCaseTreeTidOrderByLevelAsc(disputeKind.getCaseTreeTid()).forEach(d -> nodeCids.add(new TreeSelectedDetail(d)));
		disputeKind.setNodeCids(nodeCids);																				// 爭議標籤
		disputeKind.setSelectedName(concatTagNamesByTreeSelectedDetailsLevelAsc(nodeCids));								// 爭議標籤全名
		rtn.setDisputeKind(disputeKind);
		
		List<TreeSelected> productItems = new ArrayList<>();
		CodeDetailDto ownerTypeCode = CodeDetailMap.get(FoiConstants.OWNER_TYPE, FoiConstants.COMPANY);
		for (CaseProductItem caseProductItem : caseProductItemRepository.findAllByCaseMasterTidAndOwnerTypeCid(caseMasterTid, ownerTypeCode.getCid())) {
			TreeSelected productItem = new TreeSelected(caseTreeRepository.findByCaseMasterTidAndNodeCid(caseMasterTid, caseProductItem.getItemKindCid()));
			List<TreeSelectedDetail> nodeCidss = new ArrayList<>();
			caseTreeSearchRepository.findAllByCaseTreeTidOrderByLevelAsc(productItem.getCaseTreeTid()).forEach(d -> nodeCids.add(new TreeSelectedDetail(d)));
			productItem.setNodeCids(nodeCidss);																			// 商品/服務標籤
			productItem.setSelectedName(concatTagNamesByTreeSelectedDetailsLevelAsc(nodeCidss));						// 商品/服務標籤全名
			
			productItems.add(productItem);
		}
		rtn.setProductItems(productItems);

		CodeDetailDto bandCode = CodeDetailMap.get(FoiConstants.BAND_CODE, FoiConstants.COMPANY_RESPONSE);				// 取得欄位資料
		rtn.setDynamicDatas(getDynamicData(caseMasterTid, bandCode.getCid()));
		
	    return rtn;
	}

	@Override
	public void addOrModCompanyResponse(CompanyResponse req) {
		CaseMaster master = VerifyInputs.checkCaseMaster(caseMasterRepository.findById(req.getCaseMasterTid()).orElse(null));
		checkCaseCanBeModify(FoiConstants.COMPANY_RESPONSE, master);
		
		CaseCompanyReply caseCompanyReply = null;
		if (StringUtils.isEmptyOrNull(req.getCaseCompanyReplyTid())) {													// 新增
			caseCompanyReply = new CaseCompanyReply();
			caseCompanyReply.setId(StringUtils.newUuidStr());
			caseCompanyReply.setCaseMasterTid(master.getId());
		} else {																										// 更新
			caseCompanyReply = VerifyInputs.checkCaseCompanyReply(caseCompanyReplyRepository.findById(req.getCaseCompanyReplyTid()).orElse(null));
		}
		caseCompanyReply.setReplyResultTypeCid(req.getReplyResultType().getCid());
		caseCompanyReply.setResultText(req.getResultText());
		caseCompanyReply.setReplayFlowCodeCid(req.getReplayFlowCode().getCid());
		caseCompanyReply.setDisputeKindCid(req.getDisputeKind().getSelectedCid());
		caseCompanyReply.setSalesChannel(req.getSalesChannel());
		caseCompanyReply.setSalesCompanyName(req.getSalesCompanyName());
		caseCompanyReply.setSalesName(req.getSalesName());
		caseCompanyReply = caseCompanyReplyRepository.saveAndFlush(caseCompanyReply);

		for (TreeSelected tag : req.getProductItems()) {
			CaseTree caseTree = caseTreeRepository.findById(tag.getCaseTreeTid()).orElse(new CaseTree());
			caseTree.setCaseMasterTid(master.getId());
			caseTree.setTreeName(tag.getSelectedName());
			caseTree.setNodeCid(tag.getSelectedCid());
			caseTreeRepository.save(caseTree);
			
			for (TreeSelectedDetail tagDetail : tag.getNodeCids()) {			// TODO : 資料刪除問題
				CaseTreeSearch caseTreeDetail = caseTreeSearchRepository.findById(CaseTreeSearchId.builder()
						.caseTreeTid(tag.getCaseTreeTid())
						.nodeCid(tagDetail.getNodeCid())
						.build()).orElse(new CaseTreeSearch());
				caseTreeDetail.setCaseMasterTid(master.getId());
				caseTreeDetail.setTreeName(tagDetail.getNodeName());
				caseTreeDetail.setLevel(tagDetail.getLevel());
				caseTreeSearchRepository.save(caseTreeDetail);
			}
		}
																														// 更新欄位資料
		updateDynamicData(new ShowCodeBo(master.getCaseTypeCid()), master.getId(), FoiConstants.COMPANY_RESPONSE, req.getDynamicDatas());
	}

	@Override
	public List<ReceiveOther> findReceiveOther1(String caseMasterTid) {
		VerifyInputs.checkCaseMaster(caseMasterRepository.findById(caseMasterTid).orElse(null));

		List<ReceiveOther> rtn = new ArrayList<>();
		CodeDetailDto refOtherCode = CodeDetailMap.get(FoiConstants.REF_OTHER, "1");
		for (CaseReceiveOther entity : caseReceiveOtherRepository.findAllByCaseMasterTidAndRefOtherCid(caseMasterTid, refOtherCode.getCid())) {
			rtn.add(new ReceiveOther(entity));
		}
	    return rtn;
	}

	@Override
	public void addOrModReceiveOther1(List<ReceiveOther> req) {
		VerifyInputs.checkCaseMaster(caseMasterRepository.findById(req.get(0).getCaseMasterTid()).orElse(null));
		List<CaseReceiveOther> modList = new ArrayList<>();
		List<CaseReceiveOther> deleteList = new ArrayList<>();
		for (ReceiveOther receiveOther : req) {
			if (FoiConstants.DELETE.equals(receiveOther.getCaseMasterTid())) {
				deleteList.add(VerifyInputs.checkCaseReceiveOther(caseReceiveOtherRepository.findById(receiveOther.getCaseReceiveOtherTid()).orElse(null)));
				modifyLog.newDeleteRecord(receiveOther.getCaseReceiveOtherTid(), FoiConstants.CASE_RECEIVE_OTHER);
				continue;
			}

			CaseReceiveOther caseReceiveOther = caseReceiveOtherRepository.findById(receiveOther.getCaseReceiveOtherTid()).orElse(new CaseReceiveOther());
			caseReceiveOther.setCaseMasterTid(receiveOther.getCaseMasterTid());

			CodeDetailDto refOtherCode = CodeDetailMap.get(FoiConstants.REF_OTHER, "1");
			caseReceiveOther.setRefOtherCid(refOtherCode.getCid());
			caseReceiveOther.setReceiveNo(caseReceiveOther.getReceiveNo());
			caseReceiveOther.setReceiveDate(caseReceiveOther.getReceiveDate());
			caseReceiveOther.setReceiveName(caseReceiveOther.getReceiveName());
			caseReceiveOther.setIssueNo(caseReceiveOther.getIssueNo());
			caseReceiveOther.setIssueDate(caseReceiveOther.getIssueDate());
			caseReceiveOther.setMeetDate(caseReceiveOther.getMeetDate());
			caseReceiveOther.setRemark1(caseReceiveOther.getRemark1());
			modList.add(caseReceiveOther);
		}

		caseReceiveOtherRepository.saveAll(modList);
		caseReceiveOtherRepository.deleteAll(deleteList);
	}

	@Override
	public List<ReceiveOther> findReceiveOther2(String caseMasterTid) {
		VerifyInputs.checkCaseMaster(caseMasterRepository.findById(caseMasterTid).orElse(null));

		List<ReceiveOther> rtn = new ArrayList<>();
		CodeDetailDto refOtherCode = CodeDetailMap.get(FoiConstants.REF_OTHER, "2");
		for (CaseReceiveOther entity : caseReceiveOtherRepository.findAllByCaseMasterTidAndRefOtherCid(caseMasterTid, refOtherCode.getCid())) {
			rtn.add(new ReceiveOther(entity));
		}
	    return rtn;
	}
	
	@Override
	public void addOrModReceiveOther2(ReceiveOther req) {
		VerifyInputs.checkCaseMaster(caseMasterRepository.findById(req.getCaseMasterTid()).orElse(null));

		CaseReceiveOther caseReceiveOther = caseReceiveOtherRepository.findById(req.getCaseReceiveOtherTid()).orElse(new CaseReceiveOther());
		CodeDetailDto receiveOtherCode = CodeDetailMap.get(FoiConstants.WEB090101, FoiConstants.RECEIVE_OTHER1);
		if (!caseReceiveOther.getDocActionCode().equals(receiveOtherCode.getCode())) {									// doc_action_code為receiveOther.property1時才能異動
			throw new BadRequestException("動作類型非「法院回覆結果」，不可異動");
		}
		caseReceiveOther.setCaseMasterTid(req.getCaseMasterTid());
		caseReceiveOther.setRemark1(req.getRemark1());
		caseReceiveOther.setRemark2(req.getRemark2());
		caseReceiveOtherRepository.save(caseReceiveOther);
	}

	@Override
	public void examinerNotification(CaseManager51Request req) {
		// CaseMaster caseMaster = VerifyInputs.checkCaseMaster(caseMasterRepository.findById(req.getCaseMasterTid()).orElse(null));

		// List<CaseExaminer> examinerList = new ArrayList<>();
		// if (req.getCaseExaminerTids().isEmpty()) {
		// 	examinerList = caseExaminerRepository.findAllByCaseMasterTid(req.getCaseMasterTid());
		// } else {
		// 	examinerList = caseExaminerRepository.findAllById(req.getCaseExaminerTids());
		// }

		// caseUtilsService.getEmailContent(null, req.getCaseMasterTid(), null, null);

		// notification.sendNotification(null);
	}

	@Override
	public void examinerDownloadNotice() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void examinerUnlock(CaseManager53Request req) {
		CaseExaminer examiner = VerifyInputs.checkCaseExaminer(caseExaminerRepository.findById(req.getCaseExaminerTid()).orElse(null));
		switch (req.getCleanType()) {
		case "clean":  // 清空後解鎖
			examiner.setResultCaseSuggestionBookTid(null);
			examiner.setResultDesc(null);
			examiner.setReasonCaseSuggestionBookTid(null);
			examiner.setReasionDesc(null);

			List<CaseFile> examinerFiles = caseFileRepository.findAllByFromTableNameAndFromTableTid(FoiConstants.CASE_EXAMINER, req.getCaseExaminerTid());
			examinerFiles.forEach(f -> modifyLog.newDeleteRecord(f.getId(), FoiConstants.CASE_FILE));
			caseFileRepository.deleteAll(examinerFiles);																// 移除委員檔案
		case "unlock":  // 解鎖
			CodeDetailDto examStatusCode = CodeDetailMap.get(FoiConstants.EXAM_STATUS, FoiConstants.N);					// 預審狀態: 待審查
			examiner.setExamStatusCid(examStatusCode.getCid());
			examiner.setPrintDate(null);
			examiner.setReplayDate(null);
			break;
		default:
			throw new BadRequestException("錯誤的清除/解鎖參數");
		}
		caseExaminerRepository.save(examiner);
	}

	@Override
	public void copyMediateContactTo(CaseManager54Request req) {
																														  		// 確認來源調處聯絡紀錄存在
		CaseMediateContact caseMediateContact = VerifyInputs.checkCaseMediateContact(caseMediateContactRepository.findById(req.getCaseMediateContactTid()).orElse(null));
		
		for (String mediateTid : req.getMediateTids()) {
			CaseMediate entity = VerifyInputs.checkCaseMediate(caseMediateRepository.findById(mediateTid).orElse(null));  		// 確認複製標的調處紀錄存在
			
			CaseMaster master = VerifyInputs.checkCaseMaster(caseMasterRepository.findById(entity.getCaseMasterTid()).orElse(null));
			checkCaseCanBeModify(FoiConstants.MEDIATE, master);														  	  		// 確認複製標的可被異動

			caseMediateContact.setId(StringUtils.newUuidStr());
			caseMediateContact.setCaseMediateTid(mediateTid);
			caseMediateContact.setCreateBy(SecurityUtils.getCurrentUsername());
			caseMediateContact.setCreateTime(DateUtil.getSystemTime());
			
			caseMediateContactRepository.saveAndFlush(caseMediateContact);														// 複製調處紀錄

			CodeDetailDto mediateCode = CodeDetailMap.get(FoiConstants.CASE_FILE_TYPE, FoiConstants.MEDIATE);					// 取得調處人員檔案
			List<CaseFile> files = caseFileRepository.findByCaseNoAndCaseFileTypeCid(master.getCaseNo(), mediateCode.getCid());
			for (CaseFile copiedFile : files) {
				copiedFile.setId(StringUtils.newUuidStr());
				copiedFile.setCaseNo(master.getId());
				copiedFile.setFromTableTid(mediateTid);
				copiedFile.setUploadTime(DateUtil.getSystemTime());
			}
			caseFileRepository.saveAllAndFlush(files);																			// 複製調處人員上傳檔案
		}
	}
	
	/*
	 * CaseManager91	取得案件區塊及欄位設定
	 */
	@Override
	public CaseManager91Response getBandAndColumnInfo(String caseMasterTid, Long caseTypeCid) {	
	    CaseManager91Response response = new CaseManager91Response();

	    // 1. 若caseMaster = new，創建一個新的ID，並設置 Info
	    Info info;
	    if (caseMasterTid.equals(FoiConstants.NEW)) {
	        String newId = UUID.randomUUID().toString();
	        info = setNewInfo(newId, caseTypeCid);
	    }
	    // 2. 若caseMaster不存在，拋出異常。
	    else {
		    CaseMaster caseMaster = VerifyInputs.checkCaseMaster(caseMasterRepository.findById(caseMasterTid).orElse(null));
		    caseTypeCid = caseMaster.getCaseTypeCid();
	        info = setInfo(caseMaster, caseMasterTid);
	    }
	    
	    // 3. 設置bands資訊
	    List<Band> bands = setBands(caseTypeCid, info.getViewType()); 
	    
	    response.setInfo(info);
	    response.setBands(bands);

	    return response;
	}
	// 為新的ID設置Info資訊
	private Info setNewInfo(String newId, Long caseTypeCid) {	// cid = 1643
		
	    // 根據 caseTypeCid 獲取 Codedetail 資訊，設置到Info.caseType(shodCodeBo)中
	    CodeDetailDto cdFromCaseTypeCid = CodeDetailMap.get(caseTypeCid);
	    String currentOpUser = substituteServiceImpl.getCurrentOpUser();
	    	// 檢查 null: caseTypeCid、getCurrentOpUser 
	    if (cdFromCaseTypeCid == null) 	{ throw new IllegalArgumentException("caseTypeCid未找到對應的CodeDetail"); }
	    if (currentOpUser == null) 		{ throw new IllegalStateException("當前操作用戶不能為null"); }
	    
	    ShowCodeBo showCodeBo = new ShowCodeBo(cdFromCaseTypeCid.getCid(), cdFromCaseTypeCid.getCode(), cdFromCaseTypeCid.getName());
	    
	    Info info = new Info();
	    info.setCaseMasterTid(newId);						// TODO change to null:sql server built in UUID
	    info.setViewType(FoiConstants.UPDATE_BY_OWNER); // 當新建ID時，viewType為updateByOwner
	    info.setCaseType(showCodeBo);
	    info.setIsClose(false);
	    info.setCenterOwnerAccount(substituteServiceImpl.getCurrentOpUser()); 	
        info.setFlow(null); 								

	    return info;
	}
	// 為已存在的caseMaster設置Info資訊
	private Info setInfo(CaseMaster caseMaster, String caseMasterTid) {
	    // 根據 caseTypeCid 獲取 Codedetail 資訊，設置到Info.caseType(shodCodeBo)中
        Codedetail cdFromCaseTypeCid = codedetailRepository.findByCid(caseMaster.getCaseTypeCid());
        ShowCodeBo showCodeBo = new ShowCodeBo(cdFromCaseTypeCid.getCid(), cdFromCaseTypeCid.getCode(), cdFromCaseTypeCid.getName());
        
        String latestCaseFlowTid = VerifyInputs.isStringNull(caseMaster.getLatestCaseFlowTid(), "latest Case Flow Tid 是空值"); //getTid
        CaseFlow caseFlow = caseFlowRepository.findById(latestCaseFlowTid) 		// TODO move to caseflow; use redis in the future
        	    .orElseThrow(() -> new NoSuchElementException(String.format(FoiConstants.CAN_NOT_FOUND_ID, FoiConstants.LATEST_CASE_FLOW_TID, FoiConstants.CASE_FLOW)));
		// 根據 case master 的資料來取得相關資料，然後填入 response 物件
        Info info = new Info();
        info.setCaseMasterTid(caseMaster.getId());
        info.setViewType(getViewType(caseMaster));
        info.setCaseType(showCodeBo); // 將 ShowCodeBo 物件設置為 caseType
        info.setIsClose(caseMaster.getIsClose());
        info.setCenterOwnerAccount(caseMaster.getCenterOwnerAccount());
		info.setFlow(caseFlowServiceImpl.caseFlowToQueryData(caseFlow)); 		// change caseFlowOptional to QueryData
        return info;
	}

	// 設置bands資訊
	private List<Band> setBands(Long caseTypeCid, String viewType) {
	    List<Band> bands = new ArrayList<>();
	    String caseType = CodeDetailMap.get(caseTypeCid).getCode();
	    List<ChildKindListDto> bandCodes = codedetailRepository.execChildKindList(FoiConstants.CASE_TYPE, caseType, FoiConstants.CASETYPEBAND); //SQL 2.1 
	    
	    for (ChildKindListDto bandCode : bandCodes) {
	        Band band = new Band();
	        band.setBandCode(bandCode.getProperty1());		// annotation, users, base...
	        band.setBandName(bandCode.getName()); 			// 公文件-人名資料...
	        band.setViewType(viewType);
	        band.setAdjustColumns(getDynamicColumn(bandCode.getCode()));
	        
	        bands.add(band);
	    }

	    return bands;
	}
	
	



	/* -------------------------------------------- 內部函式 -------------------------------------------- */
	
	/**
	 * 取得版面區塊動態欄位配置(輸入區塊，輸出有哪些欄位）
	 */
	public List<DynamicColumn> getDynamicColumn(String caseTypeAndBandCode) { 	// 不需要單獨 caseType
	    // 1. 從 repository 中取得資料，並回傳 ChildKindListDto 類型的列表
	    List<ChildKindListDto> childKindListDtos = codedetailRepository.execChildKindList(FoiConstants.CASETYPEBAND, caseTypeAndBandCode, FoiConstants.COLUMN_ADJUST);	//C01001-base

	    // 2. 將 SQL2.2 的資料轉換成 dynamicColumn 的6個欄位(使用 Java 8 的 Stream API 進行資料轉換和組裝，增加程式碼的可讀性和效能)
	    return childKindListDtos.stream()
	        .map(childKindListDto -> {
	            DynamicColumn dynamicColumn = new DynamicColumn();
	            // 從 ChildKindListDto 中提取需要的資料，並設定到 DynamicColumn 中
	            dynamicColumn.setColumnCode(childKindListDto.getCode()); 													// 設定 欄位代碼
	            dynamicColumn.setColumnName(childKindListDto.getName()); 													// 設定 欄位名稱
	            dynamicColumn.setAction(childKindListDto.getOption1()); 													// 設定 處理方式
	            dynamicColumn.setActionArgument(FoiConstants.ADD.equalsIgnoreCase(childKindListDto.getOption1()) 			// getOption1 = Action = "add"
	                    ? childKindListDto.getProperty2() : childKindListDto.getOption2());

	            // 當 abOption2 或 abOption3 為 null 時，預設值為 "1"
	            dynamicColumn.setWidth(getIntegerValueOrDefault(childKindListDto.getProperty3(), 1)); 	// 設定 欄位寬度
	            dynamicColumn.setHeight(getIntegerValueOrDefault(childKindListDto.getProperty4(), 1)); 	// 設定 欄位高度
		            
	            return dynamicColumn;
	        })
	        .collect(Collectors.toList()); // 將 Stream 轉換為 List
	}


	/*
	 * 取得區塊動態欄位資料（輸入欄位，輸出裡頭的資料）
	 */	
	public List<DynamicData> getDynamicData(String caseMasterTid, Long bandCodeCid) {	// tid = caseMasterTid = fromTableTid
		// 1. 從 FromTableTid 和 BandCodeCid 取得 CASE_DYNAMIC_COLUMNs 的資料
		// 1.1 將 CaseDynamicColumn 列表轉換為 Stream 進行處理。
	    List<CaseDynamicColumn> caseDynamicColumns = caseDynamicColumnRepository.findByFromTableTidAndBandCodeCid(caseMasterTid, bandCodeCid); 
	    Stream<CaseDynamicColumn> caseDynamicColumnStream = caseDynamicColumns.stream(); 

	    // 2. 轉換取得的 CaseDynamicColumn 資料為 DynamicData 對象(2個欄位)
	    Stream<DynamicData> dynamicDataStream = caseDynamicColumnStream.map(caseDynamicColumn -> { 	// 運用 map 對每個元素進行處理
	        CodeDetailDto codedetail = CodeDetailMap.get(caseDynamicColumn.getColumnAdjustCid()); 	// 從 Map 中取得對應的 CodeDetailDto
	        VerifyInputs.checkCodeDetailDto(codedetail);											// 不為 null
	        
	        // 創建 DynamicData 物件並設定相應的屬性
	        return DynamicData.builder() 						
	            .columnCode(codedetail.getProperty1()) 												// TODO 欄位（物件）代碼 = property1?
	            .value(caseDynamicColumn.getValue()) 
	            .build();
	    });

	    // 3. 將新的 Stream 收集成列表並返回。
	    return dynamicDataStream.collect(Collectors.toList()); 										// 收集 Stream 成為 List
	}


	
	/*
	 * 異動區塊動態欄位資料
	 */
	public List<CaseDynamicColumn> updateDynamicData(ShowCodeBo caseType, String caseMasterTid, String bandCode, List<DynamicData> datas) {
	    List<CaseDynamicColumn> updatedRecords = new ArrayList<>();

	    List<ChildKindListDto> childKindList = codedetailRepository.execChildKindList("caseType.band", caseType.getCode() + '-' + bandCode, "column_adjust");
	    for (DynamicData data : datas) { 
	    	// 1. 驗證傳入的 bandCode 和 columnCode 是否有效
	        isValidBandAndColumn(childKindList, data.getColumnCode(), bandCode);
	        
	        // 1.1 透過 columnCode 從 childKindList 找到 codeName
	        ChildKindListDto matchingChildKindDto = childKindList.stream()
                .filter(child -> child.getCode().equals(data.getColumnCode()))
                .findFirst()
                .orElseThrow(() -> new IllegalArgumentException(String.format(FoiConstants.ILLEGAL_ARGUMENT, data.getColumnCode(), FoiConstants.CHILD_KIND_LIST_DTO)));
	        
	        // 1.2 檢查填入資料的長度	// childKindList.getName() or data.getColumnCode() 二選一
            checkDataLength(data.getValue(), matchingChildKindDto.getName());
	            
		    // 2. update 或 insert 動態資料，並將返回的實例添加到 updateRecords 中
            CaseDynamicColumn updatedRecord = updateOrInsertDynamicData(caseMasterTid, bandCode, data);
            updatedRecords.add(updatedRecord); 	
	    }
	    // 3. 一次性保存所有的記錄
	    caseDynamicColumnRepository.saveAll(updatedRecords);
	    // 4. 回傳更新的 caseDynamicColumns(updatedRecords)
	    return updatedRecords;
	}

    /*
     * 取得案件檢視模式
     */
    public String getViewType(CaseMaster caseMaster) {
        String viewType = FoiConstants.READONLY;  // Default View Type
        String operatorAccount = substituteServiceImpl.getCurrentOpUser();

        // TODO 唯讀 :(A)caseMaster.isClose=true (B)	caseFlow中有flowCode="99999"資料。
        Codedetail caseflowcode = caseManagerRepository.isCaseClose(caseMaster.getCaseNo());
        if (Boolean.TRUE.equals(caseMaster.getIsClose()) || caseflowcode != null) { // TODO caseFlowCode有找到資料=已結案
            return viewType;
        }
        // 承辦人:(A) 操作帳號(含代理)=caseMaster.centerOwnerAccount (B)新增資料(找不到caseMaster)
        if (operatorAccount.equals(caseMaster.getCenterOwnerAccount()) || caseMaster.getId() == null || "new".equals(caseMaster.getId())) { // 物件是null casemaster=null
            return FoiConstants.UPDATE_BY_OWNER;
        }
        // 承辦人之主管
        if (isManager(operatorAccount, caseMaster.getCenterOwnerAccount())) {
            return FoiConstants.UPDATE_BY_MANAGER;
        }
        // 承辦單位
        if (isMember(operatorAccount, caseMaster.getCenterOwnerAccount())) {
            return FoiConstants.UPDATE_BY_MEMBER;
        }
        // 承辦業者
        if (operatorAccount.equals(caseMaster.getCompanyOwnerAccount())) {
            return FoiConstants.UPDATE_BY_COMPANY_OWNER;
        }

        return viewType;
    }

    /*
     * 案件資料能否被異動
     * codedetailmap codedetail TODO 
     */
    public boolean canBeChange(String bandCode, CaseMaster caseMaster) {
        String caseViewType = this.getViewType(caseMaster);										// 取得案件的視圖類型

        // 1. 如果 viewType 是唯讀，則該案件不能被更改
        if (FoiConstants.READONLY.equalsIgnoreCase(caseViewType)) {
            return false;
        }
        
        // 2. 根據案件類型ID查詢詳細的案件類型資料 
        Optional<Codedetail> optionalCaseDetail = codedetailRepository.findById(caseMaster.getCaseTypeCid()); // TODO change to findByCid, then we dont need optional

        String codeDetailCode;
        if (optionalCaseDetail.isPresent()) {
            Codedetail caseDetail = optionalCaseDetail.get();
            codeDetailCode = String.format("%s-%s",caseDetail.getCode(),bandCode);				// 根據案件類型資料和bandCode創建code
        } else {
        	return false;																		// 如果找不到對應的案件類型資料，則該案件不能被更改
        }

        // 3. 根據"caseType.Band"和codeDetailCode查詢詳細的CodeDetail資料					
        Codedetail codeDetail = codedetailRepository.findByKindAndCode(FoiConstants.CASETYPEBAND, codeDetailCode);

        if (codeDetail == null) {
            return false; 																		// 如果找不到對應的CodeDetail資料，則該案件不能被更改
        }
  
        String allowedViewTypeList = codeDetail.getProperty2();   								// 取得CodeDetail資料的property2，這裡包含了允許更新案件的視圖類型列表
        List<String> validViewTypes = Arrays.asList(allowedViewTypeList.split("\\s*,\\s*")); 	// 分割允許更新案件的視圖類型列表成為一個字串陣列

        // 4. 如果 viewType 列表包含當前的案件 viewType ，則該案件可以被更改
        return validViewTypes.contains(caseViewType);
    }
    
    public Suggestion createSuggestion(CaseMaster caseMaster) {
    	
    	
    	
    	return null;
    }

    /* -------------------------------------------- helper function -------------------------------------------- */
    
	private int calculateAge(Timestamp birthDate) {
	    LocalDate birth =TypeUtils.timestampToLocalDate(birthDate);
	    return Period.between(birth, LocalDate.now()).getYears();
	}
	
    private CaseDynamicColumn updateOrInsertDynamicData(String caseMasterTid, String bandCode, DynamicData data) {
    	// 從codedetail資料表中獲取對應的bandCodeCid和columnAdjustCid
    	Long bandCodeCid = codedetailRepository.findCidByKindAndCode(FoiConstants.BAND_CODE, data.getColumnCode());
    	Long columnAdjustCid = codedetailRepository.findCidByKindAndCode(FoiConstants.COLUMN_ADJUST, data.getColumnCode()); // property1 = 'dynamic'
    	
    	// 根據bandCodeCid和columnAdjustCid檢查該數據是否已存在
    	CaseDynamicColumn dynamicColumnRecord = caseDynamicColumnRepository.findByBandCodeCidAndColumnAdjustCid(bandCodeCid, columnAdjustCid);
    	
    	// 若數據不存在，則創建新的對象
    	if (dynamicColumnRecord == null) {
    		dynamicColumnRecord = new CaseDynamicColumn();
    		dynamicColumnRecord.setCreateBy(SecurityUtils.getCurrentUsername());
    		dynamicColumnRecord.setCreateTime(Timestamp.valueOf(LocalDateTime.now()));
    		dynamicColumnRecord.setBandCodeCid(bandCodeCid);
    		dynamicColumnRecord.setColumnAdjustCid(columnAdjustCid);
    		dynamicColumnRecord.setFromTableName(FoiConstants.CASE_MASTER);
    		dynamicColumnRecord.setFromTableTid(caseMasterTid);
    	}
    	
    	// 插入或更新資料
    	dynamicColumnRecord.setValue(data.getValue());
    	dynamicColumnRecord.setUpdateBy(SecurityUtils.getCurrentUsername());
    	dynamicColumnRecord.setUpdateTime(Timestamp.valueOf(LocalDateTime.now()));
    	
    	// 保存到數據庫中
    	return dynamicColumnRecord;
    }
    
    private void isValidBandAndColumn(List<ChildKindListDto> childKindList, String columnCode, String bandCode) throws IllegalArgumentException {
    	for (ChildKindListDto childKind:childKindList) {
    		if (childKind.getCode().equals(columnCode)) {
    			return;
    		}
    	}
    	throw new IllegalArgumentException(String.format("動態欄位資訊異常(band_code:%s,column_code:%s)，請通知系統管理人處理。", bandCode, columnCode));
    }
    
    private void checkDataLength(String content, String columnCode) {
    	if (content.length() > 255) {
    		throw new IllegalArgumentException(String.format("%s欄位最長僅可輸入255。(現在長度為%d)", columnCode, content.length()));
    	}
    }
    
    private boolean isManager(String operatorAccount, String centerOwnerAccount) {
    	List<CodeDetailDto> managerUsers = commServiceImpl.getManagerUser();
    	if (managerUsers.isEmpty()) { // 操作者不是主管 >> false
    		return false;
    	}
    	// 把centerOwnerAccount 轉為 dept_id
    	Long centerOwnerDeptId = deptRepository.getDeptIdFromAccount(centerOwnerAccount); // 內網
    	Long operatorDeptId = deptRepository.getDeptIdFromAccount(operatorAccount);
    	
    	return deptServiceImpl.isManagerOrAbove(operatorDeptId, centerOwnerDeptId);	// 操作者比承辦人高階或相等
    }
    
    private boolean isMember(String operatorAccount, String centerOwnerAccount) {
    	Long centerOwnerDeptId = deptRepository.getDeptIdFromAccount(centerOwnerAccount);
    	Long operatorDeptId = deptRepository.getDeptIdFromAccount(operatorAccount);
    	
        return deptServiceImpl.isMember(centerOwnerDeptId, operatorDeptId);			// 操作者是承辦人的主管的所有下屬其中之一 
    }
    
//  用樹節點代碼資訊組合完整標籤名稱
    private String concatTagNamesByTreeSelectedDetailsLevelAsc(List<TreeSelectedDetail> nodeCids) {
    	StringBuilder sb = new StringBuilder();
    	for (TreeSelectedDetail node : nodeCids) {
    		sb.append(node.getNodeName()).append('.');
    	}
    	return sb.length() > 0 ? sb.substring(0, sb.length() - 1) : "";
    }
    
 // 確認案件區塊是否能被異動
    private void checkCaseCanBeModify(String bandCode, CaseMaster master) {
    	if (!canBeChange(bandCode, master)) {
			throw new BadRequestException(String.format(FoiConstants.CASE_CANNOT_BE_MOD, master.getCaseNo(), bandCode));
		}
    }
    
//  案件標籤List<TreeSelectedDetail>的大小等同樹的最末層數
    private Integer getTreeHeight(List<TreeSelectedDetail> tree) {
    	return tree.size();
    }
    
//  案件標籤(case_tree)、搜尋樹(case_tree#)新增/更新處理
    private void createOrModCaseTree(List<TreeSelected> tags, String caseMasterTid) {
//		1.案件標籤(case_tree)處理
//		  1.1.新增: caseTreeTid為空
//    	  1.2.刪除: caseMasterTid為"delete"字串
//    	    1.2.1.新增一筆DeleteLog
//    		1.2.2.刪除對應的搜尋樹
//    		1.2.3.刪除該筆caseTree
//		  1.3.更新: caseTreeTid、caseMasterTid皆有值
//		2.案件標籤搜尋樹(case_tree#)處理
//		  2.1.刪除現有搜尋樹節點
//		  2.2.新增搜尋樹節點

    	for (TreeSelected tag : tags) {
    		CaseTree caseTree = caseTreeRepository.findById(tag.getCaseTreeTid()).orElse(null);
    		if (caseTree == null) {
//				1.1
    			caseTree = new CaseTree();
    			
    			caseTree.setId(StringUtils.newUuidStr());
    			caseTree.setCaseMasterTid(caseMasterTid);
    			
    			for (TreeSelectedDetail tagDetail : tag.getNodeCids()) {
    				if (tagDetail.getLevel().equals(getTreeHeight(tag.getNodeCids()))) {
    					caseTree.setNodeCid(tagDetail.getNodeCid());
    				}
    			}
    			caseTree.setTreeName(FoiConstants.TAG_TREE);
    			caseTree.setCreateBy(SecurityUtils.getCurrentUsername());
    			caseTree.setCreateTime(DateUtil.getSystemTime());
    			caseTree.setUpdateBy(null);
    			caseTree.setUpdateTime(null);
    		} else if (FoiConstants.DELETE.equals(caseMasterTid)) {
//    			1.2.1
    			modifyLog.newDeleteRecord(caseTree.getId(), FoiConstants.CASE_TREE);									// 業務資料刪除紀錄(case_tree)
//    			1.2.2
    			caseTreeSearchRepository.deleteAll(caseTreeSearchRepository.findAllByCaseTreeTidOrderByLevelAsc(caseTree.getId()));
//    			1.2.3
    			caseTreeRepository.delete(caseTree);
    			
    			continue;
    		} else {
//				1.3				
    			for (TreeSelectedDetail tagDetail : tag.getNodeCids()) {
    				if (tagDetail.getLevel().equals(getTreeHeight(tag.getNodeCids()))) {
    					caseTree.setNodeCid(tagDetail.getNodeCid());				
    				}
    			}
    			caseTree.setUpdateBy(SecurityUtils.getCurrentUsername());
    			caseTree.setUpdateTime(DateUtil.getSystemTime());
    		}
    		caseTree = caseTreeRepository.saveAndFlush(caseTree);
    		tag.setCaseTreeTid(caseTree.getId());
    		
//			2.1
    		caseTreeSearchRepository.deleteAll(caseTreeSearchRepository.findAllByCaseTreeTidOrderByLevelAsc(caseTree.getId()));
//			2.2
    		for (TreeSelectedDetail tagDetail : tag.getNodeCids()) {
    			CaseTreeSearch newNode = new CaseTreeSearch();
    			newNode.setCaseTreeTid(caseTree.getId());
    			newNode.setCaseMasterTid(caseMasterTid);
    			newNode.setNodeCid(tagDetail.getNodeCid());
    			newNode.setTreeName(FoiConstants.TAG_TREE);
    			newNode.setLevel(tagDetail.getLevel());
    			
    			caseTreeSearchRepository.saveAndFlush(newNode);
    		}
    	}
    }

//  公文件擴充檔處理
	private CaseDocExt createOrModCaseDocExt(CaseMaster master, CaseManager05Request req) {
		CaseDocExt docExt = caseDocExtRepository.findByCaseMasterTid(master.getId());
		if (docExt == null) {																							// 新增
			docExt = new CaseDocExt();
			
			docExt.setId(StringUtils.newUuidStr());	
			docExt.setCreateBy(SecurityUtils.getCurrentUsername());
			docExt.setCreateTime(DateUtil.getSystemTime());
			docExt.setUpdateBy(null);
			docExt.setUpdateTime(null);
		} else { 																										// 更新
			docExt.setUpdateBy(SecurityUtils.getCurrentUsername());
			docExt.setUpdateTime(DateUtil.getSystemTime());
		}
		docExt.setCaseMasterTid(master.getId());
		docExt.setSubject(req.getSubject());
		docExt.setReceiveName(req.getReceiveName());
		docExt.setDocNo(req.getDocExtInfo().getDocYear());
		docExt.setDocWord(req.getDocExtInfo().getDocWord());
		docExt.setDocNo(req.getDocExtInfo().getDocNo());
		
		docExt.setCommunicationClassCid(VerifyInputs.checkCode(FoiConstants.COMMUNICATION_CLASS, 
											CodeDetailMap.get(req.getDocExtInfo().getCommunicationClass().getCid())).getCid());
		docExt.setIdentifyTypeCid(VerifyInputs.checkCode(FoiConstants.IDENTIFY_TYPE, 
											CodeDetailMap.get(req.getDocExtInfo().getIdentifyType().getCid())).getCid());
		docExt.setReviewSignDate(req.getDocExtInfo().getReviewSignDate());
		docExt.setAgreeStopDate(req.getDocExtInfo().getAgreeStopDate());
		docExt.setIsSpecialExtent(req.getDocExtInfo().getIsSpecialExtent());
		docExt.setIssueSignDate(req.getDocExtInfo().getIssueSignDate());
		docExt.setIssueSignKindCid(VerifyInputs.checkCode(FoiConstants.ISSUE_SIGN_KIND, 
											CodeDetailMap.get(req.getDocExtInfo().getIssueSignKind().getCid())).getCid());
		docExt.setIssueCancelDate(req.getDocExtInfo().getIssueCancelDate());
		docExt.setIssueReceiveNo(req.getDocExtInfo().getIssueReceiveNo());
		
		return caseDocExtRepository.saveAndFlush(docExt);
	}
	
//	電話件擴充檔處理
	private CaseTelExt createOrModCaseTelExt(CaseMaster master, CaseManager05Request req) {
		CaseTelExt telExt = caseTelExtRepository.findByCaseMasterTid(master.getId());
		if (telExt == null) {
			telExt = new CaseTelExt();

			telExt.setId(StringUtils.newUuidStr());
			telExt.setCreateBy(SecurityUtils.getCurrentUsername());
			telExt.setCreateTime(DateUtil.getSystemTime());
			telExt.setUpdateBy(null);
			telExt.setUpdateTime(null);
		} else {			
			telExt.setUpdateBy(SecurityUtils.getCurrentUsername());
			telExt.setUpdateTime(DateUtil.getSystemTime());
		}
        telExt.setCaseMasterTid(req.getCaseMasterTid());
        telExt.setAppealTypeCid(VerifyInputs.checkCode(FoiConstants.TEL_TYPE, 
										CodeDetailMap.get(req.getTelExtInfo().getAppealType().getCid())).getCid());
        telExt.setAppealClassCid(VerifyInputs.checkCode(FoiConstants.TEL_TYPE, 
										CodeDetailMap.get(req.getTelExtInfo().getAppealClass().getCid())).getCid());
        telExt.setIsCheck1321(req.getTelExtInfo().getIsCheck132_1());
        telExt.setIsCheck1322(req.getTelExtInfo().getIsCheck132_2());
        telExt.setIsCheck1323(req.getTelExtInfo().getIsCheck132_3());
        telExt.setIsCheck1324(req.getTelExtInfo().getIsCheck132_4());
        telExt.setIsCheck1325(req.getTelExtInfo().getIsCheck132_5());
        
        return caseTelExtRepository.saveAndFlush(telExt);
	}
	
//	臨櫃件擴充檔處理
	private CaseDeskExt createOrModCaseDeskExt(CaseMaster master, CaseManager05Request req) {
		CaseDeskExt deskExt = caseDeskExtRepository.findByCaseMasterTid(master.getId());
		if (deskExt == null) {
			deskExt = new CaseDeskExt();
			
			deskExt.setId(StringUtils.newUuidStr());
	        deskExt.setCaseMasterTid(req.getCaseMasterTid());
		}
		deskExt.setEndTime(req.getDeskExtInfo().getEndTime());
		deskExt.setIsAttachIdCopy(req.getDeskExtInfo().getIsAttachIdCopy());
		deskExt.setIsAttactAgentPaper(req.getDeskExtInfo().getIsAttactAgentPaper());
		deskExt.setIsAttactAgentCopy(req.getDeskExtInfo().getIsAttactAgentCopy());
		deskExt.setIsLaw(req.getDeskExtInfo().getIsLaw());
		deskExt.setLawRemark(req.getDeskExtInfo().getLawRemark());
		deskExt.setIsMeeting(req.getDeskExtInfo().getIsMeeting());
		deskExt.setMeetingRemark(req.getDeskExtInfo().getMeetingRemark());
		deskExt.setIsCompanyAppeal(req.getDeskExtInfo().getIsCompanyAppeal());
		deskExt.setAppealDate(req.getDeskExtInfo().getAppealDate());
		deskExt.setCompanyReplyDate(req.getDeskExtInfo().getCompanyReplyDate());
		deskExt.setIsAppealSame(req.getDeskExtInfo().getIsAppealSame());
		deskExt.setDeskClassCid(req.getDeskExtInfo().getDeskClass().getCid());
		
		return caseDeskExtRepository.saveAndFlush(deskExt);
	}
    
	private String createCaseNoByRules(CaseManager05Request req) {
//	    1.公文件: 使用者輸入案號(caseNo)檢核(需存在於公文系統)
//	    2.電話件: case_class.property1為A，caseNo規則: TA+民國年+6碼流水號 (ex: TA112000001)
//               case_class.property1為B，caseNo規則: T+年度月日6碼+3碼流水號 (ex: T1121231001)
//	    3.臨櫃件: 臨櫃登錄: CA+年度月日6碼+3碼流水號 (ex: CA1121231001)
//               巡查: CB+年度月日6碼+3碼流水號 (ex: CB1121231001)
		
		CodeDetailDto caseTypeCode = VerifyInputs.checkCode(FoiConstants.CASE_TYPE, CodeDetailMap.get(req.getCaseType().getCid()));
		CodeDetailDto caseClassCode = VerifyInputs.checkCode(FoiConstants.CASE_CLASS, CodeDetailMap.get(req.getCaseClass().getCid()));
		CodeDetailDto inMethodCode = VerifyInputs.checkCode(FoiConstants.IN_METHOD, CodeDetailMap.get(req.getInMethod().getCid()));

		switch (caseTypeCode.getCode()) {
		case FoiConstants.C01001:
			return docCaseRule(req.getCaseNo());
		case FoiConstants.C01002:
			return telCaseRule(caseClassCode.getProperty1());
		case FoiConstants.C01003:
			return deskCaseRule(inMethodCode.getCode());
		default:
			return "";
		}
	}
	
//	公文件caseNo產生規則
	private String docCaseRule(String caseNo) {
//		TODO : 呼叫WSDOC01驗證操作者自行輸入的caseNo
		return "";
	}
	
//	電話件caseNo產生規則
	private String telCaseRule(String caseClass) {
		switch (caseClass) {
		case FoiConstants.A:
			return sequenceStr.createSequenceStrByRules("TA", DateUtil.getDateInRocFormat(FoiConstants.YYY), 6); 		// TA+民國年+6碼流水號
		case FoiConstants.B:
			return sequenceStr.createSequenceStrByRules("T", DateUtil.getDateInRocFormat(FoiConstants.YYYMMDD), 3); 	// T+年度月日7碼+3碼流水號
		default:
			throw new BadRequestException("資料異常，電話件僅適用於諮詢及申訴案件");
		}
	}
	
//	臨櫃件caseNo產生規則
	private String deskCaseRule(String inMethod) {		
		switch (inMethod) {
		case FoiConstants.NEW001:
			return sequenceStr.createSequenceStrByRules("CA", DateUtil.getDateInRocFormat(FoiConstants.YYYMMDD), 3); 	// CA+年度月日7碼+3碼流水號
		case FoiConstants.NEW002:
			return sequenceStr.createSequenceStrByRules("CB", DateUtil.getDateInRocFormat(FoiConstants.YYYMMDD), 3); 	// CB+年度月日7碼+3碼流水號
		default:
			return "";
		}
	}
	
//	case_suggestion_book查出多筆時依規則加上預審案別
	private String concatAdditionalStr(Integer seqNo, String originalText) {
		String[] preExamCaseTypes = {"甲案", "乙案", "丙案", "丁案", "戊案", "己案", "庚案", "辛案", "壬案", "癸案", "序號參數錯誤"};
		if (seqNo < 1 || seqNo > preExamCaseTypes.length - 1) {
			throw new BadRequestException("預審類別序號參數錯誤");
		}
		return String.format("%s-%s", preExamCaseTypes[seqNo - 1], originalText);		
	}

	// 透過 casemaster 找到特定的節點cid，順勢抓出整棵樹
	public TreeSelected mapCaseMasterToTree(CaseMaster caseMaster, Long selectedCid) {
	    TreeSelected tag = new TreeSelected();
	    String caseMasterTid = caseMaster.getId();
	    
	    // 針對input是空值的處理
	    System.out.println("[mapCaseMasterToTree] caseMasterTid = "+ caseMasterTid);
	    if (selectedCid == null) {
	    	throw new BadRequestException("tree industry cid is null");
	    }
	    System.out.println("[mapCaseMasterToTree] cid = "+selectedCid);
	    

	    CaseTree tree = caseTreeRepository.findByNodeCidAndCaseMasterTid(selectedCid, caseMasterTid);
	    
	    if (tree == null) {
	        System.out.println("[mapCaseMasterToTree] tree is null for selectedCid = " + selectedCid + " and caseMasterTid = " + caseMasterTid);
	        return new TreeSelected(); // 返回一個空的TreeSelected對象
	    }
	    
	    List<TreeSelectedDetail> nodeCids = createTreeSelectedDetails(tree.getId(), caseMasterTid);
	    
	    tag.setCaseTreeTid(tree.getId());
	    tag.setSelectedCid(selectedCid);
	    tag.setNodeCids(nodeCids);
	    tag.setSelectedName(concatTagNamesByTreeSelectedDetailsLevelAsc(nodeCids));
	    
	    return tag;
	}
		private List<TreeSelectedDetail> createTreeSelectedDetails(String caseTreeTid, String caseMasterTid) {
		    System.out.println("[createTreeSelectedDetails] caseTreeTid = "+caseTreeTid);

			return caseTreeSearchRepository.findAllByCaseTreeTidAndCaseMasterTid(caseTreeTid, caseMasterTid)
					.stream()
					.map(caseTree -> new TreeSelectedDetail(caseTree))
//					.map(caseTree -> new TreeSelectedDetail(caseTree.getLevel(), caseTree.getNodeCid(), CodeDetailMap.get(caseTree.getNodeCid()).getName()))
					.collect(Collectors.toList());
		}
		
	private Long getCidFromBoolean(Boolean isReparation) {
		if (isReparation == null) {
			return null;
		}
		CodeDetailDto cd = CodeDetailMap.get(FoiConstants.REPARATION, isReparation.toString());
	    return cd.getCid();
	}
	
	private CaseProductItem mapProductItemToCaseProductItem(ProductItem productItem) {
	    // 這裡應該根據productItem的屬性來創建並設定CaseProductItem的屬性
		CodeDetailDto cdItemType = CodeDetailMap.get(FoiConstants.ITEM_TYPE, productItem.getItemType().getCode());	//TODO codedetail中找不到kind = item_type
		CodeDetailDto cdItemKind = CodeDetailMap.get(FoiConstants.ITEM_KIND, productItem.getItemKind().getCode());
	    return CaseProductItem.builder()
	        .id(productItem.getCaseProductItemTid())
	        .caseMasterTid(productItem.getCaseMasterTid())
	        .itemTypeCid(cdItemType.getCid()) // 假設這是一個根據CodeDetailDto的value來查找對應的key的方法
	        .itemKindCid(cdItemKind.getCid()) // 同上
	        .itemName(productItem.getItemName())
	        .build();
	}
	
	private ShowCodeBo determineTelType(CaseMaster caseMaster) {
		System.out.println("【determineTelType】 caseMaster.caseTypeCid = "+caseMaster.getCaseTypeCid().toString());
	    CodeDetailDto caseTypeDetail = CodeDetailMap.get(caseMaster.getCaseTypeCid());
	    
	    // Check if caseType is available and matches the specific code.
	    if (caseTypeDetail != null && FoiConstants.C01002.equals(caseTypeDetail.getCode())) {
	        // Retrieve the telType based on caseMaster's ID.
	        CaseTelExt caseTelExt = caseTelExtRepository.findByCaseMasterTid(caseMaster.getId());

	        Long telTypeCid = null; // default to null

	        if (caseTelExt != null) {
	            telTypeCid = caseTelExt.getTelTypeCid();
	        }
	        
	        System.out.println("process ShowCodeBo(telTypeCid)....");
	        return new ShowCodeBo(telTypeCid);
	    }

	    
	    return null;
	}

	private int getIntegerValueOrDefault(String value, int defaultValue) {
	    try {
	        return Integer.parseInt(value);
	    } catch (NumberFormatException e) {
	        return defaultValue;
	    }
	}

}
