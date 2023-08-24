package com.ezcore.foi.ecase.model.request.tmpcasemanager;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class TmpCaseManager101Request {
    
    @ApiModelProperty(value = "申請人姓名")
    private String applicantName;

    @ApiModelProperty(value = "公文字號-年")
    private String docYear;

    @ApiModelProperty(value = "公文字號-字")
    private String docWord;

    @ApiModelProperty(value = "公文字號-號")
    private String docNo;

    @ApiModelProperty(value = "案號")
    private String caseNo;
}
