package com.ezcore.foi.ecase.dao.dto;

import java.time.LocalDateTime;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class ChildListDto {
    private Long pCid;
    private String pkind;
    private String pCode;
    private String pName;
    private Long cid;
    private LocalDateTime insDate;
    private String insUsr;
    private LocalDateTime updDate;
    private String updUsr;
    private String kind;
    private String code;
    private String name;
    private Boolean isEnabled;
    private String description;
    private String sortCode;
    private String property1;
    private String property2;
    private String property3;
    private String property4;
    private String property5;
    private String property6;
    private String property7;
    private String property8;
    private String property9;
    private Long childId;
    private Long parentId;
//    private Long id; // from codedetail_filter
//    private Long pid; // from codedetail_filter
//    private Long fid; // from codedetail_filter
    private String option1; // from codedetail_filter
    private String option2; // from codedetail_filter
    private String option3; // from codedetail_filter
}
