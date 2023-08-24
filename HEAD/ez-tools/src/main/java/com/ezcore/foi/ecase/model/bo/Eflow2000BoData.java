package com.ezcore.foi.ecase.model.bo;

import java.io.Serializable;

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
public class Eflow2000BoData implements Serializable {

	private static final long serialVersionUID = 8616591989611081339L;

	@ApiModelProperty(value = "案號")
    private String caseNo;
	
	@ApiModelProperty(value = "申請人名")
	private String applicantNames;
	
	@ApiModelProperty(value = "退回原因")
	private String memoText;

    @ApiModelProperty(value = "案件識別值")
    private String caseMasterTid;
    
    @ApiModelProperty(value = "流程節點識別碼")
    private String caseEflowTid;

    @ApiModelProperty(value = "狀態(結案/退回/處理中)")
    private String statusText;
}
