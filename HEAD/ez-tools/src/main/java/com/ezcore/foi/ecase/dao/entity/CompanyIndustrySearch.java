package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.ezcore.foi.ecase.dao.entity.compositeid.CompanyIndustrySearchId;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@IdClass(CompanyIndustrySearchId.class)
@Table(name = "COMPANY_INDUSTRY#")
public class CompanyIndustrySearch implements Serializable {

	private static final long serialVersionUID = -7369940688219569621L;

	@Id
	@NotNull
	@ApiModelProperty(value = "識別值")
	private Long industryCid;
	
	@Id
	@NotNull
	@Column(columnDefinition = "uniqueidentifier")
	@ApiModelProperty(value = "爭議對象識別值")
	private String companyTid;
	
	@Id
	@NotNull
	@Column(columnDefinition = "uniqueidentifier")
	@ApiModelProperty(value = "爭議產業樹識別值")
	private String companyIndustryTid;
	
	@ApiModelProperty(value = "次序")
	private Integer seqNo;
	
}
