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
@Table(name = "CASE_MAINTANT_LOG")
public class CaseMaintainLog implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(columnDefinition ="uniqueidentifier")
    @ApiModelProperty(value = "識別值")
    private String id;

    @Column(columnDefinition ="uniqueidentifier")
    @ApiModelProperty(value = "父層識別值")
    private String caseMasterTid;

    @Column(columnDefinition ="uniqueidentifier")
    @ApiModelProperty(value = "關聯子表識別值(非必要)")
    private String subTableTid;

    @ApiModelProperty(value = "關聯子表名稱(非必要)")
    private String subTableName;

    @ApiModelProperty(value = "紀錄類型")
    private Long caseLogTypeCid;

    @ApiModelProperty(value = "後端程式代碼")
    private String jobCode;

    @ApiModelProperty(value = "紀錄的合併字串")
    private String combineValues;

    @ApiModelProperty(value = "建立者", hidden = true)
    private String createBy;

    @ApiModelProperty(value = "建立時間", hidden = true)
    private Timestamp createTime;
}
