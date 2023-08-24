package com.ezcore.foi.wstest.service.impl;

import java.sql.Timestamp;

import org.springframework.beans.factory.annotation.Autowired;

import com.ezcore.common.utils.VerifyInputs;
import com.ezcore.foi.ecase.dao.CaseFlowRepository;
import com.ezcore.foi.ecase.dao.CaseMasterRepository;
import com.ezcore.foi.ecase.dao.entity.CaseFlow;
import com.ezcore.foi.ecase.dao.entity.CaseMaster;
import com.ezcore.foi.wstest.service.ProcessAction;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.common.CodeDetailMap;
import com.ezcore.tools.common.Constants;

import lombok.extern.slf4j.Slf4j;
import me.zhengjie.modules.system.service.SubstituteService;
import me.zhengjie.utils.DateUtil;
import me.zhengjie.utils.SecurityUtils;
import me.zhengjie.utils.StringUtils;

@Slf4j
public abstract class WsDocBaseAction implements ProcessAction {

	/** 案號 */
	protected String caseNo;
	/** 評議動作代碼 */
	protected String process;
	/** 文號 */
	protected String docNo;
	/** 其他參數 */
	protected String other;
	/** 公文時間陣列<br>
	 * 存放位置、內容定義見DocDateType */
	protected Timestamp[] dateParams = new Timestamp[5];
	protected static class DocDateType {
		static final int RECEIVE_DATE = 0; // 收文時間 (sd)
		static final int SIGN_DATE 	  = 1; // 決行時間 (ed)
		static final int ISSUE_DATE   = 2; // 發文時間 (dd)
		static final int APPL_DATE    = 3; // 來文日期 (rd)
		static final int REVICE_DATE  = 4; // 電子來文轉入日期 (reviceD)
		
		static int getOriParamsIndex(int dateParamsIndex) {
			switch (dateParamsIndex) {
			case RECEIVE_DATE: return 4;
			case SIGN_DATE:    return 5;
			case ISSUE_DATE:   return 6;
			case APPL_DATE:    return 7;
			case REVICE_DATE:  return 9;
			default: return -1;
			}
		}
		
		private DocDateType() {}
	}
	
	/** 評議代碼對應的案管代碼 */
	protected CodeDetailDto code;
	/** dateParams的index */
	private int docDateParameter = -1;
	/** 原始傳入參數 */
	private String[] oriParams;
	
	@Autowired
	private CaseMasterRepository caseMasterRepository;
	@Autowired
	private CaseFlowRepository caseFlowRepository;
	@Autowired
	private CodeDetailMap codeDetailMap;
	@Autowired
	private SubstituteService substituteService;
	
	@Override
	public String run(String[] params, CodeDetailDto code) {
		return doProcess(params, code);
	}
	
	/** 前置流程實作區<br>
	 * @return true: 中止流程<br>false: 繼續流程 */
	protected abstract boolean preProcess() throws Exception;
	/** 後置流程實作區 */
	protected abstract void postProcess() throws Exception;

	protected void addNewCaseFlow(String caseNo, Timestamp date, String nextFlowCode) {
		System.out.println("--------------------------");
		System.out.println("案件編號: " + caseNo);	// 公文文號(主文? 後續來文?)
		System.out.print("評議代號: " + process);	
		if (!StringUtils.isEmptyOrNull(other)) {	
			System.out.print(" (公文參數: " + other + ")");			
		}
		System.out.print("\n");
		System.out.println("新增案管流程: " + nextFlowCode);
		System.out.print("日期參數(index): " + code.getProperty3());
		if (!StringUtils.isNotUsed(code.getProperty3())) {
			System.out.print(" (日期: " + date + ")");
		}
		System.out.print("\n");
		
////		1.查案件主檔
////		  1.1.驗證案件主檔存在
////		  1.2.驗證案件不為不為待結(99998)、已結(99999)、歸檔(10048)狀態
////		2.查案件流程代碼
////		  2.1.驗證流程代碼正確性
////		3.新增案件流程(case_flow)
//		
//		CaseMaster master = caseMasterRepository.findByCaseNo(caseNo);
////		1.1
//		VerifyInputs.checkCaseMaster(master);
////		1.2
////		TODO
//		
//		CaseFlow newflow = new CaseFlow();
//		newflow.setId(StringUtils.newUuidStr());
//		newflow.setCaseMasterTid(master.getId());
//		newflow.setFlowTime(date);
//		
//		CodeDetailDto flowCode = codeDetailMap.get(Constants.FLOW_CODE, nextFlowCode);
////		2.1
//		VerifyInputs.checkCode(Constants.FLOW_CODE, flowCode);
//		newflow.setFlowCodeCid(flowCode.getCid());
//		newflow.setFlowStateCid(null);
//		newflow.setDocNo(docNo);
//		newflow.setDocActionCode(nextFlowCode);
//		newflow.setOpenModifyDate(null);
//		newflow.setScopeFlag(flowCode.getProperty2());
//		newflow.setManagerFlag(flowCode.getProperty1());
//		newflow.setOwnerAccount(substituteService.getCurrentOpUser());
//		newflow.setCreateBy(SecurityUtils.getCurrentUsername());
//		newflow.setCreateTime(DateUtil.getSystemTime());
//		
//		caseFlowRepository.saveAndFlush(newflow);
	}

