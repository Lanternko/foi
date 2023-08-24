package com.ezcore.foi.ecase.service.impl;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.common.utils.ModifyLogWriter;
import com.ezcore.common.utils.VerifyInputs;
import com.ezcore.foi.common.FoiConstants;
import com.ezcore.foi.ecase.dao.CaseEFlowRepository;
import com.ezcore.foi.ecase.dao.CaseFlowRepository;
import com.ezcore.foi.ecase.dao.CaseMasterRepository;
import com.ezcore.foi.ecase.dao.CaseMemoRepository;
import com.ezcore.foi.ecase.dao.CaseTelExtRepository;
import com.ezcore.foi.ecase.dao.EFlowMapRepository;
import com.ezcore.foi.ecase.dao.EFlowRepository;
import com.ezcore.foi.ecase.dao.dto.custom.Eflow1000BoDataProjection;
import com.ezcore.foi.ecase.dao.entity.CaseEFlow;
import com.ezcore.foi.ecase.dao.entity.CaseFlow;
import com.ezcore.foi.ecase.dao.entity.CaseMaster;
import com.ezcore.foi.ecase.dao.entity.CaseMemo;
import com.ezcore.foi.ecase.dao.entity.CaseTelExt;
import com.ezcore.foi.ecase.dao.entity.EFlow;
import com.ezcore.foi.ecase.dao.entity.EFlowMap;
import com.ezcore.foi.ecase.dao.entity.custom.Eflow1000BoHistoryProjection;
import com.ezcore.foi.ecase.dao.entity.custom.Eflow2000BoDataProjection;
import com.ezcore.foi.ecase.dao.entity.custom.Eflow2000BoGroupProjection;
import com.ezcore.foi.ecase.model.bo.Eflow1000BoData;
import com.ezcore.foi.ecase.model.bo.Eflow1000BoHistory;
import com.ezcore.foi.ecase.model.bo.Eflow2000BoData;
import com.ezcore.foi.ecase.model.bo.Eflow2000BoGroup;
import com.ezcore.foi.ecase.model.bo.EflowBoDoProc;
import com.ezcore.foi.ecase.model.bo.EflowBoEFlowMap;
import com.ezcore.foi.ecase.model.request.caseeflow.CaseEFlow01Request;
import com.ezcore.foi.ecase.model.request.caseeflow.CaseEFlow05Request;
import com.ezcore.foi.ecase.model.request.caseeflow.CaseEFlow06Request;
import com.ezcore.foi.ecase.model.request.caseeflow.CaseEFlow07Request;
import com.ezcore.foi.ecase.model.request.caseeflow.CaseEFlow08Request;
import com.ezcore.foi.ecase.model.response.comm.Comm04Response;
import com.ezcore.foi.ecase.service.CaseEFlowService;
import com.ezcore.foi.ecase.service.CaseUserService;
import com.ezcore.foi.ecase.service.CommService;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.common.CodeDetailMap;
import com.ezcore.tools.common.Constants;

import me.zhengjie.exception.BadRequestException;
import me.zhengjie.utils.DateUtil;
import me.zhengjie.utils.SecurityUtils;
import me.zhengjie.utils.StringUtils;

@Service
public class CaseEFlowServiceImpl implements CaseEFlowService {

	@Autowired
	private EFlowRepository eflowRepository;
	@Autowired
    private CaseEFlowRepository caseEFlowRepository;
	@Autowired
	private CaseFlowRepository caseFlowRepository;
	@Autowired
	private CommService commService;
	@Autowired
	private CaseUserService caseUserService;
	@Autowired
	private CaseMasterRepository caseMasterRepository;
	@Autowired
	private CaseMemoRepository caseMemoRepository;
	@Autowired
	private EFlowMapRepository eFlowMapRepository;
//	@Autowired
//	private CodedetailRepository codedetailRepository;
	@Autowired
	private CodeDetailMap codeDetailMap;
	@Autowired
	private ModifyLogWriter logWriter;
		
	@Override
	public List<EflowBoEFlowMap> getMap(CaseEFlow01Request req) {
		return eflowRepository.getUsableEFlow(req.getPageCode(), req.getPCode());
	}

