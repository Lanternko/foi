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

@Getter
@Setter
@Entity
@Table(name = "CASE_MEDIATE_CONTACT")
public class CaseMediateContact implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "識別值")
    private String id;

    @Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "父層識別值")
    private String caseMediateTid;

    @ApiModelProperty(value = "聯繫日期")
    private Timestamp contactDate;

    @ApiModelProperty(value = "聯繫對象(文字,用tab分隔; kind=contract_user_kind)")
    private String contactUserText;

    @ApiModelProperty(value = "聯繫目的")
    private Long contactTypeCid;

    @ApiModelProperty(value = "聯繴(調處)方式")
    private Long contactMethodCid;

    @ApiModelProperty(value = "備註")
    private String remark;

    @ApiModelProperty(value = "須(Mail)通知長官調處情型")
    private Boolean needMail;

    @ApiModelProperty(value = "通知信寄送時間")
    private Timestamp mailTime;

    @ApiModelProperty(value = "長官審核時間")
    private Timestamp signTime;

    @ApiModelProperty(value = "長官批示結果(kind=sign_status)")
    private Long signStatusCid;

    @ApiModelProperty(value = "長官批示內容")
    private String signMemo;

    @ApiModelProperty(value = "建立者（建檔人員）")
    private String createBy;

    @ApiModelProperty(value = "建立日期（排入通知長官時間)")
    private Timestamp createTime;
}
