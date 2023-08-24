package com.ezcore.tools.htmlPost.dao;

import java.util.List;

import com.ezcore.tools.htmlPost.po.HtmlPost;
import com.ezcore.tools.htmlPost.po.HtmlPostExample;

public interface HtmlPostMapper {
    long countByExample(HtmlPostExample example);

    int deleteByPrimaryKey(Long id);

    int insert(HtmlPost post);
    
    int insertReturnId(HtmlPost post);

    int insertSelective(HtmlPost post);

    List<HtmlPost> selectByExample(HtmlPostExample example);

    HtmlPost selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(HtmlPost post);

    int updateByPrimaryKey(HtmlPost post);
}