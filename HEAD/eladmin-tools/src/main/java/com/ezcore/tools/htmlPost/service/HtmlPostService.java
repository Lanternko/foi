package com.ezcore.tools.htmlPost.service;

import java.util.List;

import com.ezcore.tools.codedetail.model.exception.ResponseDataException;
import com.ezcore.tools.htmlPost.dto.HtmlPostDto;

public interface HtmlPostService {
    /**
     * 更新
     * @param updateData
     * @throws ResponseDataException
     */
    void update (HtmlPostDto updateData)throws ResponseDataException;
    /**
     * select all
     * @return
     */
    List<HtmlPostDto> getAll();
    /**
     * 
     * @param updateData
     * @return
     * @throws ResponseDataException
     */
    HtmlPostDto insert(HtmlPostDto updateData)throws ResponseDataException;
    /**
     * get by id
     * @param id
     * @return
     * @throws ResponseDataException
     */
    HtmlPostDto get(Long id) throws ResponseDataException;
    /**
     * 刪除
     * @param id
     * @throws ResponseDataException
     */
    void delete(Long id) throws ResponseDataException;
    /**
     * 照display選擇
     * @param type
     * @return
     */
    List<HtmlPostDto> getByDisplayType(String type);
}
