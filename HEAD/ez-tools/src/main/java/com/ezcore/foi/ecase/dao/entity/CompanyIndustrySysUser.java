package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.data.annotation.CreatedBy;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import me.zhengjie.modules.system.domain.User;

@Getter
@Setter
@Entity
@Table(name = "COMPANY_INDUSTRY_SYS_USER")
public class CompanyIndustrySysUser implements Serializable {

	private static final long serialVersionUID = -6392220282084639805L;

	@Id
	@NotNull
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@Column(columnDefinition ="uniqueidentifier")
	@ApiModelProperty(value = "識別值")
	private String id;

//	@NotNull
//	@Column(columnDefinition ="uniqueidentifier")
//	@ApiModelProperty(value = "公司產業別-識別值")
//	private String companyIndustryTid;
	@ManyToOne
    @JoinColumn(name = "company_industry_tid", nullable = false, insertable = false, updatable = false)
	@NotNull
	@ApiModelProperty(value = "父層識別值")
	private CompanyIndustry companyIndustry;

//	@NotNull
//	@ApiModelProperty(value = "帳號-識別值")
//	private Long sysUserTid;
	@NotNull
	@OneToOne(cascade = CascadeType.PERSIST)
	@JoinColumn(name = "sys_user_tid", referencedColumnName = "user_id")
	@ApiModelProperty(value = "系統帳號")
	private User user;

	@CreatedBy
	@NotNull
	@ApiModelProperty(value = "建立者")
	private String createBy;

	@CreationTimestamp
	@NotNull
	@ApiModelProperty(value = "建立時間")
	private Timestamp createTime;
	
}
