package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;
import java.util.List;

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
public class Band implements Serializable {

    private static final long serialVersionUID = 7055779593788640602L;

    @ApiModelProperty(value = "顯示區塊代碼")
    @NonNull
    private String bandCode;

    @ApiModelProperty(value = "顯示區塊名稱")
    @NonNull
    private String bandName;
    
    @ApiModelProperty(value = "檢視方式")
    @NonNull
    private String viewType; 

    @ApiModelProperty(value = "區塊內調整欄位")
    private List<DynamicColumn> adjustColumns;

    // Other fields and methods

}