	@Override
	public List<Eflow1000BoData> get1000Init(String pCode, String account) {
//		查出pcode對應的工作群組
//		List<EflowBoEFlowMap> currentWorkGroups = eflowRepository.getUsableEFlow(0, null, 1, pCode);
		List<EflowBoEFlowMap> currentWorkGroups = eflowRepository.getUsableEFlow(null, pCode);
		for (int i = 0 ; i < currentWorkGroups.size() ; i ++) {
//			檢查帳號合理性
			if (accountInCurrentWorkgroup(currentWorkGroups.get(i).getCurrentWorkgroup(), account)) {
				break;
			}

			if (i == currentWorkGroups.size() - 1) {
				throw new BadRequestException(-901, "帳號不在工作群組內");
			}
		}
		
//		查詢
		List<Eflow1000BoData> rtn = new ArrayList<>();
		List<Eflow1000BoDataProjection> projections = eflowRepository.getToCreateEFlowConsult(pCode, account);
		projections.forEach(p -> rtn.add(mappingProjectionToEflow1000BoData(p)));
		
		if (rtn.isEmpty()) {
			return rtn;
		}
		
//		內含尚未建立初始流程的案件
		for (Eflow1000BoData data : rtn) {
//			案件現無流程，新增一筆
			EflowBoDoProc eb = new EflowBoDoProc();
			eb.setCaseMasterTid(data.getCaseMasterTid());
			eb.setCaseEflowTid(null);
			eb.setAction(FoiConstants.Y);
			eb.setMemoText(null);
			eb.setCloseInfo(null);
			
			CaseEFlow nextEFlow = createCaseEFlow(pCode, eb, null);
			
//			異動主檔:關聯新建流程的id
			CaseMaster caseMaster = caseMasterRepository.findById(data.getCaseMasterTid()).orElse(null);
			VerifyInputs.isNull(caseMaster, String.format(FoiConstants.CASE_MASTER_NOT_FOUND, data.getCaseMasterTid()));
			
			caseMaster.setLatestCaseEflowTid(nextEFlow.getId());
			
			caseMasterRepository.saveAndFlush(caseMaster);
		}

		return rtn;
	}

	@Override
	public List<Eflow1000BoData> get1000List(String pCode, String currentWorkGroupCode, String currentCode, String account) {
//		檢查帳號合理性
//		但account為null時代表想查整個workgroup成員的清單，因此不套用檢查
		if (!StringUtils.isEmptyOrNull(account) && !accountInCurrentWorkgroup(currentWorkGroupCode, account)) {
			throw new BadRequestException(-901, "帳號不在工作群組內");
		}
		
//		查詢
		List<Eflow1000BoData> rtn = new ArrayList<>();
		List<Eflow1000BoDataProjection> projections = null;
//		projections = eflowRepository.getOnProcessEFlowConsult(pCode, currentCode, 1, currentWorkGroupCode, 0, account);
		projections = eflowRepository.getOnProcessEFlowConsult(pCode, currentCode, currentWorkGroupCode, null);
		
		projections.forEach(p -> rtn.add(mappingProjectionToEflow1000BoData(p)));
		return rtn;
	}

