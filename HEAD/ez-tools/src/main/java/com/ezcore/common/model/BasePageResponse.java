package com.ezcore.common.model;

import javax.validation.constraints.NotBlank;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
public class BasePageResponse {
	
	@NotBlank
    @ApiModelProperty(value = "總筆數")
	private Long total;
	
	@NotBlank
    @ApiModelProperty(value = "Redis識別值")
	private String key;
	
	@NotBlank
    @ApiModelProperty(value = "起始筆數")
	private Integer first;
	
	@NotBlank
    @ApiModelProperty(value = "結束筆數")
	private Integer last;

}
