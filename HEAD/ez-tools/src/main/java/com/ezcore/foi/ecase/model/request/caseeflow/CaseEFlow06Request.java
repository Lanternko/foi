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
public class CaseEFlow06Request implements Serializable {

	private static final long serialVersionUID = 3753781935922993710L;

	@ApiModelProperty(value = "工作群組代碼")
    private String currentWorkGroupCode;

    @ApiModelProperty(value = "流程代碼")
    private String currentCode;

    @ApiModelProperty(value = "案件承辦人。為<0000>時必填、非<0000>時為查詢條件")
    private String account;

    @ApiModelProperty(value = "受理金融服務業回覆申訴處理日期(起)")
    private Long beginDate;

    @ApiModelProperty(value = "受理金融服務業回覆申訴處理日期(迄)")
    private Long endDate;
}