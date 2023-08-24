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

@Getter
@Setter
@Entity
@Table(name = "CASE_DOC_EXT")
public class CaseDocExt implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(columnDefinition ="uniqueidentifier")
    @ApiModelProperty(value = "識別值")
    private String id;

    @Column(columnDefinition ="uniqueidentifier")
    @ApiModelProperty(value = "父層識別值")
    private String caseMasterTid;

    @ApiModelProperty(value = "主旨")
    private String subject;

    @ApiModelProperty(value = "來文者")
    private String receiveName;

    @ApiModelProperty(value = "來文態樣")
    private Long communicationClassCid;

    @ApiModelProperty(value = "身分類型")
    private Long identifyTypeCid;

    @ApiModelProperty(value = "公文-年")
    private String docYear;

    @ApiModelProperty(value = "公文-字")
    private String docWord;

    @ApiModelProperty(value = "公文-號")
    private String docNo;

    @ApiModelProperty(value = "合意停止日")
    private Timestamp agreeStopDate;

    @ApiModelProperty(value = "是否簽延長")
    private Boolean isSpecialExtent;

    @ApiModelProperty(value = "申訴轉評議簽收日")
    private Timestamp reviewSignDate;

    @ApiModelProperty(value = "議事行政-簽核日期")
    private Timestamp issueSignDate;

    @ApiModelProperty(value = "議事行政-簽核類型")
    private Long issueSignKindCid;

    @ApiModelProperty(value = "議事行政-撤件日期")
    private Timestamp issueCancelDate;

    @ApiModelProperty(value = "議事行政-評議成立簽核日")
    private Timestamp issueSureDate;

    @ApiModelProperty(value = "議事行政-結案流水號")
    private String issueReceiveNo;

    @ApiModelProperty(value = "建立者", hidden = true)
    private String createBy;
    
    @ApiModelProperty(value = "建立時間", hidden = true)
    private Timestamp createTime;

    @ApiModelProperty(value = "異動者", hidden = true)
    private String updateBy;

    @ApiModelProperty(value = "異動時間", hidden = true)
    private Timestamp updateTime;
}
