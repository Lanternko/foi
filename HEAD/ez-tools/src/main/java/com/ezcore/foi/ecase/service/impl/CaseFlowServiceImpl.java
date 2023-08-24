package com.ezcore.foi.ecase.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.common.utils.ModifyLogWriter;
import com.ezcore.common.utils.VerifyInputs;
import com.ezcore.foi.common.FoiConstants;
import com.ezcore.foi.ecase.dao.CaseFlowRepository;
import com.ezcore.foi.ecase.dao.CaseMasterRepository;
import com.ezcore.foi.ecase.dao.CodedetailRepository;
import com.ezcore.foi.ecase.dao.dto.ChildKindListDto;
import com.ezcore.foi.ecase.dao.entity.CaseFlow;
import com.ezcore.foi.ecase.dao.entity.CaseMaster;
import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
import com.ezcore.foi.ecase.model.bo.caseflowbo.EditData;
import com.ezcore.foi.ecase.model.bo.caseflowbo.QueryData;
import com.ezcore.foi.ecase.service.CaseFlowService;
import com.ezcore.foi.ecase.service.CommService;
import com.ezcore.foi.ecase.service.ConfigService;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.common.CodeDetailMap;

import me.zhengjie.exception.BadRequestException;
import me.zhengjie.modules.system.domain.User;
import me.zhengjie.modules.system.repository.UserRepository;
import me.zhengjie.modules.system.service.SubstituteService;
import me.zhengjie.utils.DateUtil;
import me.zhengjie.utils.SecurityUtils;
import me.zhengjie.utils.StringUtils;

@Service
public class CaseFlowServiceImpl implements CaseFlowService {

	@Autowired
	private CommService commService;
	@Autowired
	private ConfigService configService;
	@Autowired
	private SubstituteService substituteService;
	@Autowired
	private CaseFlowRepository caseFlowRepository;
	@Autowired
	private CaseMasterRepository caseMasterRepository;
	@Autowired
	private CodedetailRepository codedetailRepository;
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private ModifyLogWriter writer;
	
	@Override
	public CaseFlow addCaseFlow(EditData req) {
//		取得案件主檔
		CaseMaster master = VerifyInputs.checkCaseMaster(caseMasterRepository.findById(req.getCaseMasterTid()).orElse(null));
		
//		進度日期是否早於案件日期(case_flow.flow_date > case_master.case_date)
		if (req.getFlowTime().compareTo(master.getCaseDate()) > 0) {
			throw new BadRequestException(-901, "進度日期不可早於案件收件日期");
		}

//		建立案件流程檔
		CaseFlow newFlow = new CaseFlow();
		newFlow.setId(StringUtils.newUuidStr());
		newFlow.setCaseMasterTid(req.getCaseMasterTid());			
		newFlow.setFlowTime(req.getFlowTime());
		
//		取得代碼flow_code
//		Codedetail flowCodeCode = VerifyInputs.checkCode(Constants.FLOW_CODE, codedetailRepository.findById(req.getFlowCodeCid()).orElse(null));
		CodeDetailDto flowCodeCode = VerifyInputs.checkCode(FoiConstants.FLOW_CODE, CodeDetailMap.get(req.getFlowCodeCid()));
//		來源: kind=flow_code的property2
		newFlow.setFlowCodeCid(req.getFlowCodeCid());
		newFlow.setScopeFlag(flowCodeCode.getProperty2());
		
//		登入者為主管帳號時填入Y，其餘為N
		newFlow.setManagerFlag(commService.getManagerUser().isEmpty() ? FoiConstants.N : FoiConstants.Y);
		
//		操作對象權限
		newFlow.setOwnerAccount(substituteService.getCurrentOpUser());
		
//		來源: case_master的case_type + 代碼kind=flow_state
//		Codedetail caseTypeCode = VerifyInputs.checkCode(Constants.CASE_TYPE, codedetailRepository.findById(master.getCaseTypeCid()).orElse(null));
		CodeDetailDto caseTypeCode = VerifyInputs.checkCode(FoiConstants.CASE_TYPE, CodeDetailMap.get(master.getCaseTypeCid()));
		String flowStateStr = FoiConstants.FLOW_STATE + '.' + caseTypeCode.getCode();
//		Codedetail flowStateCode = VerifyInputs.checkCode(flowStateStr, codedetailRepository.findByKindAndCode(flowStateStr, "1000"));
		CodeDetailDto flowStateCode = VerifyInputs.checkCode(flowStateStr, CodeDetailMap.get(flowStateStr, "1000"));
		newFlow.setFlowStateCid(flowStateCode.getCid());
		
		newFlow.setDocNo(req.getDocNo());
		newFlow.setOpenModifyDate(null);
		newFlow.setCreateBy(SecurityUtils.getCurrentUsername());
		newFlow.setCreateTime(DateUtil.getSystemTime());
		newFlow = caseFlowRepository.saveAndFlush(newFlow);
		
//		更新主檔與案件流程的關聯
		master.setLatestCaseFlowTid(newFlow.getId());
		caseMasterRepository.saveAndFlush(master);

		return newFlow;
	}

