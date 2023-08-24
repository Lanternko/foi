package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.alibaba.fastjson.annotation.JSONField;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import me.zhengjie.base.BaseEntity;

@Getter
@Setter
@Entity
@Table(name = "COMPANY")
public class Company extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 3611901533018699624L;

	@Id
	@NotNull
//	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@Column(columnDefinition ="uniqueidentifier")
	@ApiModelProperty(value = "識別值")
	private String id;

	@NotNull
	@ApiModelProperty(value = "系統編號")
	private String code;

	@ApiModelProperty(value = "統一編號")
	private String taxId;

	@NotNull
	@ApiModelProperty(value = "姓名")
	private String name;

	@ApiModelProperty(value = "負責人")
	private String chairman;

	@ApiModelProperty(value = "公司地址")
	private String companyAddr;

	@ApiModelProperty(value = "通訊地址")
	private String mailAddr;

//	@NotNull
//	@ApiModelProperty(value = "公司狀態")
//	private Integer companyStateCid;
	@OneToOne(cascade = CascadeType.PERSIST)
	@JoinColumn(name = "company_state_cid", referencedColumnName = "cid")
	@NotNull
	@ApiModelProperty(value = "狀態")
	private Codedetail companyStateCode;

	@ApiModelProperty(value = "啟用日")
	private Timestamp enableDate;

	@ApiModelProperty(value = "停用日")
	private Timestamp closeDate;

	@ApiModelProperty(value = "停用原因")
	private String closeRemark;

	@ApiModelProperty(value = "合併日期")
	private Timestamp combineDate;

	@ApiModelProperty(value = "下拉代碼停用日")
	private Timestamp codeEndDate;

//	-------------------------------------------------
	@JSONField(serialize = false)
	@OneToMany(mappedBy = "company", orphanRemoval = true)
	private List<SessionMemberAvoid> sessionMemberSouldAvoids;
	
	@JSONField(serialize = false)
	@OneToMany(mappedBy = "company", orphanRemoval = true)
	private List<CompanyIndustry> companyOwnedIndustrys;
	
	@JSONField(serialize = false)
	@OneToMany(mappedBy = "company", orphanRemoval = true)
	private List<CompanyConcat> companyConcats;
	
}
