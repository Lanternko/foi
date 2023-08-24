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
@Table(name = "CASE_SUGGESTION")
public class CaseSuggestion extends BaseEntity implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(columnDefinition ="uniqueidentifier")
    @ApiModelProperty(value = "識別值")
    private String id;

    @Column(columnDefinition ="uniqueidentifier")
    @ApiModelProperty(value = "案件識別值")
    private String caseMasterTid;

    @ApiModelProperty(value = "案由(描述)")
    private String caseReasonDesc;

    @ApiModelProperty(value = "請求標的")
    private String requestDesc;

    @ApiModelProperty(value = "郵件註記(隨email寄出)")
    private String mailMessage;

}
