package com.ezcore.foi.ecase.model.response.company;

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
public class Company01Response implements Serializable {

	private static final long serialVersionUID = 802302242349803753L;

	@ApiModelProperty(value = "公司id")
    private String companyTid;

    @ApiModelProperty(value = "公司名稱")
    private String companyName;
	
}
