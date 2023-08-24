package com.ezcore.foi.ecase.model.bo.meetingbo;

import java.sql.Timestamp;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@JsonIgnoreProperties(ignoreUnknown = true)
public class MeetingBo {

	@ApiModelProperty(value = "識別值")
    @NonNull
    private String meetingTid;

    @ApiModelProperty(value = "屆次")
    @NonNull
    private Integer session;

    @ApiModelProperty(value = "會次")
    @NonNull
    private Integer meetNo;

    @ApiModelProperty(value = "會議日期")
    @NonNull
    private Timestamp meetDate;

    @ApiModelProperty(value = "提會期限(日期)")
    @NonNull
    private Timestamp limitDate;

    @ApiModelProperty(value = "會議地點")
    @NonNull
    private String meetRoom;

    @ApiModelProperty(value = "主席")
    @NonNull
    private String chairman;

    public MeetingBo() {
        this.meetingTid = "識別值";
        this.session = 4;
        this.meetNo = 12;
        this.meetDate = new Timestamp(1676543210 * 1000L); 	//毫秒
        this.limitDate = new Timestamp(1676543210 * 1000L);
        this.meetRoom = "會議地點";
        this.chairman = "主席";
    }
}