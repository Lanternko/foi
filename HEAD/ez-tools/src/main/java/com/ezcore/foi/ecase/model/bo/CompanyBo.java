package com.ezcore.foi.ecase.model.bo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CompanyBo implements Serializable {

	private static final long serialVersionUID = -1976383561869450617L;

	@ApiModelProperty(value = "公司識別值")
	private String companyTid;

	@ApiModelProperty(value = "公司名稱")
	private String companyName;

	@ApiModelProperty(value = "公司產業別節點")
	private List<CompanyIndustryBo> companyIndustrys;

	@ApiModelProperty(value = "公司聯絡人節點")
	private List<CompanyConcatBo> companyConcats;

	@ApiModelProperty(value = "公司地址")
	private String companyAddress;

	@ApiModelProperty(value = "通訊地址")
	private String mailAddress;

	@ApiModelProperty(value = "公司狀態識別值")
	private Long companyStateCid;

	@ApiModelProperty(value = "公司狀態名稱")
	private String companyStateName;

	@ApiModelProperty(value = "啟用日期")
	private Timestamp enableDate;

	@ApiModelProperty(value = "停業日期")
	private Timestamp closeDate;

	@ApiModelProperty(value = "停業備註")
	private String closeRemark;

	@ApiModelProperty(value = "下接選單停用日")
	private Timestamp codeEndDate;

	@ApiModelProperty(value = "合併日期")
	private Timestamp combineDate;

	
}
