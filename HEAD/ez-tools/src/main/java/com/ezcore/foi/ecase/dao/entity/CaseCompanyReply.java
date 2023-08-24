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
@Table(name = "CASE_COMPANY_REPLY")
public class CaseCompanyReply extends BaseEntity implements Serializable {

    private static final long serialVersionUID = -3595847916226535888L;

    @Id
    @NotNull
    @Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "識別值")
    private String id;

    @NotNull
    @Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "父層識別值")
    private String caseMasterTid;

    @NotNull
    @ApiModelProperty(value = "回覆處理結果")
    private Long replyResultTypeCid;

    @NotNull
    @ApiModelProperty(value = "回覆概述")
    private String resultText;

    @ApiModelProperty(value = "回覆中心之流程代碼")
    private Long replayFlowCodeCid;

    @ApiModelProperty(value = "爭議類型")
    private Long disputeKindCid;

    @ApiModelProperty(value = "銷售通路")
    private String salesChannel;

    @ApiModelProperty(value = "銷售機構")
    private String salesCompanyName;

    @ApiModelProperty(value = "保單掛名業務員")
    private String salesName;

}