	@Override
	public void doProc(List<EflowBoDoProc> req) {
		if (req == null || req.isEmpty()) {
			throw new BadRequestException("請先選擇移轉案件");
		}

		for (EflowBoDoProc ebdp : req) {
//			若當筆為退案，必須有退案原因
			boolean isReturnEFlow = FoiConstants.N.equals(ebdp.getAction());
			if (isReturnEFlow && StringUtils.isEmptyOrNull(ebdp.getMemoText())) {
				throw new BadRequestException("退案需填寫原因說明");
			}
			
//			查案件主檔
			CaseMaster caseMaster = caseMasterRepository.findById(ebdp.getCaseMasterTid()).orElse(null);
			VerifyInputs.isNull(caseMaster, String.format(FoiConstants.CASE_MASTER_NOT_FOUND, ebdp.getCaseMasterTid()));

			boolean caseEflowTidExists = !StringUtils.isEmptyOrNull(ebdp.getCaseEflowTid());
//			查案件當前流程
			CaseEFlow currentEFlow = null;
			if (caseEflowTidExists) {
				currentEFlow = caseEFlowRepository.findById(ebdp.getCaseEflowTid()).orElse(null);
			}
			VerifyInputs.isNull(currentEFlow, String.format(FoiConstants.CASE_EFLOW_NOT_FOUND, ebdp.getCaseEflowTid()));
			
//			使用當前案件流程的pCode
			String pCode = currentEFlow.getPcode();
//			做任何更新前先確認request傳入的案件主檔id、案件流程id是指向同案件
			if (!currentEFlow.getCaseMasterTid().equals(caseMaster.getId())) {
				throw new BadRequestException(-901, "傳入的資料關係不正確");
			}

//			流程尚未推進至9999
			if (isReturnEFlow || !FoiConstants.EFLOW_END_STATE.equals(currentEFlow.getNextCode())) {
//				新增一筆下階段流程
				CaseEFlow nextEFlow = createCaseEFlow(pCode, ebdp, currentEFlow);

//				異動主檔:關聯下一筆流程的eflow id
				caseMaster.setLatestCaseEflowTid(nextEFlow.getId());
			} else {
				if (FoiConstants.PCODE_1000.equals(pCode)) {
//					流程已推進至9999，進行後置處理
					currentEFlow.setNextAccount(ebdp.getCloseInfo().getAssignAccount());
					
//					異動主檔前寫入紀錄
					logWriter.newCaseOwnerModifyRecord(caseMaster, "center");
//					異動主檔:流程已到底，清空欄位
					caseMaster.setLatestCaseEflowTid(null);
//					承辦人轉移
					caseMaster.setCenterOwnerAccount(ebdp.getCloseInfo().getAssignAccount());
					
//					僅demo用的流程
					caseMaster = demoOnly(caseMaster);
				}
					
//				確認本流程case flow code是否有值(申訴組-主管審核通過)
				EFlow eflow = eflowRepository.findByCode(pCode);
				EFlowMap nextEFlowDetail = eFlowMapRepository.findByEflowAndNextCodeAndAction(eflow, FoiConstants.EFLOW_END_STATE, ebdp.getAction());
				if (!StringUtils.isEmptyOrNull(nextEFlowDetail.getCaseFlowCode())) {
//					有值，新增一筆結案case flow
					CaseFlow newFlow = new CaseFlow();
					newFlow.setId(StringUtils.newUuidStr());
					newFlow.setCaseMasterTid(caseMaster.getId());
					newFlow.setOwnerAccount(caseMaster.getCenterOwnerAccount());
					newFlow.setFlowTime(DateUtil.getSystemTime());
						
//					Codedetail flowcode = codedetailRepository.findByKindAndCode(Constants.FLOW_CODE, nextEFlowDetail.getCaseFlowCode());
					CodeDetailDto flowcode = codeDetailMap.get(FoiConstants.FLOW_CODE, nextEFlowDetail.getCaseFlowCode());
					newFlow.setFlowCodeCid(flowcode.getCid());
					newFlow.setManagerFlag(flowcode.getProperty1());
					newFlow.setScopeFlag(flowcode.getProperty2());

					newFlow.setDocNo(null);
					newFlow.setOpenModifyDate(null);
					newFlow.setCreateBy(SecurityUtils.getCurrentUsername());
					newFlow.setCreateTime(DateUtil.getSystemTime());
						
					caseFlowRepository.saveAndFlush(newFlow);
//					異動主檔:關聯下一筆流程的case flow
					caseMaster.setLatestCaseFlowTid(newFlow.getId());
				}
			}
//			點收資料
			currentEFlow.setUpdateBy(SecurityUtils.getCurrentUsername());
			currentEFlow.setUpdateTime(DateUtil.getSystemTime());
			caseEFlowRepository.saveAndFlush(currentEFlow);
			
			caseMaster.setUpdateBy(SecurityUtils.getCurrentUsername());
			caseMaster.setUpdateTime(DateUtil.getSystemTime());
			caseMasterRepository.saveAndFlush(caseMaster);
	
//			異動退案原因
			if (isReturnEFlow) {
//				案件id + 退案種類 為unique
//				有查到時執行update、沒有時create
//				Codedetail memoTypeCode = codedetailRepository.findByKindAndCode(Constants.MEMO_TYPE, Constants.EFLOW + pCode);
				CodeDetailDto memoTypeCode = codeDetailMap.get(FoiConstants.MEMO_TYPE, FoiConstants.EFLOW + pCode);
				CaseMemo caseMemo = caseMemoRepository.findByCaseMasterTidAndMemoTypeCid(ebdp.getCaseMasterTid(), memoTypeCode.getCid());
				if (caseMemo == null) {
//					新增退案原因
					caseMemo = new CaseMemo();
					caseMemo.setId(StringUtils.newUuidStr());
					caseMemo.setCaseMasterTid(ebdp.getCaseMasterTid());
					
					caseMemo.setMemoTypeCid(memoTypeCode.getCid());
					caseMemo.setMemoText(ebdp.getMemoText());
					caseMemo.setSeqNo(caseMemoRepository.createMemoSeqNo(ebdp.getCaseMasterTid()));
					caseMemo.setCreateBy(SecurityUtils.getCurrentUsername());
					caseMemo.setCreateTime(DateUtil.getSystemTime());
					
					caseMemoRepository.saveAndFlush(caseMemo);
				} else {
					if (!ebdp.getMemoText().equals(caseMemo.getMemoText())) {
//						更新退案原因
						caseMemo.setMemoText(ebdp.getMemoText());
						caseMemo.setUpdateBy(SecurityUtils.getCurrentUsername());
						caseMemo.setUpdateTime(DateUtil.getSystemTime());
						
						caseMemoRepository.saveAndFlush(caseMemo);
					}
				}

			}
		}
	}

