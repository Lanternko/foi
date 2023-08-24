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
@Table(name = "CASE_TREE")
public class CaseTree extends BaseEntity implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(columnDefinition ="uniqueidentifier")
    @ApiModelProperty(value = "識別值")
    private String id;

    @Column(columnDefinition ="uniqueidentifier")
    @ApiModelProperty(value = "案件識別值")
    private String caseMasterTid;

    @ApiModelProperty(value = "樹的類型名稱")
    private String treeName;

    @ApiModelProperty(value = "節點識別值")
    private Long nodeCid;

//    @ApiModelProperty(value = "建立者")
//    private String createBy;
//
//    @ApiModelProperty(value = "建立時間")
//    private Timestamp createTime;
//
//    @ApiModelProperty(value = "異動者")
//    private String updateBy;
//
//    @ApiModelProperty(value = "異動時間")
//    private Timestamp updateTime;
}