	@Override
	public void delCaseFlow(String caseMasterTid, String caseFlowTid) {
//		取得案件主檔
		CaseMaster master = VerifyInputs.checkCaseMaster(caseMasterRepository.findById(caseMasterTid).orElse(null));
		
//		取得案件流程
		CaseFlow flow = VerifyInputs.checkCaseFlow(caseFlowRepository.findById(caseFlowTid).orElse(null));
		
//		登入者若非主管身分，追加檢查項目
		if (commService.getManagerUser().isEmpty()) {
//			案件是否已結案
//			Codedetail flowCodeCode = VerifyInputs.checkCode(Constants.FLOW_CODE, codedetailRepository.findById(flow.getFlowCodeCid()).orElse(null));
			CodeDetailDto flowCodeCode = VerifyInputs.checkCode(FoiConstants.FLOW_CODE, CodeDetailMap.get(flow.getFlowCodeCid()));
			if ("99999".equals(flowCodeCode.getCode())) {
				throw new BadRequestException(-901, "案件已結案，不可刪除進度");
			}
			
//			修改的流程是否為登入者新增
			if (substituteService.getCurrentOpUser().equals(flow.getCreateBy())) {
				throw new BadRequestException(-901, "不可刪除其他人新增的進度(或洽主管刪除)");
			}
		}
		
//		查出最新的案件流程
		CaseFlow latestFlow = VerifyInputs.checkCaseFlow(caseFlowRepository.findById(master.getLatestCaseFlowTid()).orElse(null));
		
//		刪除案件流程
		writer.newDeleteRecord(FoiConstants.CASE_FLOW, flow.getId());
		caseFlowRepository.delete(flow);
		
//		刪除的案件流程為案件主檔當前狀態時，更新主檔的當前流程為第二新的案件流程
		if (latestFlow.getFlowTime().equals(flow.getFlowTime())) {
//			查出第二新的案件流程
			CaseFlow secondFlow = caseFlowRepository.findFirstByCaseMasterTidOrderByFlowTimeDesc(caseMasterTid).orElse(null);
//			更新主檔與案件流程的關聯(沒有時則清空)
			master.setLatestCaseFlowTid(secondFlow == null ? null : secondFlow.getId());
			caseMasterRepository.saveAndFlush(master);
		}
	}

