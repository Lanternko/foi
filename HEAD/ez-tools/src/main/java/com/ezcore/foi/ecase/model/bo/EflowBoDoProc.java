package com.ezcore.foi.ecase.model.bo;

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
public class EflowBoDoProc implements Serializable {

	private static final long serialVersionUID = 1007739150144985226L;

	@ApiModelProperty(value = "推進案件識別值")
    private String caseMasterTid;

    @ApiModelProperty(value = "案件流程節點識別值(已有流程必填)")
    private String caseEflowTid;

    @ApiModelProperty(value = "Y/N")
    private String action;

    @ApiModelProperty(value = "更正退件原因")
    private String memoText;

    @ApiModelProperty(value = "若next_code=9999時要填入的結果")
    private EflowX000BoClose closeInfo;
    
}
