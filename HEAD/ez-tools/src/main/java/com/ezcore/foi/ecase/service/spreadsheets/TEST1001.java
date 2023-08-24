package com.ezcore.foi.ecase.service.spreadsheets;

import java.util.Map;

import org.springframework.stereotype.Service;

import me.zhengjie.service.impl.BaseXlsxCreator;

/**
 * 產報表範例程式，會產出代號為test1001的報表<br>
 * service annotation後請加註報表正式代號，必須與codedetail內代碼相同
 */
@Service("test1001")
public class TEST1001 extends BaseXlsxCreator {

	@Override
	public String create(Map<String, String> params) {
		String filepath = "";
		
//		將sql查出的大量資料寫入報表
		filepath = createWorkbookFromTemplate(params);
		
//		於特定欄位寫入資料
//		(在第1頁的第2行第7列寫入登入者帳號)
//		filepath = writeSpecificPosition(filepath, 1, 2, 7, SecurityUtils.getCurrentUsername());
		filepath = writeSpecificPosition(filepath, 1, 2, 7, "yobdcs");
//		(在第1頁的第1行第7列寫入自訂格式的時間區間)
		filepath = writeSpecificPosition(filepath, 1, 1, 7, String.format("%s至%s", params.get("beginDate").substring(0, 7), params.get("endDate").substring(0, 7)));
		
		return filepath; 
	}

}
