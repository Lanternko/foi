package com.ezcore.foi.ecase.model.response.tmpcasemanager;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@JsonIgnoreProperties(ignoreUnknown = true)
public class TmpCaseManager102Response {
    
	@NonNull
    @ApiModelProperty(value = "案件主要識別碼")
    private String caseMasterTid;
    
	@NonNull
    @ApiModelProperty(value = "序號")
    private Integer seqNo;
    
	@NonNull
    @ApiModelProperty(value = "案件類型")
    private String caseType;
    
	@NonNull
    @ApiModelProperty(value = "申請人姓名")
    private String applicantName;
    
	@NonNull
    @ApiModelProperty(value = "案件編號")
    private String caseNo;
    
	@NonNull
    @ApiModelProperty(value = "案件流程")
    private String caseFlow;
    
	@NonNull
    @ApiModelProperty(value = "糾紛種類")
    private String disputeKind;
    
	@NonNull
    @ApiModelProperty(value = "公司名稱")
    private String companyName;
	
	// 無參數構造函數，填入示例值
    public TmpCaseManager102Response() {
        this.caseMasterTid = "案件識別職";
        this.seqNo = 1; // 您可以根據需要更改此值
        this.caseType = "電話";
        this.applicantName = "林OO";
        this.caseNo = "1231211";
        this.caseFlow = "結案";
        this.disputeKind = "其他爭議";
        this.companyName = "台北富邦商業銀行股份有限公司";
    }
}
