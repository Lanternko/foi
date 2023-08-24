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
public class CaseEFlow08Request implements Serializable {

	private static final long serialVersionUID = -2878851430839096892L;

	@ApiModelProperty(value = "受理金融服務業回覆申訴處理日期(起)")
    private Long beginDate;
	
    @ApiModelProperty(value = "受理金融服務業回覆申訴處理日期(迄)")
    private Long endDate;

    @ApiModelProperty(value = "案件承辦人帳號")
    private String ownerAccount;

    @ApiModelProperty(value = "案號")
    private String caseNo;
}
