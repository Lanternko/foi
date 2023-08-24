package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.GenericGenerator;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import me.zhengjie.base.BaseEntity;

@Getter
@Setter
@Entity
@Table(name = "COMPANY_CONCAT")
public class CompanyConcat extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 3516729921055088706L;

	@Id
	@NotNull
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@Column(columnDefinition ="uniqueidentifier")
	@ApiModelProperty(value = "識別值")
	private String id;

//	@Column(columnDefinition ="uniqueidentifier")
//	@ApiModelProperty(value = "公司")
//	private String companyTid;
	@ManyToOne
    @JoinColumn(name = "company_tid", nullable = false, insertable = false, updatable = false)
	@ApiModelProperty(value = "父層識別值")
	private Company company;

	@ApiModelProperty(value = "顯示次序")
	private Integer seqNo;

	@NotNull
	@ApiModelProperty(value = "姓名")
	private String name;

	@NotNull
	@ApiModelProperty(value = "電話")
	private String telNo;

	@ApiModelProperty(value = "電話分機")
	private String telExt;

	@ApiModelProperty(value = "傳真")
	private String faxNo;

	@ApiModelProperty(value = "傳真分機")
	private String faxExt;

	@NotNull
	@ApiModelProperty(value = "電子郵件")
	private String email;
	
}