	@Override
	public CaseFlow modCaseFlow(EditData req) {
//		取得案件主檔
		CaseMaster master = VerifyInputs.checkCaseMaster(caseMasterRepository.findById(req.getCaseMasterTid()).orElse(null));
		
//		取得CaseFlow
		CaseFlow flow = VerifyInputs.checkCaseFlow(caseFlowRepository.findById(req.getCaseFlowTid()).orElse(null));
		
//		案件是否已結案(caseMaster.is_close)
		if (master.getIsClose()) {
			throw new BadRequestException(-901, "案件已結案，不可修改進度");
		}
		
//		取得案件最新流程檔
		CaseFlow latestFlow = VerifyInputs.checkCaseFlow(caseFlowRepository.findById(master.getLatestCaseFlowTid()).orElse(null));
		
//		取得最新流程檔對應的流程
//		Codedetail flowCodeCode = VerifyInputs.checkCode(Constants.FLOW_CODE, codedetailRepository.findById(latestFlow.getFlowCodeCid()).orElse(null));
		CodeDetailDto flowCodeCode = VerifyInputs.checkCode(FoiConstants.FLOW_CODE, CodeDetailMap.get(latestFlow.getFlowCodeCid()));

//		案件是否已結案(caseMaster.latest_case_flow_tid對應的flow_code為99999)
		if ("99999".equals(flowCodeCode.getCode())) {
			throw new BadRequestException(-901, "案件已結案，不可修改進度");
		}

//		登入者(或代理對象)是否為案件承辦人
		if (substituteService.getCurrentOpUser().equals(master.getCenterOwnerAccount())) {
			throw new BadRequestException(-901, "不為案件承辦人，不可修改進度");
		}
		
//		修改的流程是否為登入者(或代理對象)所新增
		if (substituteService.getCurrentOpUser().equals(flow.getCreateBy())) {
			throw new BadRequestException(-901, "不可異動其他人新增的進度");
		}
		
//		進度日期是否早於案件日期(case_flow.flow_date > case_master.case_date)
		if (req.getFlowTime().compareTo(master.getCaseDate()) > 0) {
			throw new BadRequestException(-901, "進度日期不可早於案件收件日期");
		}

		flow.setFlowTime(req.getFlowTime());
		flow.setUpdateBy(SecurityUtils.getCurrentUsername());
		flow.setUpdateTime(DateUtil.getSystemTime());

		return caseFlowRepository.saveAndFlush(flow);
	}

	@Override
	public List<QueryData> getCaseFlow(String caseMasterTid) {
//		依登入者身分決定查詢條件
		List<String> scopeFlags = new ArrayList<>();
		String isManager = null;
		
//		身分為業者
		if (configService.isCompanyUser() == 1) {
			scopeFlags.add("out");
			scopeFlags.add("both");
		}
//		身分為非業者且為主管
		if (configService.isCompanyUser() == 0 && !commService.getManagerUser().isEmpty()) {
			scopeFlags.add("web");
			scopeFlags.add("both");
			isManager = FoiConstants.Y;
		}
//		身分為非業者不為主管
		if (configService.isCompanyUser() == 0 && commService.getManagerUser().isEmpty()) {
			scopeFlags.add("web");
			scopeFlags.add("both");
			isManager = FoiConstants.N;
		}
		
		List<CaseFlow> flows = caseFlowRepository.findByManagerFlagAndScopeFlagIn(caseMasterTid, isManager, scopeFlags);
		List<QueryData> rtn = new ArrayList<>();
		for (CaseFlow flow : flows) {
			QueryData bo = new QueryData();
			bo.setCaseFlowTid(flow.getId());
			bo.setCaseMasterTid(flow.getCaseMasterTid());
			bo.setFlowTime(flow.getFlowTime());
			bo.setDocNo(flow.getDocNo());
			bo.setOpenModifyDate(flow.getOpenModifyDate());
			
//			取得代碼flow_code
//			Codedetail flowCodeCode = VerifyInputs.checkCode(Constants.FLOW_CODE, codedetailRepository.findById(flow.getFlowCodeCid()).orElse(null));
			CodeDetailDto flowCodeCode = VerifyInputs.checkCode(FoiConstants.FLOW_CODE, CodeDetailMap.get(flow.getFlowCodeCid()));
			bo.setFlowCode(new ShowCodeBo(flowCodeCode));
			
//			取得代碼flow_state
//			Codedetail state = codedetailRepository.findById(flow.getFlowStateCid()).orElse(null);
			CodeDetailDto state = CodeDetailMap.get(flow.getFlowStateCid());
			VerifyInputs.isNull(state, String.format(FoiConstants.CODE_NOT_FOUND, flow.getFlowStateCid()));
			bo.setFlowState(new ShowCodeBo(state));

//			取得承辦人資訊
			User owner = userRepository.findByAccount(flow.getOwnerAccount());
			bo.setOwnerAccount(owner.getAccount());
			bo.setOwnerName(owner.getName());
			
//			取得建立者資訊
			User created = userRepository.findByAccount(flow.getCreateBy());
			bo.setCreateBy(created.getAccount());
			bo.setCreateName(created.getName());
			
			rtn.add(bo);
		}

		return rtn;
	}

