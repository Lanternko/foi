package com.ezcore.foi.ecase.dao.dto;

import java.io.Serializable;
import java.util.List;

import com.ezcore.foi.ecase.model.bo.CompanyIndustryBo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode(callSuper = false)
@JsonIgnoreProperties(ignoreUnknown = true)
public class CompanyIndustryListDto implements Serializable {
	
    private static final long serialVersionUID = -2035872852405583025L;

	@ApiModelProperty(value = "公司識別值")
    private String companyTid;
    
    @ApiModelProperty(value = "公司名稱")
    private String companyName;
    
    @ApiModelProperty(value = "公司產業別")
    private List<CompanyIndustryBo> companyIndustrys;

	public CompanyIndustryListDto(String companyTid, String companyName) {
		this.companyTid = companyTid;
		this.companyName = companyName;
	}
    
}
