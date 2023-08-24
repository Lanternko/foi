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
@Table(name = "CASE_FLOW")
public class CaseFlow extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 7928701781269952119L;

    @Id
    @NotNull
    @Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "識別值")
    private String id;

    @NotNull
    @Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "父層識別值")
    private String caseMasterTid;

    @NotNull
    @ApiModelProperty(value = "案件進度時間")
    private Timestamp flowTime;

    @NotNull
    @ApiModelProperty(value = "案件進度識別值")
    private Long flowCodeCid;
    
    @NotNull
    @ApiModelProperty(value = "案件所在流程階段")
    private Long flowStateCid;

    @ApiModelProperty(value = "公文文號")
    private String docNo;
    
    @ApiModelProperty(value = "公文動作代碼")
    private String docActionCode;

    @ApiModelProperty(value = "開放業者修改期限")
    private Timestamp openModifyDate;

    @ApiModelProperty(value = "可顯示範圍")
    @NotNull
    private String scopeFlag;

    @ApiModelProperty(value = "主管寫入")
    private String managerFlag;

    @NotNull
    @ApiModelProperty(value = "當時承辦人")
    private String ownerAccount;

}