package com.ezcore.foi.ecase.model.bo;

import java.io.Serializable;
import java.util.List;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CompanyIndustryBo implements Serializable {

	private static final long serialVersionUID = 5644502599092488099L;

	@ApiModelProperty(value = "產業別識別值")
	private String companyIndustryTid;

	@ApiModelProperty(value = "產業別完整名稱")
	private String industryName;

	private List<CompanyIndustryTreeBo> industryCids;
	
}
