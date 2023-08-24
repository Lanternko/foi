package com.ezcore.foi.ecase.dao.dto;

import java.util.List;

import com.ezcore.foi.ecase.model.bo.CompanyIndustryContractFile;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class CompanyContractDto {

	@ApiModelProperty(value = "匯入年度")
	private Integer year;
	
	@ApiModelProperty(value = "匯入月份")
	private Integer month;
	
	@ApiModelProperty(value = "匯入樣式: 1.(保發)壽險:只有1種 2.(保發)產險:共有3種")
	private Integer importStyle;
	
	@ApiModelProperty(value = "匯入檔案資訊 格式見:/附件/company23開頭檔案")
	private List<CompanyIndustryContractFile> file;
	
}
