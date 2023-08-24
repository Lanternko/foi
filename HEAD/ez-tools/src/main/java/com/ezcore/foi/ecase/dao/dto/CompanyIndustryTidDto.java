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
public class CompanyIndustryTidDto {

	@ApiModelProperty(value = "公司")
	private String companyTid;
	
	@ApiModelProperty(value = "產業別(限定第2階)")
	private String companyIndustryTid;
	
}
