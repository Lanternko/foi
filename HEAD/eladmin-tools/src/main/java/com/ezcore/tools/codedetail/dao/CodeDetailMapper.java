package com.ezcore.tools.codedetail.dao;

import java.util.List;

import com.ezcore.tools.codedetail.po.CodeDetail;
import com.ezcore.tools.codedetail.po.CodeDetailExample;

public interface CodeDetailMapper {
    int deleteByPrimaryKey(Long cid);

    int insert(CodeDetail codeDetail);

    int insertSelective(CodeDetail codeDetail);

    List<CodeDetail> selectByExample(CodeDetailExample example);

    CodeDetail selectByPrimaryKey(Long cid);

    int updateByPrimaryKeySelective(CodeDetail codeDetail);

    int updateByPrimaryKey(CodeDetail codeDetail);

    List<String> selectGuiYear();

    List<String> selectGuiPeriodByYear(String year);

    Long insertReturnId(CodeDetail codeDetail);

}