package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;
import java.sql.Timestamp;

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
@Table(name = "MEETING_DECIDE")
public class MeetingDecide extends BaseEntity implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @NotNull
    @Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "識別值")
    private String id;

    @NotNull
    @Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "案件識別值")
    private String caseMasterTid;

    @Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "會次")
    private String meetingTid;

    @ApiModelProperty(value = "結案情形分類(提會結論)")
    private Long closeStatusCid;

    @ApiModelProperty(value = "結案情形1階(選會次時帶入爭議內容值)")
    @Column(name = "close_reason1_cid")
    private Long closeReason1Cid;

    @ApiModelProperty(value = "決議結果")
    private String meetingResultDesc;

    @ApiModelProperty(value = "議事人員退回時間")
    private Timestamp cancelTime;

}
