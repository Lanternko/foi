package com.ezcore.foi.ecase.model.request.tmpcasemanager;

import java.util.List;

import com.ezcore.foi.ecase.model.bo.casedatabo.QueryColumn;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@NoArgsConstructor
@AllArgsConstructor
@SuperBuilder
@JsonIgnoreProperties(ignoreUnknown = true)
public class TmpCaseManager102Request {
    
    @ApiModelProperty(value = "收件方式")
    private List<Integer> caseTypeCid;

    @ApiModelProperty(value = "進件方式")
    private List<Integer> inMethodCid;

    @ApiModelProperty(value = "專案類別(進件類別)")
    private List<Integer> caseClassCid;

    @ApiModelProperty(value = "用在限定的組合條件")
    private List<QueryColumn> logicCondition;

    @ApiModelProperty(value = "產業別")
    private Integer industryCid;

    @ApiModelProperty(value = "爭議類型")
    private Integer disputeKindCid;

    @ApiModelProperty(value = "爭議公司")
    private String compnayName;

    @ApiModelProperty(value = "案號")
    private String caseNo;

    // 新增的字段
    @ApiModelProperty(value = "案件承辦人")
    private String centerOwnerAccount;

    @ApiModelProperty(value = "案件日期(起)")
    private Long caseDateBegin;

    @ApiModelProperty(value = "案件日期(迄)")
    private Long caseDateEnd;

    @ApiModelProperty(value = "案件日期")
    private Long caseDate;

    @ApiModelProperty(value = "申請人姓名")
    private String applicantName;

    @ApiModelProperty(value = "申請人證號")
    private String applicantIdNo;

    @ApiModelProperty(value = "電話")
    private String phoneNo;

    @ApiModelProperty(value = "代理人姓名")
    private String agentName;

    @ApiModelProperty(value = "現在流程節點")
    private String leasteCaseFlowTid;

    @ApiModelProperty(value = "續辦否")
    private Integer continueStatusCid;

    @ApiModelProperty(value = "結案否")
    private Boolean isClose;

    @ApiModelProperty(value = "案件摘要")
    private String caseMemoAnotation;

    @ApiModelProperty(value = "來文者")
    private String receiveName;

    @ApiModelProperty(value = "原申請案號")
    private String AppealCaseNo;

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

    // 其他屬性...
}
