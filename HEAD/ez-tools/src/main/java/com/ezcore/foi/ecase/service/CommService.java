package com.ezcore.foi.ecase.service;

import java.util.List;

import com.ezcore.foi.ecase.dao.dto.ChildKindListDto;
import com.ezcore.foi.ecase.dao.dto.GetCodeDto;
import com.ezcore.foi.ecase.dao.entity.Codedetail;
import com.ezcore.foi.ecase.dao.entity.WorkGroupUser;
import com.ezcore.foi.ecase.dao.entity.custom.ChildListProjection;
import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
import com.ezcore.foi.ecase.model.response.comm.Comm03Response;
import com.ezcore.foi.ecase.model.response.comm.Comm04Response;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;
public interface CommService {

	/**
	 * 取得共用代碼檔資料
	 */
	CodeDetailDto getCodes(GetCodeDto req);
	
	/**
	 * 取得共用代碼檔資料 (但只有kind沒有code)
	 */
	List<CodeDetailDto> findByKind(String kind);
	
	/**
	 * 取得下拉子項
	 */
	List<ChildKindListDto> getChildList(String parentKind, String parentCode, String childKind);

	/**
	 * 取得工作群組代碼
	 */
	List<Comm04Response> getWorkGroupUsers(String workGroupCode);
	
	/**
	 * 操作者為管理者帳號
	 */
	boolean isCurrentUserAdmin();

	/**
	 * 為主管群組
	 */
	List<CodeDetailDto> getManagerUser();
	
	/**
	 * 取得當前使用者所在工作群組
	 */
	List<CodeDetailDto> getCurrentUserWorkGroups();
}
