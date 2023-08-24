package com.ezcore.foi.ecase.dao.entity;

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
@Table(name = "CASE_RECEIVE_OTHER")
public class CaseReceiveOther extends BaseEntity {

    @Id
    @Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "識別值")
    private String id;

    @Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "父層識別值")
    private String caseMasterTid;

    @ApiModelProperty(value = "案關文件來文者類型")
    private Long refOtherCid;

    @ApiModelProperty(value = "公文動作代碼")
    private String docActionCode;

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

}