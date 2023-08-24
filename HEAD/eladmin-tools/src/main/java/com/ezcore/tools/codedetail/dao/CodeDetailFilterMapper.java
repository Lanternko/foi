package com.ezcore.tools.codedetail.dao;

import java.util.List;

import com.ezcore.tools.codedetail.po.CodeDetailFilter;
import com.ezcore.tools.codedetail.po.CodeDetailFilterExample;

public interface CodeDetailFilterMapper {
    long countByExample(CodeDetailFilterExample example);

    int deleteByPrimaryKey(Long id);

    int insert(CodeDetailFilter filter);

    int insertSelective(CodeDetailFilter filter);

    List<CodeDetailFilter> selectByExample(CodeDetailFilterExample example);

    CodeDetailFilter selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(CodeDetailFilter filter);

    int updateByPrimaryKey(CodeDetailFilter filter);
}