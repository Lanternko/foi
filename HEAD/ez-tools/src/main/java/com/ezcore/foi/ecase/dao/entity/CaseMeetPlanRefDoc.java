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
@Table(name = "CASE_MEET_PLAN_REF_DOC")
public class CaseMeetPlanRefDoc implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(columnDefinition ="uniqueidentifier")
    @ApiModelProperty(value = "識別值")
    private String id;

    @Column(columnDefinition ="uniqueidentifier")
    @ApiModelProperty(value = "父層識別值")
    private String caseMeetPlanTid;

    @ApiModelProperty(value = "公文-年")
    private String docYear;

    @ApiModelProperty(value = "公文-字")
    private String docWord;

    @ApiModelProperty(value = "公文-號")
    private String docNo;

    @ApiModelProperty(value = "建立者")
    private String createBy;

    @ApiModelProperty(value = "建立時間")
    private Timestamp createTime;
}
