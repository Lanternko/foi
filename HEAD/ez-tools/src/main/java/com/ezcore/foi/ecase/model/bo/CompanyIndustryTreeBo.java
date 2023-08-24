package com.ezcore.foi.ecase.model.bo;

import java.io.Serializable;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CompanyIndustryTreeBo implements Serializable {

	private static final long serialVersionUID = -965047535699803388L;

	@ApiModelProperty(value = "資料識別值")
	private String companyIndustryTid;

	@ApiModelProperty(value = "階層")
	private Integer level;

	@ApiModelProperty(value = "代碼識別值")
	private Long industryCid;

	@ApiModelProperty(value = "代碼名稱")
	private String industryName;
	
	
}
