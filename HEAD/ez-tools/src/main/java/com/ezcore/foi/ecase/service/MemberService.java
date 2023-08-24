package com.ezcore.foi.ecase.service;

import java.util.List;

import com.ezcore.foi.ecase.dao.dto.MemberSeqNoModifyDto;
import com.ezcore.foi.ecase.model.bo.MemberBo;

public interface MemberService {

	/**
	 * 依條件查詢委員資料清單<br>
	 * 有查到時回傳為list
	 */
	List<MemberBo> getList(Long memberTypeCid);
	
	/**
	 * 依條件查詢委員資料清單<br>
	 * 有查到時回傳為單一物件
	 */
	MemberBo get(Long memberTypeCid, String id);
	
	/**
	 * 新增或異動Member資料表
	 */
	void update(MemberBo req);
	
	/**
	 * 確認id存在對應資料後<br>
	 * 對該id對應type的所有Member進行重新排序
	 */
	void resort(List<MemberSeqNoModifyDto> req);

	
}
