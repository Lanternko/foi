package com.ezcore.foi.ecase.model.request.caseutils;

import java.io.Serializable;
import java.util.List;

import com.ezcore.foi.ecase.model.bo.StringBetweenBo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class CaseUtils03Request implements Serializable {
	
	private static final long serialVersionUID = 5585372700193084587L;

    @NonNull
    @ApiModelProperty(value = "前端作業代碼 + bandCode/pageCode")
    private String smsCode;
    
    @NonNull
    @ApiModelProperty(value = "寄送對象: 全部:1筆, 填all 指定:n筆, 填該page的寄送dataTid")
    private List<String> dataTid;

    @ApiModelProperty(value = "內文前置/後置字詞")
    private StringBetweenBo smsContent;

    @ApiModelProperty(value = "前端強制指定寄送的手機號碼")
    private List<String> forceSmsTo;
	
}
