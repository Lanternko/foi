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
public class CaseManager51Request implements Serializable {
    
    private static final long serialVersionUID = -7981670198315665170L;

    @NonNull
    @ApiModelProperty(value = "案件識別值")
    private String caseMasterTid;
    
    @ApiModelProperty(value = "要發送信件的委員識別值(空值代表全發，或放入有勾選的委員資料)")
    private List<String> caseExaminerTids;

    @NonNull
    @ApiModelProperty(value = "true/false")
    private Boolean urgent;

    @ApiModelProperty(value = "郵件註記")
    private String mailMemo;

}
