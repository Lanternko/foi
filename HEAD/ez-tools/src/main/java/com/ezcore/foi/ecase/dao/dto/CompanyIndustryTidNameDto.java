package com.ezcore.foi.ecase.dao.dto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class CompanyIndustryTidNameDto {

	private String companyTid;
	
	private String companyName;
	
	private String companyIndustryTid;
	
	private String industryName;
	
}
