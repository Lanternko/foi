package com.ezcore.foi.ecase.model.request.caseeflow;

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
public class CaseEFlow01Request implements Serializable {

	private static final long serialVersionUID = -8177291968959366739L;

	@ApiModelProperty(value = "網頁的程式編號(如:WEB020302)")
    private String pageCode;

    @ApiModelProperty(value = "流程代碼(如:1000/2000)")
    private String pCode;
}
