package com.ezcore.tools.htmlHelper.dao;

import java.util.List;

import com.ezcore.tools.htmlHelper.po.HtmlHelper;
import com.ezcore.tools.htmlHelper.po.HtmlHelperExample;

public interface HtmlHelperMapper {
    long countByExample(HtmlHelperExample example);

    int deleteByPrimaryKey(Long id);

    int insert(HtmlHelper htmlHelper);

    int insertSelective(HtmlHelper htmlHelper);

    List<HtmlHelper> selectByExample(HtmlHelperExample example);

    HtmlHelper selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(HtmlHelper htmlHelper);

    int updateByPrimaryKey(HtmlHelper htmlHelper);
    
    Long insertReturnId(HtmlHelper htmlHelper);

}