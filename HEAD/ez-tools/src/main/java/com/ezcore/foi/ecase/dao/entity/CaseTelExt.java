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
@Table(name = "CASE_TEL_EXT")
public class CaseTelExt extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 7742206419871492607L;

    @Id
	@NotNull
	@Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "識別值")
    private String id;

    @NotNull
	@Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "父層識別值")
    private String caseMasterTid;

    @ApiModelProperty(value = "電話件結案情型(屬金管會)")
    private Long telTypeCid;

	@Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "被匯入至哪一筆")
    private String exportCaseMasterTid;

    @ApiModelProperty(value = "本次是否曾向業者申訴")
    private Long appealTypeCid;

    @ApiModelProperty(value = "本次是否曾由本人或他人向本中心申訴")
    private Long appealClassCid;

    @ApiModelProperty(value = "金保法第13條第2項規定.第1項")
    @NotNull
    @Column(name = "is_check132_1")
    private Boolean isCheck1321;

    @ApiModelProperty(value = "金保法第13條第2項規定.第2項")
    @NotNull
    @Column(name = "is_check132_2")
    private Boolean isCheck1322;

    @ApiModelProperty(value = "金保法第13條第2項規定.第3項")
    @NotNull
    @Column(name = "is_check132_3")
    private Boolean isCheck1323;

    @ApiModelProperty(value = "金保法第13條第2項規定.第4項")
    @NotNull
    @Column(name = "is_check132_4")
    private Boolean isCheck1324;

    @ApiModelProperty(value = "金保法第13條第2項規定.第5項")
    @NotNull
    @Column(name = "is_check132_5")
    private Boolean isCheck1325;

    @ApiModelProperty(value = "建立者")
    @NotNull
    private String createBy;

    @ApiModelProperty(value = "建立時間")
    @NotNull
    private Timestamp createTime;

    @ApiModelProperty(value = "異動者")
    private String updateBy;

    @ApiModelProperty(value = "異動時間")
    private Timestamp updateTime;
	
}
