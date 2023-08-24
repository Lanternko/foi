package com.ezcore.foi.ecase.model.bo;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class CompanyIndustryContractValueBo implements Serializable {

	private static final long serialVersionUID = -1678136005552999858L;

	@ApiModelProperty(value = "歸屬欄位")
    private String column;

    @ApiModelProperty(value = "契約數")
    private Integer value;
}