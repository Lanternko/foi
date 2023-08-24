package com.ezcore.tools.codedetail.service;

import java.util.List;

import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.codedetail.dto.CodeDetailFilterDto;

public interface CodeDetailService {
        /* static method reload */

    /**
     * 用Kind取得物件LIST
     * @param kind
     * @return List CodeDetailDto
     */
    List<CodeDetailDto> getList(String kind);
    /**
     * 用Kind與code取得物件
     * @param kind
     * @param code
     * @return CodeDetailDto
     */
    CodeDetailDto getCodeDetail(String kind,String code);
    /**
     * 用id取得物件
     * @param id
     * @return CodeDetailDto
     */
    CodeDetailDto getCodeDetail(Long cid);

    /**
     * 新增
     * @param data
     */
    CodeDetailDto insert(CodeDetailDto data);
    /**
     * 更新
     * @param data
     */
	void update(CodeDetailDto data);
    /**
     * 刪除
     * @param cid
     */
	void delete(Long cid);
    /**
     * 取得父節點選單
     * @param childKind
     * @return
     */
    List<CodeDetailDto> parentOptionList(String childKind);
    /**
     * 取得子節點
     * @param parentId
     * @return
     */
    List<CodeDetailDto> childList(Long parentId);
    /**
     * 取得子節點KIND
     * @param parentKind
     * @return
     */
    String childKind(String parentKind);
    /**
     * 更新Filter code
     * @param codeDetailDto
     */
    void updateFilterCode(CodeDetailFilterDto dto);
}
