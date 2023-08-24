package com.ezcore.foi.ecase.model.request.casemaster;

import java.io.Serializable;

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
public class CaseManager53Request implements Serializable {
    
    private static final long serialVersionUID = -7981970198315665170L;

    @NonNull
    @ApiModelProperty(value = "unlock/clean")
    private String cleanType;
    
    @ApiModelProperty(value = "委員識別值")
    private String caseExaminerTid;

}
