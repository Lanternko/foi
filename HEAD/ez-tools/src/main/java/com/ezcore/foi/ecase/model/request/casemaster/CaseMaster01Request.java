package com.ezcore.foi.ecase.model.request.casemaster;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

import com.ezcore.foi.ecase.model.bo.casedatabo.QueryColumn;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class CaseMaster01Request implements Serializable {
	
	private static final long serialVersionUID = -285033893239536216L;

    @ApiModelProperty(value = "收件方式")
    private List<Long> caseTypeCid;

    @ApiModelProperty(value = "進件方式")
    private List<Long> inMethodCid;

    @ApiModelProperty(value = "專案類別(進件類別)")
    private List<Long> caseClassCid;

    @ApiModelProperty(value = "用在限定的組合條件")
    private List<QueryColumn> logicCondition;

    @ApiModelProperty(value = "產業別")
    private Long industryCid;

    @ApiModelProperty(value = "爭議類型")
    private Long disputeKindCid;

    @ApiModelProperty(value = "爭議公司")
    private String compnayName;

    @ApiModelProperty(value = "案號")
    private String caseNo;

    @ApiModelProperty(value = "案件承辦人")
    private String centerOwnerAccount;

    @ApiModelProperty(value = "案件日期(起)")
    private Timestamp caseDateBegin;

    @ApiModelProperty(value = "案件日期(迄)")
    private Timestamp caseDateEnd;

    @ApiModelProperty(value = "案件日期")
    private Timestamp caseDate;

    @ApiModelProperty(value = "申請人姓名")
    private String applicantName;

    @ApiModelProperty(value = "申請人證號")
    private String applicantIdNo;

    @ApiModelProperty(value = "電話")
    private String phoneNo;

    @ApiModelProperty(value = "代理人姓名")
    private String agentName;

    @ApiModelProperty(value = "現在流程節點")
    private String latestCaseFlowTid;

    @ApiModelProperty(value = "續辦否")
    private Long continueStatusCid;

    @ApiModelProperty(value = "結案否")
    private Boolean isClose;

    @ApiModelProperty(value = "案件摘要")
    private String caseMemoAnotation;

    @ApiModelProperty(value = "來文者")
    private String receiveName;

    @ApiModelProperty(value = "原申請案號")
    private String appealCaseNo;

    @ApiModelProperty(value = "請託立委姓名")
    private String refName;

    @ApiModelProperty(value = "關鍵字")
    private String keyword;

    @ApiModelProperty(value = "公文字號-年")
    private String docYear;

    @ApiModelProperty(value = "公文字號-字")
    private String docWord;

    @ApiModelProperty(value = "公文字號-號")
    private String docNo;

    @ApiModelProperty(value = "續辦案號")
    private String preCaseNo;
	
}
