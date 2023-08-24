package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

import com.ezcore.foi.ecase.dao.entity.CaseFile;
import com.ezcore.foi.ecase.dao.entity.CaseReceiveAppl;
import com.ezcore.foi.ecase.model.bo.casefilebo.CaseFileBoData;
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
public class ReceiveAppl implements Serializable {

    private static final long serialVersionUID = 7055779593788640602L;

    @ApiModelProperty(value = "識別值")
    @NonNull
    private String caseReceiveApplTid;

    @ApiModelProperty(value = "父層識別值")
    @NonNull
    private String caseMasterTid;

    @ApiModelProperty(value = "收文日期")
    private Timestamp receiveDate;

    @ApiModelProperty(value = "收文文號")
    private String receiveNo;

    @ApiModelProperty(value = "來文者")
    private String receiveName;

    @ApiModelProperty(value = "主旨")
    private String subject;

    @ApiModelProperty(value = "備註")
    private String memo;

    @ApiModelProperty(value = "發文日期")
    private Timestamp issueDate;

    @ApiModelProperty(value = "發文文號")
    private String issueNo;

    @ApiModelProperty(value = "受文者")
    private String issueName;

    @ApiModelProperty(value = "檔案")
    private List<CaseFileBoData> files;

    public ReceiveAppl(CaseReceiveAppl entity) {
    	this.caseReceiveApplTid = entity.getId();
    	this.caseMasterTid = entity.getCaseMasterTid();
    	this.receiveDate = entity.getReceiveDate();
    	this.receiveName = entity.getReceiveName();
    	this.receiveNo = entity.getReceiveNo();
    	this.subject = entity.getSubject();
    	this.memo = entity.getMemo();
    	this.issueDate = entity.getIssueDate();
    	this.issueName = entity.getIssueName();
    	this.issueNo = entity.getIssueNo();
    }

}
