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
@Table(name = "CASE_EXAMINER")
public class CaseExaminer extends BaseEntity implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(columnDefinition ="uniqueidentifier")
    @ApiModelProperty(value = "識別值")
    private String id;

    @Column(columnDefinition ="uniqueidentifier")
    @ApiModelProperty(value = "父層識別值")
    private String caseMasterTid;

    @Column(columnDefinition ="uniqueidentifier")
    @ApiModelProperty(value = "預審委員識別值")
    private String memberTid;

    @ApiModelProperty(value = "顯示次序")
    private Integer seqNo;

    @ApiModelProperty(value = "姓名")
    private String name;

    @ApiModelProperty(value = "首次通知日期")
    private Timestamp firstMailDate;

    @ApiModelProperty(value = "最後通知日期")
    private Timestamp latestMailDate;

    @ApiModelProperty(value = "首次列印日(代表鎖定)")
    private Timestamp printDate;

    @ApiModelProperty(value = "審查狀態")
    private Long examStatusCid;

    @ApiModelProperty(value = "審查回覆日")
    private Timestamp replayDate;

    @ApiModelProperty(value = "判斷結論(因為可選其他,無法用uuid)")
    private String resultCaseSuggestionBookTid;

    @ApiModelProperty(value = "其他-判斷結論")
    private String resultDesc;

    @ApiModelProperty(value = "判斷結論(因為可選其他,無法用uuid)")
    private String reasonCaseSuggestionBookTid;

    @ApiModelProperty(value = "其他-理由")
    private String reasionDesc;

}
