package com.ezcore.foi.ecase.dao.entity;

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
@Table(name = "CASE_MASTER")
public class CaseMaster extends BaseEntity {

	@Id
	@NotNull
	@Column(columnDefinition = "uniqueidentifier")
	@ApiModelProperty(value = "識別值")
	private String id;

	@NotNull
	@ApiModelProperty(value = "案號")
	private String caseNo;

	@NotNull
	@ApiModelProperty(value = "收件日期")
	private Timestamp caseDate;

	@NotNull
	@ApiModelProperty(value = "收件方式")
	private Long caseTypeCid;

	@NotNull
	@ApiModelProperty(value = "進件方式")
	private Long inMethodCid;

	@NotNull
	@ApiModelProperty(value = "專案類型(進件類型)")
	private Long caseClassCid;

	@ApiModelProperty(value = "計件否")
    private Boolean caseClassCnt;

	@ApiModelProperty(value = "原申訴案號")
	private String appealCaseNo;

	@Column(columnDefinition ="uniqueidentifier")
	@ApiModelProperty(value = "原申訴案號識別值")
	private String appealCaseMasterTid;

	@ApiModelProperty(value = "契約編號")
	private String contactNo;
	
	@ApiModelProperty(value = "件別")
    private Long specialCid;

	@NotNull
	@ApiModelProperty(value = "於金融業提出申訴否")
	private Boolean isAppeal;

	@Column(columnDefinition ="uniqueidentifier")
	@ApiModelProperty(value = "最後一筆案件進度識別值")
	private String latestCaseFlowTid;

	@Column(columnDefinition ="uniqueidentifier")
	@ApiModelProperty(value = "最後一筆線上流程進度識別值")
	private String latestCaseEflowTid;

	@ApiModelProperty(value = "爭議產業別")
	private Long treeIndustryCid;
	
	@Column(columnDefinition ="uniqueidentifier")
	@ApiModelProperty(value = "爭議對象識別值")
	private String companyTid;

	@ApiModelProperty(value = "爭議類型-理賠否")
    private Long reparationCid;
	
	@ApiModelProperty(value = "爭議類型-選項")
	private Long disputeKindCid;

	@ApiModelProperty(value = "結案情形分類")
	private Long closeStatusCid;

	@ApiModelProperty(value = "結案情形1階")
	@Column(name = "close_reason1_cid")
	private Long closeReason1Cid;

	@ApiModelProperty(value = "結案情形2階")
	@Column(name = "close_reason2_cid")
	private Long closeReason2Cid;

	@ApiModelProperty(value = "結案階段")
	private Long closeStageCid;

	@NotNull
	@ApiModelProperty(value = "中心承辦人")
	private String centerOwnerAccount;

	@ApiModelProperty(value = "業者承辦人")
	private String companyOwnerAccount;

	@ApiModelProperty(value = "是否續行申請評議")
    private Boolean isCc;
	
	@ApiModelProperty(value = "結案否")
    private Boolean isClose;
	
	@ApiModelProperty(value = "續辦狀態")
    private Long continueStatusCid;
	
	@ApiModelProperty(value = "續辦案號")
    private String preCaseNo;
	
	@ApiModelProperty(value = "續辦案號識別值")
    private String preCaseCaseMasterTid;
	
    @NotNull
	@ApiModelProperty(value = "計費否")
    private Boolean isFree;
	
	@ApiModelProperty(value = "舊版案件屬性(用於103年前報表)")
    private Long caseAttributeOldCid;
    
}
