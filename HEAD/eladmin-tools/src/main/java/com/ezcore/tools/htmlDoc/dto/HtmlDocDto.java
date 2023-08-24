package com.ezcore.tools.htmlDoc.dto;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
public class HtmlDocDto {
    protected Date beginDate;

    protected Date endDate;

    protected String content;

    protected String title;

    protected Long id;

    protected Long htmlDocId;

    protected Date insDate;

    protected String insUsr;

    protected Date updDate;

    protected String updUsr;

    protected String memo;

}
