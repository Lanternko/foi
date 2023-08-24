package com.ezcore.tools.common;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.codedetail.service.CodeDetailService;

/**
 * 系統codedetail查詢工具<br>
 * 此class為現有com.ezcore.tools.codedetail.service.impl.CodeDetailServiceImpl的包裝<br>
 * 用途在於:<br>
 * 1.區隔與取codedetail無直接關聯的方法<br>
 * 2.避免調整與codedetail相關程式、結構時會發生的大量修改
 */
@Component
public class CodeDetailMap {

//	@Autowired
//	private CodeDetailService codeDetailService;

	private static CodeDetailService codeDetailService;


    @Autowired
    public void setCodeDetailService(CodeDetailService codeDetailService) {
        CodeDetailMap.codeDetailService = codeDetailService;
    }
//	@Autowired
//	private CodeDetailLoader codeDetailLoader;

	/**
	 * 取得單一代碼
	 * @return 對應table id的單一資料列
	 */
	public static CodeDetailDto get(Long cid) {
		CodeDetailDto dto = null;
		try {
			dto = codeDetailService.getCodeDetail(cid);
		} catch (Exception e) {
			return null;
		}
		return dto;
	}
	
	/**
	 * 取得單一代碼
	 * @return 對應kind、code欄位值的單一資料列
	 */
	public static CodeDetailDto get(String kind, String code) {
		CodeDetailDto dto = null;
		try {
			dto = codeDetailService.getCodeDetail(kind, code);
		} catch (Exception e) {
			return null;
		}
		return dto;
	}
	
	/**
	 * 取得相同kind的代碼list
	 * @return 對應kind欄位值的所有資料列
	 */
	public static List<CodeDetailDto> get(String kind) {
		List<CodeDetailDto> list = null;
		try {
			list = codeDetailService.getList(kind);
		} catch (Exception e) {
			return Collections.emptyList();
		}
		return list;
	}
	
	/**
	 * 取得相同kind的代碼list，並以sort_code排序
	 * @return 對應kind欄位值的所有資料列
	 */
	public static List<CodeDetailDto> getAndOrderBySortCode(String kind) {
	    List<CodeDetailDto> rtn = get(kind);
	    Collections.sort(rtn, (c1, c2) -> c2.getSortCode().compareTo(c1.getSortCode()));
	    return rtn;
	}

	
	/**
	 * 新增一筆代碼
	 */
	public static CodeDetailDto insert(CodeDetailDto data) {
		return codeDetailService.insert(data);
	}
	
	/**
	 * 使用cid刪除對應代碼
	 */
	public static void delete(Long cid) {
		codeDetailService.delete(cid);
	}
	
//	/**
//	 * 重新載入代碼檔至記憶體
//	 */
//	public void reload() {
//		codeDetailLoader.load();
//	}
	
}
