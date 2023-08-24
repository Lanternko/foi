package com.ezcore.common.model;

import javax.validation.constraints.NotBlank;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
public class BaseResponse {
	
	@NotBlank
	private long respTime;
	
	@NotBlank
	private String jobCode;
	
	@NotBlank
	private BaseStateResponse respState;
	
	private BasePageResponse page;
	
	private Object content;
	
	
}
