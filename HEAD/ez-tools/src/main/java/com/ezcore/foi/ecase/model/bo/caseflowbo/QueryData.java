package com.ezcore.foi.ecase.model.bo.caseflowbo;

import java.io.Serializable;
import java.sql.Timestamp;

import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
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
public class QueryData implements Serializable {

    private static final long serialVersionUID = 3195138183772434669L;

	@ApiModelProperty(value = "流程識別值")
    private String caseFlowTid;

    @ApiModelProperty(value = "案件識別值", required = true)
    @NonNull
    private String caseMasterTid;

    @ApiModelProperty(value = "進度時間", required = true)
    private Timestamp flowTime;

    @ApiModelProperty(value = "案件進度代碼", required = true)
    @NonNull
    private ShowCodeBo flowCode;

    @ApiModelProperty(value = "流程處理階段代碼", required = true)
    @NonNull
    private ShowCodeBo flowState;

    @ApiModelProperty(value = "進度關連文號")
    private String docNo;

    @ApiModelProperty(value = "開放業者補登期限")
    private Timestamp openModifyDate;

    @ApiModelProperty(value = "當時案件承辦人帳號", required = true)
    @NonNull
    private String ownerAccount;

    @ApiModelProperty(value = "當時案件承辦人姓名", required = true)
    @NonNull
    private String ownerName;

    @ApiModelProperty(value = "建立者帳號", required = true)
    @NonNull
    private String createBy;

    @ApiModelProperty(value = "建立者姓名", required = true)
    @NonNull
    private String createName;

}
