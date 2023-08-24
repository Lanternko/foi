package com.ezcore.foi.ecase.model.response.tmpcasemanager;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@JsonIgnoreProperties(ignoreUnknown = true)
public class TmpCaseManager101Response  {
    
	@NonNull
    @ApiModelProperty(value = "案件主要識別碼")
    private String caseMasterTid;
	
	@NonNull
    @ApiModelProperty(value = "申請人姓名")
    private String applicantName;
	
	@NonNull
    @ApiModelProperty(value = "案件編號")
    private String caseNo;
	
	@NonNull
    @ApiModelProperty(value = "案件類別")
    private String caseClass;
	
	@NonNull
    @ApiModelProperty(value = "案件流程")
    private String caseFlow;
	
	// 構造函數
    public TmpCaseManager101Response(String caseMasterTid, String applicantName, String caseNo, String caseClass, String caseFlow) {
        this.caseMasterTid = caseMasterTid;
        this.applicantName = applicantName;
        this.caseNo = caseNo;
        this.caseClass = caseClass;
        this.caseFlow = caseFlow;
    }
    public TmpCaseManager101Response() {
        this.caseMasterTid = "案件識別值1";
        this.applicantName = "申請人姓名1";
        this.caseNo = "123121123";
        this.caseClass = "評議";
        this.caseFlow = "結案";
    }
    public TmpCaseManager101Response(Integer req) {
        this.caseMasterTid = "案件識別值1";
        this.applicantName = "申請人姓名2";
        this.caseNo = "222222222";
        this.caseClass = "評議";
        this.caseFlow = "結案";
    }

}
