package com.ezcore.foi.ecase.service;

import java.util.List;

import com.ezcore.foi.ecase.dao.dto.HistorySessionInfoDto;
import com.ezcore.foi.ecase.dao.dto.HistorySessionMemberDetailsDto;

public interface SessionMemberService {

	/**
	 * 依條件查詢歷屆委員清單
	 */
	List<HistorySessionInfoDto> getList();
	
	/**
	 * 查詢代碼表取得屆次<br>
	 * 使用屆次識別碼取得委員清單<br>
	 * 查詢迴避公司清單
	 */
	HistorySessionMemberDetailsDto get(String session);
	
	/**
	 * sessionCid為空值時執行新增<br>
	 * 其餘執行更新
	 */
	void update(HistorySessionMemberDetailsDto request);
	
	/**
	 * 刪除指定屆次
	 */
	void delete(Integer session);
	
	/**
	 * 確認指定屆次是否與大會有關連
	 */
	boolean deleteCheck(Integer session);
	
}
