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
public class EflowX000BoClose implements Serializable {

	private static final long serialVersionUID = -4595702745014963896L;
	
	@ApiModelProperty(value = "指派承辦人")
    private String assignAccount;
	
}