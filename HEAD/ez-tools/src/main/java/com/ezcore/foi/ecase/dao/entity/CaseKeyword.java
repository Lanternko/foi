package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import java.sql.Timestamp;

@Getter
@Setter
@Entity
@Table(name = "CASE_KEYWORD")
public class CaseKeyword implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(columnDefinition ="uniqueidentifier")
    @ApiModelProperty(value = "父層識別值")
    private String caseMasterTid;

    @ApiModelProperty(value = "欄位來源")
    private String tableColumn;

    @ApiModelProperty(value = "若寫入文字太長,用於拆段")
    private int seqNo;

    @ApiModelProperty(value = "關鍵字")
    private String keyword;

    @ApiModelProperty(value = "寫入時間", hidden = true)
    private Timestamp timestamp;
}
