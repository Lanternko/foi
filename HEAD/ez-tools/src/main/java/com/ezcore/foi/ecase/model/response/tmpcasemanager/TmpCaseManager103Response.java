package com.ezcore.foi.ecase.model.response.tmpcasemanager;

import java.util.ArrayList;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class TmpCaseManager103Response {
    
    @ApiModelProperty(value = "分類00")
    private List<TmpCaseManager103ResponseChild> type1;

    @ApiModelProperty(value = "分類04")
    private List<TmpCaseManager103ResponseChild> type2;
    
    public TmpCaseManager103Response() {
    	this.type1 = new ArrayList<>();
    	this.type2 = new ArrayList<>();
    }
}
