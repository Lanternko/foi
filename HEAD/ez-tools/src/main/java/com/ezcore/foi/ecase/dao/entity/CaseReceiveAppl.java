package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import me.zhengjie.base.BaseEntity;

@Getter
@Setter
@Entity
@Table(name = "CASE_RECEIVE_APPL")
public class CaseReceiveAppl extends BaseEntity implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(columnDefinition ="uniqueidentifier")
    @ApiModelProperty(value = "識別值")
    private String id;

    @Column(columnDefinition ="uniqueidentifier")
    @ApiModelProperty(value = "父層識別值")
    private String caseMasterTid;

    @ApiModelProperty(value = "收文時間")
    private Timestamp receiveDate;

    @ApiModelProperty(value = "收文文號")
    private String receiveNo;

    @ApiModelProperty(value = "來文者")
    private String receiveName;

    @ApiModelProperty(value = "主旨")
    private String subject;

    @ApiModelProperty(value = "備註")
    private String memo;

    @ApiModelProperty(value = "發文時間")
    private Timestamp issueDate;

    @ApiModelProperty(value = "發文文號")
    private String issueNo;

    @ApiModelProperty(value = "受文者")
    private String issueName;

    @ApiModelProperty(value = "建立建立的程式")
    private String createJobCode;

}
