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
public class Eflow2000BoHistoryData implements Serializable {

	private static final long serialVersionUID = 8616591989611081339L;

    @ApiModelProperty(value = "案號")
    private String caseNo;

    @ApiModelProperty(value = "案件識別值")
    private String caseMasterTid;

    @ApiModelProperty(value = "申請人名")
    private String applicantNames;

    @ApiModelProperty(value = "退回原因")
    private String memoText;

    @ApiModelProperty(value = "狀態(結案/退回/處理中)")
    private String statusText;

    // Additional fields from your example data:
    @ApiModelProperty(value = "案件類型名稱")
    private String caseClassName;

    @ApiModelProperty(value = "進件方式名稱")
    private String inMethodName;

    @ApiModelProperty(value = "公司名稱")
    private String companyName;

    @ApiModelProperty(value = "爭議種類名稱")
    private String disputeKindName;

    @ApiModelProperty(value = "案件日期")
    private Timestamp caseDate;

    @ApiModelProperty(value = "案件流程識別值")
    private String caseEflowTid;

    @ApiModelProperty(value = "流程編號")
    private String processNo;
}
