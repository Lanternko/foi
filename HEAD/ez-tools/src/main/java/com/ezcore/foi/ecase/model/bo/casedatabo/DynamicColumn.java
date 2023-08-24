package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;

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
public class DynamicColumn implements Serializable {

    private static final long serialVersionUID = 7055779593788640602L;

    @ApiModelProperty(value = "欄位（物件）代碼")
    @NonNull
    private String columnCode;

    @ApiModelProperty(value = "欄位（物件）名稱")
    @NonNull
    private String columnName;

    @ApiModelProperty(value = "處理方式")
    @NonNull
    private String action;

    @ApiModelProperty(value = "處理方式參數")
    private String actionArgument;

    @ApiModelProperty(value = "欄位版面寬度: 預設1(等份)/0代表無作用")
    @NonNull
    private Integer width;

    @ApiModelProperty(value = "欄位版面高度: 預設1(等份)/0代表無作用")
    @NonNull
    private Integer height;

}
