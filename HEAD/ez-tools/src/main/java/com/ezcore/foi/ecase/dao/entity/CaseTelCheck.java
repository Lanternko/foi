package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "CASE_TEL_CHECK")
public class CaseTelCheck implements Serializable {

    private static final long serialVersionUID = 3403806329361364412L;

    @Id
    @NotNull
    @Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "識別值")
    private String id; //UUID or STRING TODO

    @Column(columnDefinition = "uniqueidentifier")
    @NotNull
    @ApiModelProperty(value = "父層識別值")
    private String caseMasterTid;
    
    @Column(name="eflow_2000_check_cid")
    @NotNull
    @ApiModelProperty(value = "線上簽核流程(代碼:2000)的所在位置")
    private Long eflow2000CheckCid; // TODO int or Integer// invalid column name

    @ApiModelProperty(value = "填入值")
    private String value;

    @NotNull
    @ApiModelProperty(value = "異動者")
    private String updateBy;

    @NotNull
    @ApiModelProperty(value = "異動時間")
    private Timestamp updateTime;
}
