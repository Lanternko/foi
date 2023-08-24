package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import me.zhengjie.base.BaseEntity;

@Getter
@Setter
@Entity
@Table(name = "CASE_DYNAMIC_COLUMN")
public class CaseDynamicColumn extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 6206869636331380030L;

	@Id
	@NotNull
	@Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "識別值")
    private String id;

    @ApiModelProperty(value = "顯示區塊")
    @NotNull
    private Long bandCodeCid;

    @ApiModelProperty(value = "欄位定義")
    @NotNull
    private Long columnAdjustCid;

    @ApiModelProperty(value = "關聯表格")
    @NotNull
    private String fromTableName;

    @NotNull
    @Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "關聯表格識別值")
    private String fromTableTid;

    @ApiModelProperty(value = "填入值")
    @NotNull
    private String value;

    @ApiModelProperty(value = "建立者")
    @NotNull
    private String createBy;

    @ApiModelProperty(value = "建立時間")
    @NotNull
    private Timestamp createTime;

    @ApiModelProperty(value = "異動者")
    private String updateBy;

    @ApiModelProperty(value = "異時時間")
    private Timestamp updateTime;

}