package com.ezcore.foi.ws.service;

import com.ezcore.tools.codedetail.dto.CodeDetailDto;

public interface ProcessAction {

	/** 初始檢查/轉換參數 */
	void init(String[] params, CodeDetailDto code);

}
