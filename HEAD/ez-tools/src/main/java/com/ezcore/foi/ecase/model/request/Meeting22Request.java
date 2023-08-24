package com.ezcore.foi.ecase.model.request;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@JsonIgnoreProperties(ignoreUnknown = true)
public class Meeting22Request {

    @ApiModelProperty(value = "會次識別值", required = true)
    private String meetingTid;

    @ApiModelProperty(value = "提會案件識別值", required = true)
    private String meetingDecideTid;

    public Meeting22Request() {
        this.meetingTid = "會次識別值";
        this.meetingDecideTid = "提會案件識別值";
    }

    // 如果需要，您可以添加其他方法或建構函數
}
