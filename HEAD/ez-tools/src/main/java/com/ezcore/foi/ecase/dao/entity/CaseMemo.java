package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;

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
@Table(name = "CASE_MEMO")
public class CaseMemo extends BaseEntity implements Serializable {

	private static final long serialVersionUID = -4779386081990171967L;

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
    @ApiModelProperty(value = "備註類型")
    private Long memoTypeCid;

    @NotNull
    @ApiModelProperty(value = "備註文字")
    private String memoText;

    @NotNull
    @ApiModelProperty(value = "顯示次序")
    private Integer seqNo;

    
}