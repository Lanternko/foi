package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.CreationTimestamp;
import org.springframework.data.annotation.CreatedBy;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "CASE_OWNER_LOG")
public class CaseOwnerLog implements Serializable {

	private static final long serialVersionUID = 3565694677576239809L;

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
	@ApiModelProperty(value = "承辦人類型")
	private Integer ownerTypeCid;
	
	@NotNull
	@ApiModelProperty(value = "承辦人帳號")
	private String ownerAccount;
	
	@CreatedBy
	@NotNull
	@ApiModelProperty(value = "建立者")
	private String createBy;

	@CreationTimestamp
	@NotNull
	@ApiModelProperty(value = "建立時間")
	private Timestamp createTime;
	
}
