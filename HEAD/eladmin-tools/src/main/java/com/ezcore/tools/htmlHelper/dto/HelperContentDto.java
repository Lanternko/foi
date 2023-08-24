package com.ezcore.tools.htmlHelper.dto;


import com.ezcore.tools.htmlDoc.dto.HtmlDocDto;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.experimental.SuperBuilder;

@Getter
@Setter
@SuperBuilder
@NoArgsConstructor
@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
public class HelperContentDto extends HtmlDocDto{

    private String sysMenuTitle;

    private String sysMenuName;

    private int windowSize;

}
