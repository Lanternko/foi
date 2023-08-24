package com.ezcore.foi.ecase.model.request;

import java.util.List;

import com.ezcore.foi.ecase.model.bo.Eflow2000BoData;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class CaseTel01Request {
	@ApiModelProperty(value = "案件識別值")
	private List<Eflow2000BoData> caseList;
}
