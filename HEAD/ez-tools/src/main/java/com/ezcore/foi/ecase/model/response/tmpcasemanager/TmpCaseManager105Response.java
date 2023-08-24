package com.ezcore.foi.ecase.model.response.tmpcasemanager;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class TmpCaseManager105Response {

    @NonNull
    @ApiModelProperty(value = "案件識別值")
    private String caseMasterTid;

    @NonNull
    @ApiModelProperty(value = "申請人姓名")
    private String applicantName;

    @NonNull
    @ApiModelProperty(value = "案號")
    private String caseNo;

    @NonNull
    @ApiModelProperty(value = "案件類型")
    private String caseClass;

    @NonNull
    @ApiModelProperty(value = "進件方式")
    private String inMethod;

    @NonNull
    @ApiModelProperty(value = "申請日期")
    private Long caseDate;

    @NonNull
    @ApiModelProperty(value = "爭議對象")
    private String companyName;

    @NonNull
    @ApiModelProperty(value = "標籤")
    private String tags;
    
    // No Args:sample
    public TmpCaseManager105Response() {
        this.caseMasterTid = "123121123";
        this.applicantName = "申請人姓名1";
        this.caseNo = "123121123";
        this.caseClass = "評議";
        this.inMethod = "書面郵件";
        this.caseDate = 1684160541033L;
        this.companyName = "富幫人壽";
        this.tags = "樂齡,身障";
    }
}
