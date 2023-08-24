package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import me.zhengjie.base.BaseEntity;

@Getter
@Setter
@Entity
@Table(name = "CASE_DESK_EXT")
public class CaseDeskExt extends BaseEntity implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "識別值")
    private String id;

    @Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "父層識別值")
    private String caseMasterTid;

    @ApiModelProperty(value = "訪談結束時間")
    private Timestamp endTime;

    @ApiModelProperty(value = "評議申請應附身分證正、反面影本")
    private Boolean isAttachIdCopy;

    @ApiModelProperty(value = "委任代理文件")
    private Boolean isAttactAgentPaper;

    @ApiModelProperty(value = "評議申請應附受任人/代理人身分證正、反面影本")
    private Boolean isAttactAgentCopy;

    @ApiModelProperty(value = "是否曾提出民事訟訴")
    private Boolean isLaw;

    @ApiModelProperty(value = "民事訟訴內容簡述")
    private String lawRemark;

    @ApiModelProperty(value = "是否成立調處、評議、和解、調解或仲裁")
    private Boolean isMeeting;

    @ApiModelProperty(value = "調處、評議、和解、調解或仲裁-內容簡述")
    private String meetingRemark;

    @ApiModelProperty(value = "是否曾向金融服務業申訴過")
    private Boolean isCompanyAppeal;

    @ApiModelProperty(value = "申訴日期")
    private Timestamp appealDate;

    @ApiModelProperty(value = "收受金融服務業回覆日期")
    private Timestamp companyReplyDate;

    @ApiModelProperty(value = "申訴內容與本次訴求是否相符")
    private Boolean isAppealSame;

    @ApiModelProperty(value = "臨櫃-諮詢事項")
    private Long deskClassCid;
    
}
