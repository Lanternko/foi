package com.ezcore.tools.htmlDoc.dao;

import java.util.List;

import com.ezcore.tools.htmlDoc.po.HtmlContent;
import com.ezcore.tools.htmlDoc.po.HtmlContentExample;

public interface HtmlContentMapper {
    long countByExample(HtmlContentExample example);

    int deleteByPrimaryKey(Long id);

    int insert(HtmlContent htmlContent);

    int insertSelective(HtmlContent htmlContent);

    List<HtmlContent> selectByExample(HtmlContentExample example);

    HtmlContent selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(HtmlContent htmlContent);

    int updateByPrimaryKey(HtmlContent htmlContent);
}