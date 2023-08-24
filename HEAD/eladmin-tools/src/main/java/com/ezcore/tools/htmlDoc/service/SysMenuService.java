package com.ezcore.tools.htmlDoc.service;

import java.util.List;

import com.ezcore.tools.codedetail.model.exception.ResponseDataException;
import com.ezcore.tools.htmlDoc.dto.ParentMenuDto;
import com.ezcore.tools.htmlDoc.dto.SysMenuDto;

public interface SysMenuService {
    /**
     * select all
     * @return
     */
    List<SysMenuDto> getAll();
    /**
     * select all where type = type
     * @param type
     * @return
     */
    List<SysMenuDto> getByType(int type);
    /**
     * get by pk
     * @param id
     * @return
     */
    SysMenuDto get(Long id);
    /**
     * get by name
     * @param name
     * @return
     */
    SysMenuDto getByName(String name);
    /**
     * get by id
     * @param id
     * @return
     */
    SysMenuDto getById(Long id);
    /**
     * 依照pid分類children
     * @return
     */
    List<ParentMenuDto> menuWithParent ();
    /**
     * 取得路徑
     * @param name
     * @return
     * @throws ResponseDataException
     */
    String getPath(String name)throws ResponseDataException;
}
