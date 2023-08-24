package com.ezcore.foi.ecase.model.bo;

import java.io.Serializable;
import java.sql.Timestamp;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class Eflow1000BoData implements Serializable {

	private static final long serialVersionUID = -6064718482132999893L;

	@ApiModelProperty(value = "專案類別中文")
    private String caseClassName;

    @ApiModelProperty(value = "進件方式中文")
    private String inMethodName;

    @ApiModelProperty(value = "案號")
    private String caseNo;

    @ApiModelProperty(value = "申請人")
    private String applicantNames;

    @ApiModelProperty(value = "爭議對象(公司)")
    private String companyName;

    @ApiModelProperty(value = "爭議類型")
    private String disputeKindName;

    @ApiModelProperty(value = "申請日(含時間)")
    private Timestamp caseDate;

    @ApiModelProperty(value = "退回原因")
    private String memoText;

    @ApiModelProperty(value = "案件主檔鍵值")
    private String caseMasterTid;

    @ApiModelProperty(value = "流程節點識別碼")
    private String caseEflowTid;

    @ApiModelProperty(value = "移交編號/首出送出日")
    private String processNo;
    
}