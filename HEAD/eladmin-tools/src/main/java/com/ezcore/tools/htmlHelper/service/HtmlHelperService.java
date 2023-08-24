package com.ezcore.tools.htmlHelper.service;

import java.util.List;

import com.ezcore.tools.codedetail.model.exception.ResponseDataException;
import com.ezcore.tools.htmlHelper.dto.HelperContentDto;

public interface HtmlHelperService {
    /**
     * 更新
     * @param updateData
     * @throws ResponseDataException
     */
    void update( HelperContentDto updateData) throws ResponseDataException;
    /**
     * select all
     * @return
     */
    List<HelperContentDto> getAll();
    /**
     * 新增
     * @param updateData
     * @return
     * @throws ResponseDataException
     */
    HelperContentDto insert(HelperContentDto updateData)throws ResponseDataException;
    /**
     * get by id
     * @param id
     * @return
     * @throws ResponseDataException
     */
    HelperContentDto get(Long id) throws ResponseDataException;
    /**
     * 刪除
     * @param helperId
     * @throws ResponseDataException
     */
    void delete(Long helperId) throws ResponseDataException;
    /**
     * 用menu name取helper
     * @param menuId
     * @return
     * @throws ResponseDataException
     */
    HelperContentDto getByMenuCode(String menuName) throws ResponseDataException;

}

