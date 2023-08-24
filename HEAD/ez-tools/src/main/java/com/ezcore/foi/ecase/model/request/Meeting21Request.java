package com.ezcore.foi.ecase.model.request;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@JsonIgnoreProperties(ignoreUnknown = true)
public class Meeting21Request {

	@NonNull
    @ApiModelProperty(value = "會次識別值", required = true)
    private String meetingTid;

    @ApiModelProperty(value = "公文年度", required = false) 	// S1 互斥，其中一組必填
    private String docYear;

    @ApiModelProperty(value = "公文字", required = false) 	// S1 互斥，其中一組必填
    private String docWord;

    @ApiModelProperty(value = "公文號", required = false) 	// S1 互斥，其中一組必填
    private String docNo;

    @ApiModelProperty(value = "案件識別值", required = false) 	// S2 互斥，其中一組必填
    private String caseMasterTid;

    public Meeting21Request() {
        this.meetingTid = "會次識別值";
        this.docYear = "公文年度";
        this.docWord = "公文字";
        this.docNo = "公文號";
        this.caseMasterTid = "案件識別值";
    }

    // 如果需要，您可以添加其他方法或建構函數
}
