package com.ezcore.tools.htmlDoc.service;

import java.util.List;

import com.ezcore.tools.codedetail.model.exception.ResponseDataException;
import com.ezcore.tools.htmlDoc.po.HtmlDoc;
import com.ezcore.tools.htmlDoc.dto.HtmlDocDto;
import com.ezcore.tools.htmlDoc.po.HtmlContent;

public interface HtmlDocService {
    /**
     * 建立要更新的HtmlDoc物件
     * @param updateData
     * @return
     * @throws ResponseDataException
     */
    HtmlDoc updateHtmlDoc(HtmlDocDto updateData) throws ResponseDataException;
    /**
     * 建立要更新的HtmlContent物件
     * @param htmlDocId,content
     * @return
     */
    List<HtmlContent> createHtmlContentList(Long htmlDocId, String content);
    /**
     * 刪除原本的content
     * @param updateData
     */
    void deleteContent(Long htmlDocId);
    /**
     *  用html_doc找到所有html_content
     * @param htmlDocId
     * @return
     */
    String getContent(Long htmlDocId);
    /**
     * 
     * @param htmlDocId
     * @throws ResponseDataException
     */
    void delete (Long htmlDocId) throws ResponseDataException;
}
