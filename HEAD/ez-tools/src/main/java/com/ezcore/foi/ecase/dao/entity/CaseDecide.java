package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;
import java.sql.Timestamp;
import java.math.BigDecimal;
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
@Table(name = "CASE_DECIDE")
public class CaseDecide extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@NotNull
	@Column(columnDefinition ="uniqueidentifier")
	@ApiModelProperty(value = "識別值")
	private String id;

	@NotNull
	@Column(columnDefinition ="uniqueidentifier")
	@ApiModelProperty(value = "父層識別值")
	private String caseMasterTid;

	@ApiModelProperty(value = "結案情形1階(由議事行政帶入))")
	private Long closeReason1Cid;

	@ApiModelProperty(value = "評議成立/不成立結論")
	private Long decideResultCid;

	@ApiModelProperty(value = "請求標的類型")
	private Long requestTypeCid;

	@ApiModelProperty(value = "請求標的/評議決定金額A")
	private BigDecimal aAmt;

	@ApiModelProperty(value = "評議決定金額B")
	private BigDecimal bAmt;

	@ApiModelProperty(value = "適用一定額度")
	private Long quotaStyleCid;

	@ApiModelProperty(value = "申請人評議書回執日期")
	private Timestamp applReturnDate;

	@ApiModelProperty(value = "申請人評議決定回函文號")
	private String applReturnReceiveNo;

	@ApiModelProperty(value = "相對人評議決定回函文號")
	private String companyReturnReceiveNo;

	@ApiModelProperty(value = "一定額度類型")
	private Long quotaTypeCid;

	@ApiModelProperty(value = "評議成立金額縮減至一定額度")
	private Boolean isCut;

	@ApiModelProperty(value = "評議決定摘要")
	private String decideRemark;
    
}
