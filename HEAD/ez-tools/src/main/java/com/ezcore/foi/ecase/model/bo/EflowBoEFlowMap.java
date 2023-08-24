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
public class EflowBoEFlowMap implements Serializable {

	private static final long serialVersionUID = 4983137643047433156L;

	@ApiModelProperty(value = "流程代碼")
    private String pCode;

    @ApiModelProperty(value = "流程名稱(開發參考用)")
    private String pName;

    @ApiModelProperty(value = "適用作業代碼(開發參考用)")
    private String pageCode;

    @ApiModelProperty(value = "節點名稱(開發參考用)")
    private String nodeName;

    @ApiModelProperty(value = "現階段節點代碼")
    private String currentCode;

    @ApiModelProperty(value = "現階段適用的工作群組代碼")
    private String currentWorkgroup;

    @ApiModelProperty(value = "次階段節點代碼")
    private String nextCode;

    @ApiModelProperty(value = "次階段適用的工作群組代碼")
    private String nextWorkgroup;

    @ApiModelProperty(value = "執行動作")
    private String action;

    @ApiModelProperty(value = "執行動作的額名條件參數(暫無作用)")
    private String condition;
    
    @ApiModelProperty(value = "")
    private String caseFlow;
    
}
