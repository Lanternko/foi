package com.ezcore.tools.htmlDoc.dao;

import java.util.List;

import com.ezcore.tools.htmlDoc.po.HtmlDoc;
import com.ezcore.tools.htmlDoc.po.HtmlDocExample;

public interface HtmlDocMapper {
    long countByExample(HtmlDocExample example);

    int deleteByPrimaryKey(Long id);

    int insert(HtmlDoc htmlDoc);

    int insertSelective(HtmlDoc htmlDoc);

    List<HtmlDoc> selectByExample(HtmlDocExample example);

    HtmlDoc selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(HtmlDoc htmlDoc);

    int updateByPrimaryKey(HtmlDoc htmlDoc);

    Long insertReturnId(HtmlDoc htmlDoc);

}