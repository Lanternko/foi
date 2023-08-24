package com.ezcore.tools.htmlDoc.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ezcore.tools.codedetail.controller.BaseController;
import com.ezcore.tools.codedetail.model.exception.ResponseDataException;
import com.ezcore.tools.htmlDoc.dao.SysMenuMapper;
import com.ezcore.tools.htmlDoc.dto.ParentMenuDto;
import com.ezcore.tools.htmlDoc.dto.SysMenuDto;
import com.ezcore.tools.htmlDoc.po.SysMenu;
import com.ezcore.tools.htmlDoc.po.SysMenuExample;
import com.ezcore.tools.htmlDoc.service.SysMenuService;

@Component
public class SysMenuServiceImpl extends BaseController implements SysMenuService {
    final static String JOB_CODE = "sysMenuService";
    @Autowired
    SysMenuMapper sysMenuMapper;

    private List<SysMenuDto> poListToDto(List<SysMenu> data) {
        List<SysMenuDto> result = new ArrayList<>();
        for (SysMenu sysMenu : data) {
            result.add(new SysMenuDto(sysMenu));
        }
        return result;
    }

    @Override
    public List<SysMenuDto> getAll() {
        return poListToDto(sysMenuMapper.selectByExample(null));
    }

    @Override
    public List<SysMenuDto> getByType(int type) {
        SysMenuExample example = new SysMenuExample();
        example.createCriteria().andTypeEqualTo(type);
        return poListToDto(sysMenuMapper.selectByExample(example));
    }

    @Override
    public SysMenuDto get(Long id) {
        return new SysMenuDto(sysMenuMapper.selectByPrimaryKey(id));
    }

    @Override
    public SysMenuDto getByName(String name) {
        SysMenuExample example = new SysMenuExample();
        example.createCriteria().andNameEqualTo(name);
        example.setOrderByClause("menu_id");
        return new SysMenuDto(sysMenuMapper.selectByExample(example).get(0));
    }

    @Override
    public SysMenuDto getById(Long id) {
        return new SysMenuDto(sysMenuMapper.selectByPrimaryKey(id));
    }

    @Override
    public String getPath(String name) throws ResponseDataException {
        StringBuilder path = new StringBuilder();
        SysMenuDto child = getByName(name);
        if (child == null) {
            throw new ResponseDataException(-2, "", "資訊錯誤", "選單不存在", JOB_CODE);
        } else {
            path.append("/" + child.getPath());
            /* 如果沒有上層節點代表是系統目錄，網址後須加/index */
            if (child.getPid() == null) {
                path.append("/index");
            } else {
                /* 照著pid一路往上找路徑 */
                while (child.getPid() != null) {
                    SysMenuDto parent = getById(child.getPid());
                    if (parent != null) {
                        child = parent;
                        path.insert(0, "/" + parent.getPath());
                    } else {
                        throw new ResponseDataException(-2, "", "資訊錯誤", "母節點不存在", JOB_CODE);
                    }
                }
            }
        }
        return path.toString();
    }

    @Override
    public List<ParentMenuDto> menuWithParent() {
        List<ParentMenuDto> result = new ArrayList<>();
        Map<Long, List<SysMenuDto>> menuMap = new HashMap<>();
        menuMap.put(Long.valueOf(0), new ArrayList<>());
        List<SysMenuDto> menuList = getByType(1);

        for (SysMenuDto sysMenuDto : menuList) {
            /* 如果子節點有pid:key = pid, 沒有pid: key = 0 */
            Long mapKey = (sysMenuDto.getPid() != null) ? sysMenuDto.getPid() : Long.valueOf(0);
            menuMap.computeIfAbsent(mapKey, key -> new ArrayList<>());
            menuMap.computeIfPresent(mapKey, (key, value) -> value).add(sysMenuDto);
        }

        /* 按照map做成DTO放進LIST */
        for (Map.Entry<Long, List<SysMenuDto>> entry : menuMap.entrySet()) {
            /* 如果沒有pid */
            if (entry.getKey().compareTo(Long.valueOf(0)) == 0) {
                result.add(ParentMenuDto.builder().childList(entry.getValue()).build());
            } else {
                /* 有pid */
                SysMenuDto paretntMenu = getById(entry.getKey());
                if (paretntMenu != null) {
                    result.add(ParentMenuDto.builder()
                            .parentTitle(paretntMenu.getTitle())
                            .parentName(paretntMenu.getName())
                            .childList(entry.getValue())
                            .build());
                } else { /* 有Pid但table中無此資料 */
                    result.add(ParentMenuDto.builder().childList(entry.getValue()).build());
                }
            }
        }
        return result;
    }
}
