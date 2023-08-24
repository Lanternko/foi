package com.ezcore.foi.ecase.dao.dto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class CompanyIndustryDto {

	@ApiModelProperty(value = "產業別代碼(二階優先，若未選2階時放1階)")
	private Long industryBottomCid;
	
	@ApiModelProperty(value = "公司名稱(包含字串)")
	private String companyNameLike;
	
}