	/** 手動指定新增案件流程時要用的日期 */
	protected void setDocDateParameter(int index) {
		this.docDateParameter = index;
	}
	
	/** 取得原始傳入參數 */
	protected String[] getOriParams() {
		return oriParams;
	}
	
	/** 異動原始傳入參數<br>
	 * !!異動時請小心!! */
	protected void modOriParams(int index, String content) {
		oriParams[index] = content;
	}
	
	protected String logErrMsg(String errMsg) {
		log.error(errMsg);
		return errMsg;
	}

	private String doProcess(String[] params, CodeDetailDto code) {
//		1.傳入參數檢核 + 轉換
//		2.前置流程
//		  2.1.回傳true時中止流程
//		3.新增一筆案件流程
//		  3.1.檢查是否有設定日期參數index (小於0代表未設定，直接用代碼檔property3的值)
//		  3.2.新增案件流程
//		4.後置流程
		
//		1.
		convertInputs(params, code);
		
//		2.
		boolean terminateAfterProcess;
		try {
			terminateAfterProcess = preProcess();			
		} catch (Exception e) {
			return logErrMsg(String.format("評議代碼: %s 執行前置流程時出現異常: %s", process, e.toString()));
		}
		
//		2.1
		if (terminateAfterProcess) {
			return "";
		}
		
		try {
//			3.1
			docDateParameter = getDocDateParameter();
//			3.2
			addNewCaseFlow(caseNo, dateParams[docDateParameter], this.code.getProperty2());
		} catch (NumberFormatException e) {
			return logErrMsg(String.format("評議代碼: %s 日期參數須為有效數字(目前為: %s)", process, this.code.getProperty3()));
		} catch (Exception e1) {
			return logErrMsg(String.format("評議代碼: %s 新增案件流程時出現異常: %s", process, e1.toString()));
		}

		try {
			postProcess();			
		} catch (Exception e) {
			return logErrMsg(String.format("評議代碼: %s 執行後置流程時出現異常: %s", process, e.toString()));
		}
		
		return "";
	}
	
	private void convertInputs(String[] params, CodeDetailDto code) {
//		1. 將輸入參數寫入資料庫備份
//		2. 傳入參數檢核
//		3. 傳入參數轉換
		
		this.oriParams = params;
//		TODO : 這裡要把傳入參數寫入db
		
		this.caseNo = params[1];
		this.process = params[2];
		this.docNo = params[3];
		this.dateParams[DocDateType.RECEIVE_DATE] = DateUtil.parseStringToTimestamp(params[4]);
		this.dateParams[DocDateType.SIGN_DATE] = DateUtil.parseStringToTimestamp(params[5]);
		this.dateParams[DocDateType.ISSUE_DATE] = DateUtil.parseStringToTimestamp(params[6]);
		this.dateParams[DocDateType.APPL_DATE] = DateUtil.parseStringToTimestamp(params[7]);
		this.other = params[8];
		this.dateParams[DocDateType.RECEIVE_DATE] = DateUtil.parseStringToTimestamp(params[9]);
		this.code = code;
	}

	private int getDocDateParameter() {
		return (docDateParameter < 0) ? Integer.valueOf(this.code.getProperty3()) : docDateParameter;
	}
	
}
