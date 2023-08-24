package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "EFLOW_MAP")
public class EFlowMap implements Serializable {

	private static final long serialVersionUID = 2260085488075307573L;

    @Id
    @NotNull
    @Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "識別值")
    private String id;

//    @ApiModelProperty(value = "")
//    @NotNull
//    @Column(columnDefinition = "uniqueidentifier")
//    private String eflowTid;
	@OneToOne(cascade = CascadeType.PERSIST)
	@JoinColumn(name = "eflow_tid", referencedColumnName = "id")
	@NotNull
	@ApiModelProperty(value = "父層識別值")    
    private EFlow eflow;

    @ApiModelProperty(value = "節點名稱")
    @NotNull
    private String name;

    @ApiModelProperty(value = "適用程式")
    private String pageCode;

    @ApiModelProperty(value = "現在流程碼")
    @NotNull
    private String currentCode;

    @ApiModelProperty(value = "現在工作群組碼")
    @NotNull
    private String currentWorkgroupCode;

    @ApiModelProperty(value = "接續流程碼")
    @NotNull
    private String nextCode;

    @ApiModelProperty(value = "接續工作群組碼")
    @NotNull
    private String nextWorkgroupCode;

    @ApiModelProperty(value = "動作類型")
    @NotNull
    private String action;

    @ApiModelProperty(value = "條件式")
    @NotNull
    private String condition;

    @ApiModelProperty(value = "動作執行後要新增的案件進度碼")
    @NotNull
    private String caseFlowCode;

}