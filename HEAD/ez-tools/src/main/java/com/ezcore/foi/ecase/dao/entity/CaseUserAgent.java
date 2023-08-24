package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import me.zhengjie.base.BaseEntity;

@Getter
@Setter
@Entity
@Table(name = "CASE_USER_AGENT")
public class CaseUserAgent extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 4062002168610192447L;

    @Id
    @NotNull
    @Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "識別值")
    private String id;

    @NotNull
    @Column(columnDefinition = "uniqueidentifier") 	// caseuser 1:1 caseuseragent
    @ApiModelProperty(value = "父層識別值")
    private String caseUserTid;

    @NotNull
    @ApiModelProperty(value = "代理人類型")
    private Long agentKindCid;

    @ApiModelProperty(value = "代理人身分別")
    private Long agentTypeCid;

    @ApiModelProperty(value = "身分別-其他之註釋")
    private String otherRemark;
    
    @NotNull
    @CreatedBy
    @ApiModelProperty(value = "建立者")
    private String createBy;

    @NotNull
    @CreatedDate
    @ApiModelProperty(value = "建立時間")
    private Timestamp createTime;
    
    @LastModifiedBy
    @ApiModelProperty(value = "異動者")
    private String updateBy;

    @LastModifiedDate
    @ApiModelProperty(value = "異動時間")
    private Timestamp updateTime;

}
