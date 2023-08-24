package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.ezcore.foi.ecase.dao.entity.compositeid.CaseTreeSearchId;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@IdClass(CaseTreeSearchId.class)
@Table(name = "CASE_TREE#")
public class CaseTreeSearch implements Serializable {

	private static final long serialVersionUID = 7346556923470185150L;
	
	@Id
	@NotNull
    @Column(columnDefinition ="uniqueidentifier")
    @ApiModelProperty(value = "資料識別值")
	private String caseTreeTid;
	
	@Id
	@NotNull
	@ApiModelProperty(value = "節點識別值")
	private Long nodeCid;
	
	@Column(columnDefinition ="uniqueidentifier")
	@NotNull
    @ApiModelProperty(value = "案件識別值")
	private String caseMasterTid;
	
	@ApiModelProperty(value = "樹的類型名稱")
	@NotNull
	private String treeName;
	
	@NotNull
	@ApiModelProperty(value = "階層數")
	private Integer level;
	
}
