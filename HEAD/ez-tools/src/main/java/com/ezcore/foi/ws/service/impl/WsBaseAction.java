package com.ezcore.foi.ws.service.impl;

import java.sql.Timestamp;

import com.ezcore.foi.ecase.dao.entity.Codedetail;
import com.ezcore.foi.ws.service.ProcessAction;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;

import me.zhengjie.utils.StringUtils;

public abstract class WsBaseAction implements ProcessAction {

	/** 案號 */
	protected String caseNo;
	/** 評議動作代碼 */
	protected String process;
	/** 文號 */
	protected String docNo;
	/** 收文時間 */
	protected Timestamp sd;
	/** 決行時間 */
	protected Timestamp ed;
	/** 發文時間 */
	protected Timestamp dd;
	/** 來文日期 */
	protected Timestamp rd;
	/** 其他 */
	protected String other;
	/** 電子來文轉入日期 */
	protected Timestamp reviceD;
	/** 評議代碼對應的案管代碼 */
	protected CodeDetailDto code;
	
	@Override
	public void init(String[] params, CodeDetailDto code) {
		convertInputs(params, code);
		doProcess();
	}
	
	protected abstract void doProcess();
	protected abstract void preProcess();
	protected abstract void postProcess();

	protected void addCaseFlow(String caseNo, Timestamp date, String nextFlowCode) {
		System.out.println("評議代號: " + process);	
		if (code.getParentId() != null) {	
			System.out.println("公文參數: " + other);			
		}
		System.out.println("新增案管流程: " + code.getProperty2() + " (日期參數使用: " +
				 (StringUtils.isNotUsed(code.getProperty3()) ? "(程式裡定義)" : code.getProperty3()) +
						")");
	}
	
	protected void updateCaseMaster(String caseNo, String caseFlowTid) {
		System.out.println("更新案件主檔");
	}
	
	private void convertInputs(String[] params, CodeDetailDto code) {
//		1. 傳入參數檢核
//		2. 傳入參數轉換
		
		this.caseNo = params[1];
		this.process = params[2];
		this.docNo = params[3];
		this.sd = parseDate(params[4]);
		this.ed = parseDate(params[5]);
		this.dd = parseDate(params[6]);
		this.rd = parseDate(params[7]);
		this.other = params[8];
		this.reviceD = parseDate(params[9]);
		this.code = code;
	}
	
	private Timestamp parseDate(String date) {
//		1. 民國年轉西元年
//		2. parse為java.sql.Timestamp
		
		return null;
	}
	
}
