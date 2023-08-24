package com.ezcore.foi.ecase.model.request.tmpcasemanager;

import java.security.Timestamp;
import java.util.List;

import com.ezcore.foi.ecase.model.bo.casedatabo.QueryColumn;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class TmpCaseManager105Request {

    @ApiModelProperty(value = "案件類型")
    private Integer caseClass;

    @ApiModelProperty(value = "用在限定的組合條件")
    private List<QueryColumn> logicCondition;

    @ApiModelProperty(value = "申請日期（起）")
    private Timestamp beginDate;

    @ApiModelProperty(value = "申請日期（迄）")
    private Timestamp endDate;

    @ApiModelProperty(value = "承辦人")
    private String centerOwnerAccount;
}
