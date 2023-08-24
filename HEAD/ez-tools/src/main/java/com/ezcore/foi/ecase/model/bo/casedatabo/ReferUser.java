package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;

import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class ReferUser implements Serializable {

    private static final long serialVersionUID = 7055779593788640602L;

    @ApiModelProperty(value = "人名類型")
    private ShowCodeBo caseUserKind;

    @ApiModelProperty(value = "案件識別值")
    private String caseMasterTid;

    @ApiModelProperty(value = "識別值")
    private String caseUserTid;

    @ApiModelProperty(value = "姓名")
    private String name;

    @ApiModelProperty(value = "證號")
    private String idno;

    // Other fields and methods

}
