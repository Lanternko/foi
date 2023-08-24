package com.ezcore.foi.ecase.service;

import java.util.List;

import com.ezcore.foi.ecase.model.bo.TreeBo;

public interface ConfigService {

	/**
	 * 取得產業別樹
	 */
	List<TreeBo> getIndustryTree();
	
	/**
	 * 當前使用者是否為金融業者
	 * 1:是 0:否
	 */
	Integer isCompanyUser();
	
	/**
	 * 取得樹狀資料
	 */
	void getTreeNode();
	
}
