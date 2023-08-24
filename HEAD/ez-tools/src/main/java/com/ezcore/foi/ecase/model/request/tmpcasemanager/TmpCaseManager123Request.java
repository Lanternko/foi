package com.ezcore.foi.ecase.model.request.tmpcasemanager;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

import java.security.Timestamp;

import io.swagger.annotations.ApiModelProperty;

@Data
@NoArgsConstructor
public class TmpCaseManager123Request {

	@NonNull
    @ApiModelProperty(value = "案件識別值", required = true)
    private String caseMasterTid;

    @ApiModelProperty(value = "注意:配寄", required = false)	//如:docNo(用於評議案件指派)
    private String tempColumn;

    @ApiModelProperty(value = "預設1天後移除", required = false)
    private Timestamp expireDate;

//    @ApiModelProperty(value = "公文字號-號", required = false)
//    private String docNo;

    // 可以根據需要添加其他欄位
}