	@Override
	public List<CodeDetailDto> getFlowCodeByState(String caseType, String caseMasterTid) {
//		取得案件主檔
		CaseMaster master = VerifyInputs.checkCaseMaster(caseMasterRepository.findById(caseMasterTid).orElse(null));
		
		List<ChildKindListDto> codes = null;
		if (master == null) {
//			無案件主檔，代表新增
			codes = codedetailRepository.execChildKindList(FoiConstants.FLOW_STATE + '.' + caseType, "1000", FoiConstants.FLOW_CODE);
		} else {
//			主檔存在，使用最近一筆流程的所在階段
			
//			取得最近一筆案件流程
			CaseFlow latestFlow = caseFlowRepository.findFirstByCaseMasterTidOrderByFlowTimeDesc(caseMasterTid).orElse(null);
			VerifyInputs.isNull(latestFlow, String.format("案號:%s 案件主檔對應的最後一筆案件流程不存在，請通知系統管理員處理", master.getCaseNo()));
			
//			取得案件的case_type
//			Codedetail caseTypeCode = VerifyInputs.checkCode(Constants.CASE_TYPE, codedetailRepository.findById(master.getCaseTypeCid()).orElse(null));
			CodeDetailDto caseTypeCode = VerifyInputs.checkCode(FoiConstants.CASE_TYPE, CodeDetailMap.get(master.getCaseTypeCid()));
			
//			取得案件的flow_state
//			Codedetail flowStateCode = codedetailRepository.findById(latestFlow.getFlowStateCid()).orElse(null);
			CodeDetailDto flowStateCode = CodeDetailMap.get(latestFlow.getFlowStateCid());
			VerifyInputs.isNull(flowStateCode, String.format(FoiConstants.CODE_NOT_FOUND, master.getCaseTypeCid()));
			
			codes = codedetailRepository.execChildKindList(FoiConstants.FLOW_STATE + '.' + caseTypeCode.getCode(), flowStateCode.getCode(), FoiConstants.FLOW_CODE);
		}
		
		List<CodeDetailDto> rtn = new ArrayList<>();
		for (ChildKindListDto code : codes) {
			rtn.add(CodeDetailMap.get(code.getCid()));
		}

		return rtn;
	}
	
	/*
	 * transfer caseFlow type to QueryData Type
	 */
	public QueryData caseFlowToQueryData(CaseFlow caseFlow) { 
		// flowState 和 flowCode 的 showCodeBo
		ShowCodeBo flowShowCodeBo = new ShowCodeBo(caseFlow.getFlowCodeCid());
		ShowCodeBo flowStateShowCodeBo = new ShowCodeBo(caseFlow.getFlowStateCid());

        // ownerAccount, createBy
        String ownerAccount = caseFlow.getOwnerAccount();
        String createBy = caseFlow.getCreateBy();
		
        return QueryData.builder()
	        .caseFlowTid(caseFlow.getId())
	        .caseMasterTid(caseFlow.getCaseMasterTid())
	        .flowTime(caseFlow.getFlowTime())
	        .flowCode(flowShowCodeBo)
	        .flowState(flowStateShowCodeBo)
	        .docNo(caseFlow.getDocNo())
	        .openModifyDate(caseFlow.getOpenModifyDate())
	        .ownerAccount(ownerAccount)
	        .ownerName(userRepository.findNameByAccount(ownerAccount))	// sys_user.account
	        .createBy(createBy)
	        .createName(userRepository.findNameByAccount(createBy))
	        .build();
	}

}
