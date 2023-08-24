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
public class AgentCompanyIndustryTidDto {

	@ApiModelProperty(value = "被代理之公司產業別(限定第2階)")
	private String mainCompanyIndustryTid;
	
	@ApiModelProperty(value = "代理之公司產業別(限定第2階)")
	private String agentCompanyIndustryTid;
	
}
