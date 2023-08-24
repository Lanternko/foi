package com.ezcore.foi.ecase.model.request.tmpcasemanager;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@NoArgsConstructor
@SuperBuilder
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class TmpCaseManager104Request {

    @ApiModelProperty(value = "結案日期", required = false)
    private Long closeDate;

    @ApiModelProperty(value = "組別", required = false)
    private String workGroup;

    @ApiModelProperty(value = "承辦人", required = false)
    private String cenerOwnerAccount;
    
    @ApiModelProperty(value = "案號", required = false)
    private String caseNo;
    
    @ApiModelProperty(value = "分頁key", required = false)
    private String key;

    @ApiModelProperty(value = "起始筆數", required = false)
    private Integer first;

    @ApiModelProperty(value = "結束筆數", required = false)
    private Integer last;
}
