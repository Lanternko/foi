package com.ezcore.foi.ecase.model.response;

import java.sql.Timestamp;
import java.util.Arrays;
import java.util.List;

import com.ezcore.foi.ecase.model.bo.meetingbo.MeetingFile;
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
public class Meeting01Response {
    
    @NonNull
    @ApiModelProperty(value = "屆次")
    private Integer session;

    @NonNull
    @ApiModelProperty(value = "會次")
    private Integer meetNo;

    @NonNull
    @ApiModelProperty(value = "會議日期")
    private Timestamp meetDate;

    @NonNull
    @ApiModelProperty(value = "提會期限(日期)")
    private Timestamp limitDate;

    @NonNull
    @ApiModelProperty(value = "提會件數")
    private Integer caseCnt;

    @NonNull
    @ApiModelProperty(value = "上傳檔案")
    private List<MeetingFile> files;
    

    public Meeting01Response() {
    	this.session = 4;
    	this.meetNo = 12;
    	this.meetDate = new Timestamp(1677830400000L);
    	this.limitDate = new Timestamp(1677830400000L);
    	this.caseCnt = 180;
    	this.files = Arrays.asList(new MeetingFile(1), new MeetingFile(2));
    }
    
    public Meeting01Response(Integer a, Integer b, Long date1, Long date2, Integer c, List<MeetingFile> d) {
    	this.session = a;
    	this.meetNo = b;
    	this.meetDate = new Timestamp(date1);
    	this.limitDate = new Timestamp(date2);
    	this.caseCnt = c;
    	this.files = d;
    }

}
