package com.ezcore.foi.ecase.model.request.tmpcasemanager;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@NoArgsConstructor
@SuperBuilder
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class TmpCaseManager103Request {
    
    @ApiModelProperty(value = "公文字號-年", required = false)
    private String docYear;

    @ApiModelProperty(value = "公文字號-字", required = false)
    private String docWord;

    @ApiModelProperty(value = "公文字號-號", required = false)
    private String docNo;

    @ApiModelProperty(value = "案號", required = false)
    private String caseNo;
}
