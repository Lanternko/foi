package com.ezcore.foi.ecase.model.bo.meetingbo;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@JsonIgnoreProperties(ignoreUnknown = true)
public class MeetingMember implements Serializable {

	private static final long serialVersionUID = 1L;

	@ApiModelProperty(value = "識別值")
    @NonNull
    private String meetingMemberTid;

    @ApiModelProperty(value = "會次識別值")
    @NonNull
    private String meetingTid;

    @ApiModelProperty(value = "委員識別值")
    @NonNull
    private String memberTid;

    @ApiModelProperty(value = "委員姓名")
    @NonNull
    private String memberName;

    @ApiModelProperty(value = "專長領域名稱")
    private String domainName;

    @ApiModelProperty(value = "出席數")
    @NonNull
    private Integer joinCnt;

    @ApiModelProperty(value = "預審件數")
    @NonNull
    private Integer preExamCnt;
    
    @ApiModelProperty(value = "撤件數")
    @NonNull
    private Integer cancelCnt;

    @ApiModelProperty(value = "出席否")
    @NonNull
    private Boolean isJoin;
    
    public MeetingMember() {
        this.meetingMemberTid = "識別值";
        this.meetingTid = "會次識別值";
        this.memberTid = "委員識別值";
        this.memberName = "委員姓名";
        this.domainName = "專長領域名稱";
        this.joinCnt = 0;
        this.preExamCnt = 0;
        this.cancelCnt = 0;
        this.isJoin = true;
    }

    
}
