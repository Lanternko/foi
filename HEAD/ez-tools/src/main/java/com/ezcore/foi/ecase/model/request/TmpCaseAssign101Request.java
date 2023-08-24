package com.ezcore.foi.ecase.model.request;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class TmpCaseAssign101Request {
    
    @NonNull
    @ApiModelProperty(value = "案件識別值")
    private List<String> caseMasterTids;

    @NonNull
    @ApiModelProperty(value = "中心承辦人")
    private String centerOwnerAccount;
}
