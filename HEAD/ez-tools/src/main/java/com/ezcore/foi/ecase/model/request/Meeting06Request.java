package com.ezcore.foi.ecase.model.request;

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
public class Meeting06Request {

    @NonNull
    @ApiModelProperty(value = "識別值", required = true)
    private String meetingMemberTid;

    @NonNull
    @ApiModelProperty(value = "委員識別值", required = true)
    private String memberTid;

    @NonNull
    @ApiModelProperty(value = "與會否", required = true)
    private Boolean isJoin;

    public Meeting06Request() {
        this.meetingMemberTid = "識別值1";
        this.memberTid = "委員識別值1";
        this.isJoin = true;
    }
    
}