	@Override
	public List<Eflow2000BoGroup> get2000Init(CaseEFlow05Request req) {
		List<Eflow2000BoDataProjection> projections = eflowRepository.getToCreateEFlowDataAppeal(req.getAccount(), FoiConstants.PCODE_2000);
		List<Eflow2000BoData> datas = new ArrayList<>();
		projections.forEach(p -> datas.add(mappingProjectionToEflow2000BoData(p)));
		if (!datas.isEmpty()) {
//			內含尚未建立初始流程的案件
			for (Eflow2000BoData data : datas) {
//				案件現無流程，新增一筆
				EflowBoDoProc eb = new EflowBoDoProc();
				eb.setCaseMasterTid(data.getCaseMasterTid());
				eb.setCaseEflowTid(null);
				eb.setAction(FoiConstants.Y);
				eb.setMemoText(data.getMemoText());
				eb.setCloseInfo(null);
				
				CaseEFlow nextEFlow = createCaseEFlow(FoiConstants.PCODE_2000, eb, null);
				
//				異動主檔:關聯新建流程的id
				CaseMaster caseMaster = caseMasterRepository.findById(data.getCaseMasterTid()).orElse(null);
				VerifyInputs.isNull(caseMaster, String.format(FoiConstants.CASE_MASTER_NOT_FOUND, data.getCaseMasterTid()));
				
				caseMaster.setLatestCaseEflowTid(nextEFlow.getId());
				
				caseMasterRepository.saveAndFlush(caseMaster);
			}
		}
		
		return Collections.emptyList();
	}

	@Override
	public List<Eflow2000BoGroup> get2000List(CaseEFlow06Request req) {
		List<Eflow2000BoGroup> rtn = new ArrayList<>();
		
//		List<Eflow2000BoGroupProjection> projections = eflowRepository.getSpecificEFlowGroupAppeal(Constants.PCODE_2000, req.getCurrentCode(), req.getCurrentWorkGroupCode(), req.getAccount());
		List<Eflow2000BoGroupProjection> projections = eflowRepository.getSpecificEFlowGroupAppeal(FoiConstants.PCODE_2000, req.getCurrentCode(), req.getCurrentWorkGroupCode(), null);
		for (Eflow2000BoGroupProjection p : projections) {
			Eflow2000BoGroup group = new Eflow2000BoGroup();
			group.setFlow10022Date(p.getFlow10022Date());
			group.setOwnerAccount(req.getAccount());
			group.setOwnerName(p.getOwnerName());
			group.setTotalRows(p.getTotalCnt());
			group.setWorkRows(p.getWorkCnt());

//			List<Eflow2000BoDataProjection> projections2 = eflowRepository.getSpecificEFlowDataAppeal(Constants.PCODE_2000, req.getCurrentCode(), req.getCurrentWorkGroupCode(), req.getAccount());
			List<Eflow2000BoDataProjection> projections2 = eflowRepository.getSpecificEFlowDataAppeal(FoiConstants.PCODE_2000, req.getCurrentCode(), req.getCurrentWorkGroupCode(), null);
			List<Eflow2000BoData> datas = new ArrayList<>();
			projections2.forEach(p2 -> datas.add(mappingProjectionToEflow2000BoData(p2)));
			group.setDatas(datas);
			
			rtn.add(group);
		}
		
		return rtn;
	}
	
