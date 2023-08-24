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
public class DynamicData implements Serializable {

	private static final long serialVersionUID = -2683792372003376179L;

	@ApiModelProperty(value = "欄位（物件）代碼")
    @NonNull
    private String columnCode;

    @ApiModelProperty(value = "資料值")
    private String value;
	
}
