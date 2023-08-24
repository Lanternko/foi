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
@Table(name = "CASE_CONSULTANT")
public class CaseConsultant extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 1L;

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
	@Column(columnDefinition ="uniqueidentifier")
	@ApiModelProperty(value = "諮詢顧問識別值")
	private String memberTid;

	@ApiModelProperty(value = "顯示次序")
	private Integer seqNo;

	@NotNull
	@ApiModelProperty(value = "顧問姓名")
	private String name;

	@ApiModelProperty(value = "發文文號")
	private String issueNo;

	@ApiModelProperty(value = "發文日")
	private Timestamp issueDate;

	@ApiModelProperty(value = "收文日")
	private Timestamp receiveDate;

	@ApiModelProperty(value = "收文文號")
	private String receiveNo;
    
}