	/*
	 * EFlow 07
	 * we first get "processNo", "currentWorkGroup" ,"nextWorkGroup", "rows", "createTime" from `findHistory`
	 * then get "data" from `findHistoryByProcessNo`(input processNo which from the return of findHistory)
	 */
	@Override
	public List<Eflow1000BoHistory> get1000History(CaseEFlow07Request req) {
		List<Eflow1000BoHistory> histories = new ArrayList<>();
		
		List<Eflow1000BoHistoryProjection> projections = eflowRepository.findHistory(req.getCaseNo(), DateUtil.parseMillisecToDateString(req.getBeginDate()), 
									DateUtil.parseMillisecToDateString(req.getEndDate()), req.getCurrentWorkGroup());
		for (Eflow1000BoHistoryProjection p : projections) {
			Eflow1000BoHistory history = new Eflow1000BoHistory();
			history.setProcessNo(p.getProcessNo());
			history.setCurrentWorkGroup(p.getCurrentWorkGroup());
			history.setNextWorkGroup(p.getNextWorkGroup());
			history.setCreateTime(p.getCreateTime());
			history.setRows(p.getRows());
			
			List<Eflow1000BoDataProjection> projections2 = eflowRepository.findHistoryByProcessNo(p.getProcessNo());
			List<Eflow1000BoData> datas = new ArrayList<>();
			projections2.forEach(p2 -> datas.add(mappingProjectionToEflow1000BoData(p2)));
			history.setDatas(datas);
			
			histories.add(history);
		}

        return histories;
	}
	
