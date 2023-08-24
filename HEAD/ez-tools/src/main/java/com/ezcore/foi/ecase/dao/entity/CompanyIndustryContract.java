package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.ezcore.tools.codedetail.dto.CodeDetailDto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import me.zhengjie.base.BaseEntity;

@Getter
@Setter
@Entity
@Table(name = "COMPANY_INDUSTRY_CONTRACT")
public class CompanyIndustryContract extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 3533704443916849403L;

	@Id
	@NotNull
//	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@Column(columnDefinition = "uniqueidentifier")
	@ApiModelProperty(value = "識別值")
	private String id;

	@ManyToOne
    @JoinColumn(name = "company_industry_tid", nullable = false, insertable = false, updatable = false)
	@NotNull
	@ApiModelProperty(value = "父層識別值")
	private CompanyIndustry companyIndustry;

	@NotNull
	@ApiModelProperty(value = "年度")
	private Integer year;

	@ApiModelProperty(value = "月份")
	private Integer month;

	@OneToOne(cascade = CascadeType.PERSIST)
	@JoinColumn(name = "contract_type_cid", referencedColumnName = "cid")
	@NotNull
	@ApiModelProperty(value = "契約數-紀錄類型")
	private Codedetail contractTypeCode;

	@NotNull
	@ApiModelProperty(value = "契約數")
	private Integer contractNum;
	
}
