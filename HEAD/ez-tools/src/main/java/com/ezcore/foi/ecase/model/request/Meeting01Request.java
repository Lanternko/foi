package com.ezcore.foi.ecase.model.request;

import java.sql.Timestamp;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class Meeting01Request {
    
    @NonNull
    @ApiModelProperty(value = "屆次")
    private Number session;

    @NonNull
    @ApiModelProperty(value = "會次")
    private Number meetNo;

    @NonNull
    @ApiModelProperty(value = "會議日期介於-起日")
    private Timestamp meetDateBegin;

    @NonNull
    @ApiModelProperty(value = "會議日期介於-迄日")
    private Timestamp meetDateEnd;

    @ApiModelProperty(value = "只查最大一筆會次資料")
    private Boolean maxMeeting;

    @ApiModelProperty(value = "顯示筆數(預設0,不限制)")
    private Number showRows;

    public Meeting01Request() {
        this.session = 4;
        this.meetNo = 1;
        // 設置起始日期為當前系統時間
        this.meetDateBegin = new Timestamp(System.currentTimeMillis());
        // 設置結束日期為起始日期之後的一天（增加86400000毫秒）
        this.meetDateEnd = new Timestamp(meetDateBegin.getTime() + 86400000L);
        this.maxMeeting = null;
        this.showRows = 0;
    }
}
