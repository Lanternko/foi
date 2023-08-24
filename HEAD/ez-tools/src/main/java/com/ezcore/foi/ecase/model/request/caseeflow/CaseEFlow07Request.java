package com.ezcore.foi.ecase.model.request.caseeflow;

import java.io.Serializable;
import java.sql.Timestamp;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class CaseEFlow07Request implements Serializable {

	private static final long serialVersionUID = 7348103819862726790L;

	@ApiModelProperty(value = "移出群組")
    private String currentWorkGroup;

    @ApiModelProperty(value = "移出日期(起)")
    private Long beginDate;

    @ApiModelProperty(value = "移出日期(迄)")
    private Long endDate;

    @ApiModelProperty(value = "案號")
    private String caseNo;
}