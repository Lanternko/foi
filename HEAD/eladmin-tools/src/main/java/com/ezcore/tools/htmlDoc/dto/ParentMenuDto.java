package com.ezcore.tools.htmlDoc.dto;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class ParentMenuDto {
    private String parentName;
    private String parentTitle;
    private List<SysMenuDto> childList;
}
