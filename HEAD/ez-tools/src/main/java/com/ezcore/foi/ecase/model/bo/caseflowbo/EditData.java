package com.ezcore.foi.ecase.model.bo.caseflowbo;

import java.sql.Timestamp;

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
public class EditData {

    @ApiModelProperty(value = "流程識別值")
    private String caseFlowTid;

    @ApiModelProperty(value = "案件識別值", required = true)
    @NonNull
    private String caseMasterTid;

    @ApiModelProperty(value = "進度時間", required = true)
    @NonNull
    private Timestamp flowTime;

    @ApiModelProperty(value = "案件進度代碼", required = true)
    @NonNull
    private Long flowCodeCid;

    @ApiModelProperty(value = "進度關連文號")
    private String docNo;

    @ApiModelProperty(value = "開放業者補登期限")
    private Timestamp openModifyDate;

}

