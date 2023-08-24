package com.ezcore.foi.ecase.model.request;

import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class CaseTel02Request {
	
	@NotNull
	@ApiModelProperty(value = "檢核表資料別值")
	private String caseTelCheckTid;
	
	@NotNull
	@ApiModelProperty(value = "變更值")
	private String value;
}
