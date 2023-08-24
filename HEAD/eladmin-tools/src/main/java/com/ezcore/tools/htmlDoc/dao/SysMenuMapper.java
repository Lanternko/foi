package com.ezcore.tools.htmlDoc.dao;

import java.util.List;

import com.ezcore.tools.htmlDoc.po.SysMenu;
import com.ezcore.tools.htmlDoc.po.SysMenuExample;

public interface SysMenuMapper {
    long countByExample(SysMenuExample example);

    int deleteByPrimaryKey(Long menuId);

    int insert(SysMenu sysMenu);

    int insertSelective(SysMenu sysMenu);

    List<SysMenu> selectByExample(SysMenuExample example);

    SysMenu selectByPrimaryKey(Long menuId);

    int updateByPrimaryKeySelective(SysMenu sysMenu);

    int updateByPrimaryKey(SysMenu sysMenu);
}