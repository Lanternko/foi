package com.ezcore.foi.ecase.service;

import java.util.List;

import com.ezcore.foi.ecase.dao.entity.CaseFlow;
import com.ezcore.foi.ecase.dao.entity.Codedetail;
import com.ezcore.foi.ecase.model.bo.caseflowbo.EditData;
import com.ezcore.foi.ecase.model.bo.caseflowbo.QueryData;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.codedetail.po.CodeDetail;

public interface CaseFlowService {

	/**
	 * 新增一筆進度
	 */
	CaseFlow addCaseFlow(EditData req);
	
	/**
	 * 刪除一筆進度
	 */
	void delCaseFlow(String caseMasterTid, String caseFlowTid);
	
	/**
	 * 修改一筆進度
	 */
	CaseFlow modCaseFlow(EditData req);
	
	/**
	 * 取得單一案件流程
	 */
	List<QueryData> getCaseFlow(String caseMasterTid);
	
	/**
	 * 取得案件流程階段可下拉列表
	 */
	List<CodeDetailDto> getFlowCodeByState(String caseTypeCode, String caseMasterTid);
	
}
