package com.ezcore.foi.ecase.model.bo.casequeryresult;

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
public class Style1 {

    @ApiModelProperty(value = "人名", required = true)
    @NonNull
    private String name;

    @ApiModelProperty(value = "證號", required = true)
    @NonNull
    private String idNo;

    @ApiModelProperty(value = "電話", required = true)
    @NonNull
    private String phoneNo;

    // Other fields and methods

}
