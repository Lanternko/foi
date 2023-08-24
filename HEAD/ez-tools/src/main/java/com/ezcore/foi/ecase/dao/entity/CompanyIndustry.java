package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.alibaba.fastjson.annotation.JSONField;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import me.zhengjie.base.BaseEntity;

@Getter
@Setter
@Entity
@Table(name = "COMPANY_INDUSTRY")
public class CompanyIndustry extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 5601626069816499716L;

	@Id
	@NotNull
//	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@Column(columnDefinition ="uniqueidentifier")
	@ApiModelProperty(value = "識別值")
	private String id;

	@ManyToOne
    @JoinColumn(name = "company_tid", nullable = false, insertable = false, updatable = false)
	@NotNull
	@ApiModelProperty(value = "父層識別值")
	private Company company;

	@NotNull
	@ApiModelProperty(value = "顯示次序")
	private String seqNo;

	@OneToOne(cascade = CascadeType.PERSIST)
	@JoinColumn(name = "industry_cid", referencedColumnName = "cid")
	@ApiModelProperty(value = "產業別")
	private Codedetail industryCode;

	@ApiModelProperty(value = "授權代理對象之產業別")
	@Column(columnDefinition ="uniqueidentifier")
	private String agentCompanyIndustryTid;

//	----------------------------------------------------
    @JSONField(serialize = false)
    @OneToMany(mappedBy = "companyIndustry", orphanRemoval = true)
    private List<CompanyIndustryContract> companyIndustryContracts;
    
    @JSONField(serialize = false)
    @OneToMany(mappedBy = "companyIndustry", orphanRemoval = true)
    private List<CompanyIndustrySysUser> companyIndustryMappingSysUser;
    
}
