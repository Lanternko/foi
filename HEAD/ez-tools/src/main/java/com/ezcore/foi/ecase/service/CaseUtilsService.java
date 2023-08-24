package com.ezcore.foi.ecase.service;

import java.util.List;
import java.util.Map;

public interface CaseUtilsService {

	/**
	 * 取得某案件特定目的寄信紀錄
	 */
	List<String> getMailLogSimple();

	/**
	 * 取得某類型的郵件範本(已套用變數)
	 */
	Map<String,String> getEmailContent(String jobCode , String caseMasterTid ,String mailCode, Map<String, String> argMaps);
	

}
