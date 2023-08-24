package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.LastModifiedBy;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import me.zhengjie.base.BaseEntity;

@Getter
@Setter
@Entity
@Table(name = "CASE_EFLOW")
public class CaseEFlow implements Serializable {

	private static final long serialVersionUID = 952751425883790781L;

    @Id
    @NotNull
    @Column(columnDefinition ="uniqueidentifier")
    @ApiModelProperty(value = "識別值")
    private String id;

    @NotNull
    @Column(columnDefinition ="uniqueidentifier")
    @ApiModelProperty(value = "父層識別值")
    private String caseMasterTid;

    @NotNull
    @ApiModelProperty(value = "流程碼")
    private String pcode;

    @NotNull
    @ApiModelProperty(value = "流程編號")
    private String processNo;

    @NotNull
    @ApiModelProperty(value = "現在流程碼")
    private String currentCode;

    @NotNull
    @ApiModelProperty(value = "現在工作群組碼")
    private String currentWorkgroupCode;

    @NotNull
    @ApiModelProperty(value = "現在帳號")
    private String currentAccount;

    @ApiModelProperty(value = "觸發動作帳號")
    private String actionAccount;

    @ApiModelProperty(value = "接續流程碼")
    private String nextCode;

    @ApiModelProperty(value = "接續工作群組碼")
    private String nextWorkgroupCode;

    @ApiModelProperty(value = "接續處理帳號")
    private String nextAccount;

    @NotNull
    @ApiModelProperty(value = "建立人", hidden = true)
    private String createBy;
    
    @NotNull
    @ApiModelProperty(value = "建立時間", hidden = true)
    private Timestamp createTime;

    @ApiModelProperty(value = "更新人", hidden = true)
    private String updateBy;

    @ApiModelProperty(value = "更新時間", hidden = true)
    private Timestamp updateTime;
    
}