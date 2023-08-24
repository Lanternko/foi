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

@Getter
@Setter
@Entity
@Table(name = "EFlow")
public class EFlow implements Serializable {

	private static final long serialVersionUID = 7879510039577444129L;

    @Id
    @NotNull
    @Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "識別值")
    private String id;

    @ApiModelProperty(value = "簽核流程代碼")
    @NotNull
    private String code;

    @ApiModelProperty(value = "簽核流程名稱")
    @NotNull
    private String name;

}