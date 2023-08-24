package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class Result implements Serializable {

	private static final long serialVersionUID = -3424072246040765200L;

	@NonNull
    @ApiModelProperty(value = "案件識別值")
    private String caseMasterTid;

    @NonNull
    @ApiModelProperty(value = "收件方式")
    private ShowCodeBo caseType;

    @NonNull
    @ApiModelProperty(value = "進件方式")
    private ShowCodeBo inMethod;

    @NonNull
    @ApiModelProperty(value = "專案類型/進件類型")
    private ShowCodeBo caseClass;

    @NonNull
    @ApiModelProperty(value = "案件編號")
    private String caseNo;

    @NonNull
    @ApiModelProperty(value = "申請人資訊(人名串接文字)")
    private String applicantText;

    @NonNull
    @ApiModelProperty(value = "爭議對象")
    private String companyName;

    @ApiModelProperty(value = "爭議類型")
    private TreeSelected disputeKind;

    @Temporal(TemporalType.DATE)
    @ApiModelProperty(value = "申請日期")
    private Timestamp caseDate;

    @Temporal(TemporalType.DATE)
    @ApiModelProperty(value = "評議委員會作成評議決定日期")
    private Timestamp issueSureDate;

    @NonNull
    @ApiModelProperty(value = "案件進度")
    private ShowCodeBo flowCode;

    @NonNull
    @ApiModelProperty(value = "中心案件承辦人帳號")
    private String centerOwnerAccount;

    @NonNull
    @ApiModelProperty(value = "中心案件承辦人名稱")
    private String flowCodeName;

    @ApiModelProperty(value = "結案情形")
    private ShowCodeBo closeStatus;

    @ApiModelProperty(value = "結案理由")
    private ShowCodeBo closeReason1;

    @ApiModelProperty(value = "公文年度")
    private String docYear;

    @ApiModelProperty(value = "公文字")
    private String docWord;

    @ApiModelProperty(value = "公文號")
    private String docNo;

    @ApiModelProperty(value = "回覆申訴人日期")
    private Timestamp flowCode10034Date;

    public Result(String caseMasterTid, String centerOwnerAccount, Long caseTypeCid, String caseTypeCode, String caseTypeName, Long inMethodCid, 
                  String inMethodCode, String inMethodName, Long caseClassCid, String caseClassCode, String caseClassName, String caseNo, 
                  String caseUsers, String companyName, Long disputeKindCid, Date caseDate, Date issueSureDate, Long flowCodeCid, String flowCodeCode, 
                  String flowCodeName, boolean isClose, Long closeStatusCid, String closeStatusCode, String closeStatusName, Long closeReasonCid, 
                  String closeReasonCode, String closeReasonName, String docYear, String docWord, String docNo) {
        this.caseMasterTid = caseMasterTid;
        this.centerOwnerAccount = centerOwnerAccount;
        this.caseType = new ShowCodeBo(caseTypeCid, caseTypeCode, caseTypeName);
        this.inMethod = new ShowCodeBo(inMethodCid, inMethodCode, inMethodName);
        this.caseClass = new ShowCodeBo(caseClassCid, caseClassCode, caseClassName);
        this.caseNo = caseNo;
        this.applicantText = caseUsers;
        this.companyName = companyName;
        this.disputeKind = new TreeSelected("", disputeKindCid, "");
        this.caseDate = caseDate == null ? null : new Timestamp(caseDate.getTime());
        this.issueSureDate = issueSureDate == null ? null : new Timestamp(issueSureDate.getTime());
        this.flowCode = new ShowCodeBo(flowCodeCid, flowCodeCode, flowCodeName);
        this.flowCodeName = flowCodeName;
        // this.isClose = isClose;
        this.closeStatus = new ShowCodeBo(closeStatusCid, closeStatusCode, closeStatusName);
        this.closeReason1 = new ShowCodeBo(closeReasonCid, closeReasonCode, closeReasonName);
        this.docYear = docYear;
        this.docWord = docWord;
        this.docNo = docNo;
    }

}
