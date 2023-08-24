package com.ezcore.foi.ecase.model.bo;

import java.io.Serializable;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class CompanyIndustryContractBo implements Serializable {

	private static final long serialVersionUID = -3960424072147330670L;

	@ApiModelProperty(value = "公司產業別契約數識別值")
    private String companyIndustryTid;

    @ApiModelProperty(value = "年度")
    private Integer year;

    @ApiModelProperty(value = "月份")
    private Integer month;

    @ApiModelProperty(value = "契約數")
    private List<CompanyIndustryContractValueBo> values;
}