package com.ezcore.tools.htmlDoc.dto;


import com.ezcore.tools.htmlDoc.po.SysMenu;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@NoArgsConstructor
@SuperBuilder
@JsonInclude(JsonInclude.Include.ALWAYS)
@JsonIgnoreProperties(ignoreUnknown = true)
public class SysMenuDto {
    private Long menu_id;

    private String title;

    private String name;

    private String component;

    private String path;

    private Long pid;

    public SysMenuDto(SysMenu sysMenu){
        this.menu_id = sysMenu.getMenuId();
        this.title = sysMenu.getTitle();
        this.name = sysMenu.getName();
        this.component = sysMenu.getComponent();
        this.path = sysMenu.getPath();
        this.pid = sysMenu.getPid();
    }
}
