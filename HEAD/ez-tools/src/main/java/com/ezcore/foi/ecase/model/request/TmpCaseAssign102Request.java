package com.ezcore.foi.ecase.model.request;

import java.util.List;

import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

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
@JsonIgnoreProperties(ignoreUnknown = true)
public class TmpCaseAssign102Request {
    
    @NonNull
    @ApiModelProperty(value = "案件識別值")
    private List<String> caseMasterTid;

    @NonNull
    @ApiModelProperty(value = "中心承辦人")
    private String centerOwnerAccount;

    @ApiModelProperty(value = "郵遞區號")
    private String zipCode;

    @ApiModelProperty(value = "縣市")
    private ShowCodeBo sysCity;

    @ApiModelProperty(value = "區處")
    private ShowCodeBo sysDistrict;

    @ApiModelProperty(value = "地址")
    private String address;
}
