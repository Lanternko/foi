package com.ezcore.foi.ecase.model.request.casemaster;

import java.io.Serializable;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class CaseManager54Request implements Serializable {
	
	private static final long serialVersionUID = -7981670198315665173L;

    @NonNull
    @ApiModelProperty(value = "聯繫紀錄tid")
    private String caseMediateContactTid;
    
    @NonNull
    @ApiModelProperty(value = "調處tid")
    private List<String> mediateTids;
	
}