	/*
	 * EFlow 08 
	 * 模仿06的寫法，但是不知道currentCode, currentWorkGroupCode, account這些值從哪裡來，先放著😣
	 */
	@Override
	public List<Eflow2000BoGroup> get2000History(CaseEFlow08Request req) {
	    List<Eflow2000BoGroup> histories = new ArrayList<>();

	    List<Eflow2000BoGroupProjection> projections = eflowRepository.findComplaintHistory(req.getOwnerAccount(), 
	    							DateUtil.parseMillisecToDateString(req.getBeginDate()), DateUtil.parseMillisecToDateString(req.getEndDate()));
	    for (Eflow2000BoGroupProjection p : projections) {
			Eflow2000BoGroup group = new Eflow2000BoGroup();
			group.setFlow10022Date(p.getFlow10022Date());
			group.setOwnerAccount(req.getOwnerAccount());
			group.setOwnerName(p.getOwnerName());
			group.setTotalRows(p.getTotalCnt());
			group.setWorkRows(p.getWorkCnt());

			List<Eflow2000BoDataProjection> projections2 = eflowRepository.findComplaintHistoryDatas(req.getOwnerAccount());
			List<Eflow2000BoData> datas = new ArrayList<>();
			projections2.forEach(p2 -> datas.add(mappingProjectionToEflow2000BoData(p2)));
			group.setDatas(datas);
			
			histories.add(group);
		}

	    return histories;
	}

/*
 * ------------------------------------------------《01 - 08 截止線》-----------------------------------------------------------------
 */
//	建立Eflow1000BoData物件
	private Eflow1000BoData mappingProjectionToEflow1000BoData(Eflow1000BoDataProjection p) {
		Eflow1000BoData data = new Eflow1000BoData();
		data.setCaseClassName(p.getCaseClassName());
		data.setInMethodName(p.getInMethodName());
		data.setCaseNo(p.getCaseNo());
		data.setApplicantNames(caseUserService.getApplicantNames(p.getCaseMasterTid()));
		data.setCompanyName(p.getCompanyName());
		data.setDisputeKindName(p.getDisputeKindName());
		data.setCaseDate(p.getCaseDate());
		data.setMemoText(p.getMemoText());
		data.setCaseMasterTid(p.getCaseMasterTid());
		data.setCaseEflowTid(p.getCaseEflowTid());
		data.setProcessNo(p.getProcessNo());
		
		return data;
	}
	
//	建立Eflow2000BoData物件
	private Eflow2000BoData mappingProjectionToEflow2000BoData(Eflow2000BoDataProjection p) {
		Eflow2000BoData data = new Eflow2000BoData();
		data.setCaseNo(p.getCaseNo());
		data.setApplicantNames(p.getApplicantNames());
		data.setCaseMasterTid(p.getCaseMasterTid());
		data.setMemoText(p.getMemoText());
		data.setStatusText(p.getStatusText());
		data.setCaseEflowTid(p.getCaseEflowTid());
		
		return data;
	}
	
//	寫入一筆新的電話件流程
	private CaseEFlow createCaseEFlow(String pCode, EflowBoDoProc ebdp, CaseEFlow currentEFlow) {
		CaseEFlow newEFlow = new CaseEFlow();
		newEFlow.setId(StringUtils.newUuidStr());
		newEFlow.setCaseMasterTid(ebdp.getCaseMasterTid());
		newEFlow.setPcode(pCode);
		
		EFlow eflow = eflowRepository.findByCode(pCode);
		
		CaseMaster caseMaster = caseMasterRepository.findById(ebdp.getCaseMasterTid()).orElse(null);
		VerifyInputs.isNull(caseMaster, String.format(FoiConstants.CASE_MASTER_NOT_FOUND, ebdp.getCaseMasterTid()));
	
		EFlowMap nextEFlow = null;
		if (currentEFlow == null) {
//			無現有流程寫入初始流程
			nextEFlow = eFlowMapRepository.findByEflowAndCurrentCodeAndAction(eflow, FoiConstants.EFLOW_INIT_STATE, ebdp.getAction());
		} else {
//			有現有流程取得next code的流程
//			確認是否為退案
			if (FoiConstants.N.equals(ebdp.getAction())) {
				EFlowMap backEFlow = eFlowMapRepository.findByEflowAndCurrentCodeAndAction(eflow, currentEFlow.getCurrentCode(), ebdp.getAction());
//				新增一筆退案流程
				createCaseEFlowBackward(ebdp, pCode, backEFlow, caseMaster);
				
				nextEFlow = eFlowMapRepository.findByEflowAndCurrentCodeAndAction(eflow, backEFlow.getNextCode(), FoiConstants.Y);
			} else {
				nextEFlow = eFlowMapRepository.findByEflowAndCurrentCodeAndAction(eflow, currentEFlow.getNextCode(), ebdp.getAction());				
			}
		}
		newEFlow.setProcessNo(createCaseEFlowProcessNo(pCode, DateUtil.localDateTimeFormat(LocalDateTime.now(), FoiConstants.YYYYMMDD)));
		newEFlow.setCurrentCode(nextEFlow.getCurrentCode());
		newEFlow.setCurrentWorkgroupCode(nextEFlow.getCurrentWorkgroupCode());
		newEFlow.setNextCode(nextEFlow.getNextCode());
		newEFlow.setNextWorkgroupCode(nextEFlow.getNextWorkgroupCode());
		newEFlow.setCurrentAccount(caseMaster.getCenterOwnerAccount());
		newEFlow.setActionAccount(SecurityUtils.getCurrentUsername());
		newEFlow.setNextAccount(null);
		newEFlow.setCreateBy(SecurityUtils.getCurrentUsername());
		newEFlow.setCreateTime(DateUtil.getSystemTime());
		newEFlow.setUpdateBy(null);
		newEFlow.setUpdateTime(null);

		return caseEFlowRepository.saveAndFlush(newEFlow);
	}
	
//	建立一筆退案流程
	private void createCaseEFlowBackward(EflowBoDoProc ebdp, String pCode, EFlowMap eflow, CaseMaster caseMaster) {
		CaseEFlow backEFlow = new CaseEFlow();
		backEFlow.setId(StringUtils.newUuidStr());
		backEFlow.setCaseMasterTid(ebdp.getCaseMasterTid());
		backEFlow.setPcode(pCode);
		backEFlow.setProcessNo(createCaseEFlowProcessNo(pCode, DateUtil.localDateTimeFormat(LocalDateTime.now(), FoiConstants.YYYYMMDD)));
		backEFlow.setCurrentCode(eflow.getCurrentCode());
		backEFlow.setCurrentWorkgroupCode(eflow.getCurrentWorkgroupCode());
		backEFlow.setNextCode(eflow.getNextCode());
		backEFlow.setNextWorkgroupCode(eflow.getNextWorkgroupCode());
		backEFlow.setCurrentAccount(caseMaster.getCenterOwnerAccount());
		backEFlow.setActionAccount(SecurityUtils.getCurrentUsername());
		backEFlow.setNextAccount(null);
		backEFlow.setCreateBy(SecurityUtils.getCurrentUsername());
		backEFlow.setCreateTime(DateUtil.getSystemTime());
		backEFlow.setUpdateBy(SecurityUtils.getCurrentUsername());
		backEFlow.setUpdateTime(DateUtil.getSystemTime());
		
		caseEFlowRepository.saveAndFlush(backEFlow);
	}
	
//	回傳下一筆電話進件流程應填入的processCode
//	pCode為1000時是yyyyMMddrrr，其中rrr為流水號
//	pCode為2000時為yyyyMMdd
	private String createCaseEFlowProcessNo(String pCode, String processCode) {
		if (FoiConstants.PCODE_2000.equals(pCode)) {
			return processCode;
		}
		
		String newNumber = caseEFlowRepository.findByPCodeAndProcessNoLikeOrderByProcessNoDesc(pCode, processCode);
		
		int len = newNumber.length();
		StringBuilder sb = new StringBuilder(processCode);
		while (len ++ < 3) {
			sb.append('0');
		}
		sb.append(newNumber);
		return sb.toString();
	}
	
//  確認帳號是否存在於工作群組
	private boolean accountInCurrentWorkgroup(String currentWorkgroup, String account) {
		List<Comm04Response> list = commService.getWorkGroupUsers(currentWorkgroup);
		for (Comm04Response res : list) {
			if (res.getAccount().equals(account)) {
				return true;
			}
		}
		return false;
	}

