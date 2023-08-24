package com.ezcore.foi.ecase.model.bo;

import java.io.Serializable;

import com.ezcore.foi.ecase.dao.entity.CaseTelCheck;
import com.ezcore.foi.ecase.dao.entity.Codedetail;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;
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
public class CaseTelEflow2000BoData implements Serializable {

	private static final long serialVersionUID = -5571431995492972677L;

	@ApiModelProperty(value = "資料識別值")
    private String caseTelCheckTid;
    
    @ApiModelProperty(value = "代碼")
    private String code;
    
    @ApiModelProperty(value = "第幾欄")
    private Integer x;
    
    @ApiModelProperty(value = "第幾行")
    private Integer y;
    
    @ApiModelProperty(value = "欄位樣式")
    private String style;
    
    @ApiModelProperty(value = "欄位文字描述")
    private String text;
    
    @ApiModelProperty(value = "欄位值")
    private String value;
    
    public CaseTelEflow2000BoData(CaseTelCheck caseTelCheck, CodeDetailDto codedetail) {
        this.caseTelCheckTid = caseTelCheck.getId();
        this.code = codedetail.getCode();
        this.x = Integer.valueOf(codedetail.getProperty1());
        this.y = Integer.valueOf(codedetail.getProperty2());
        this.style = codedetail.getProperty3();
        this.text = codedetail.getName();
        this.value = caseTelCheck.getValue();
    }
    
}