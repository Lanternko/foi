package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import me.zhengjie.base.BaseEntity;

@Getter
@Setter
@Entity
@Table(name = "MEETING_MEMBER")
public class MeetingMember extends BaseEntity implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @NotNull
    @Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "識別值")
    private String id;

    @NotNull
    @Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "會次識別值")
    private String meetingTid;

    @NotNull
    @Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "委員識別值")
    private String memberTid;

    @NotNull
    @ApiModelProperty(value = "出席否")
    private Boolean isJoin;

}