	@Autowired
	private CaseTelExtRepository caseTelExtRepository;

//	僅demo時使用
	private CaseMaster demoOnly(CaseMaster caseMaster) {
		CaseTelExt tel = new CaseTelExt();
		tel.setId(StringUtils.newUuidStr());
		tel.setCaseMasterTid(caseMaster.getId());
		tel.setTelTypeCid(1666L);
		tel.setIsCheck1321(false);
		tel.setIsCheck1322(false);
		tel.setIsCheck1323(false);
		tel.setIsCheck1324(false);
		tel.setIsCheck1325(false);
		tel.setCreateBy(SecurityUtils.getCurrentUsername());
		tel.setCreateTime(DateUtil.getSystemTime());
		
		caseTelExtRepository.saveAndFlush(tel);
		
		CaseFlow flow = new CaseFlow();
		flow.setId(StringUtils.newUuidStr());
		flow.setCaseMasterTid(caseMaster.getId());
		flow.setFlowTime(DateUtil.getSystemTime());
		flow.setFlowCodeCid(1568L);
		flow.setScopeFlag("web");
		flow.setManagerFlag("N");
		flow.setOwnerAccount(caseMaster.getCenterOwnerAccount());
		flow.setCreateBy(SecurityUtils.getCurrentUsername());
		flow.setCreateTime(DateUtil.getSystemTime());
		
		caseFlowRepository.saveAndFlush(flow);
		
		caseMaster.setLatestCaseFlowTid(flow.getId());
		return caseMaster;
	}

	
}
