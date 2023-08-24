package com.ezcore.foi.ecase.service;

public interface CaseUserService {

	/**
	 * 取得申請人名(字串)
	 */
	String getApplicantNames(String caseMasterTid);
	
	/**
	 * 取得代理人名(字串)
	 */
	String getAgentNames(String caseMasterTid);
	
}
