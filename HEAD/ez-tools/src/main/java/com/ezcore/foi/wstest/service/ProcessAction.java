package com.ezcore.foi.wstest.service;

import com.ezcore.tools.codedetail.dto.CodeDetailDto;

public interface ProcessAction {

	/** 初始檢查/轉換參數 */
	String run(String[] params, CodeDetailDto code);

}
