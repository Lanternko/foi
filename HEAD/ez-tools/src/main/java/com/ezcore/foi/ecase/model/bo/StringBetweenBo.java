package com.ezcore.foi.ecase.model.bo;

import java.io.Serializable;

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
public class StringBetweenBo implements Serializable {

	private static final long serialVersionUID = 8126423177752824516L;

	@ApiModelProperty(value = "開頭字串", required = true)
    @NonNull
    private String start;
	
	@ApiModelProperty(value = "結束字串", required = true)
    @NonNull
    private String end;
	
}
