package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;
import java.sql.Timestamp;

import com.ezcore.foi.ecase.dao.entity.CaseReceiveOther;
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
public class ReceiveOther implements Serializable {

    private static final long serialVersionUID = 7055779593788640602L;

    @ApiModelProperty(value = "識別值")
    @NonNull
    private String caseReceiveOtherTid;

    @ApiModelProperty(value = "父層識別值")
    @NonNull
    private String caseMasterTid;

    @ApiModelProperty(value = "收文文號")
    private String receiveNo;

    @ApiModelProperty(value = "收文時間")
    private Timestamp receiveDate;

    @ApiModelProperty(value = "來文者")
    private String receiveName;

    @ApiModelProperty(value = "發文文號")
    private String issueNo;

    @ApiModelProperty(value = "發文日期")
    private Timestamp issueDate;

    @ApiModelProperty(value = "會議日期")
    private Timestamp meetDate;

    @ApiModelProperty(value = "備註1")
    private String remark1;

    @ApiModelProperty(value = "備註2")
    private String remark2;

    public ReceiveOther(CaseReceiveOther entity) {
        this.caseReceiveOtherTid = entity.getId();
        this.caseMasterTid = entity.getCaseMasterTid();
        this.receiveNo = entity.getReceiveNo();
        this.receiveDate = entity.getReceiveDate();
        this.receiveName = entity.getReceiveName();
        this.issueNo = entity.getIssueNo();
        this.issueDate = entity.getIssueDate();
        this.meetDate = entity.getMeetDate();
        this.remark1 = entity.getRemark1();
        this.remark2 = entity.getRemark2();
    }

}
