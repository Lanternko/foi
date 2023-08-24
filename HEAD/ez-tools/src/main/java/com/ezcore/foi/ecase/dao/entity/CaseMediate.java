package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;
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
@Table(name = "CASE_MEDIATE")
public class CaseMediate extends BaseEntity implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "識別值")
    private String id;

    @Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "案件識別值")
    private String caseMasterTid;

    @ApiModelProperty(value = "調處成立否")
    private Long mediateTypeCid;

    @ApiModelProperty(value = "調處成立金額")
    private Integer mediateAmt;

    @ApiModelProperty(value = "調處人員")
    private String mediateUser;

    @ApiModelProperty(value = "拒絕調處日期")
    private Timestamp mediateRejectDate;

    @ApiModelProperty(value = "拒絕調處通知當事人日期")
    private Timestamp rejectNoticeDate;

    @ApiModelProperty(value = "調處情境概述")
    private String mediateDesc;

}
