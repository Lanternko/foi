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
public class CaseTelEflow2000BoList implements Serializable {

	private static final long serialVersionUID = 5363066576401465941L;

	@ApiModelProperty(value = "案件識別值")
    private String caseMasterTid;
    
    @ApiModelProperty(value = "資料識別值")
    private List<CaseTelEflow2000BoData> column;
}
