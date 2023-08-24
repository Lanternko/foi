package me.zhengjie.service;

import java.util.Map;

public interface SpreadSheetService {

	/**
	 * 報表產生邏輯，依種類可有不同實作
	 */
	String create(Map<String, String> params);
	
}
