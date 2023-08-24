package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.alibaba.fastjson.annotation.JSONField;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;
import me.zhengjie.base.BaseEntity;

@Getter
@Setter
@Entity
@Table(name = "MEMBER")
public class Member extends BaseEntity implements Serializable {

	private static final long serialVersionUID = -3906581456034444104L;

	@Id
	@NotNull
//	@GeneratedValue(strategy = GenerationType.IDENTITY)
//	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@Column(columnDefinition ="uniqueidentifier")
	@ApiModelProperty(value = "識別值")
	private String id;

	@NotNull
	@OneToOne(cascade = CascadeType.PERSIST)
	@JoinColumn(name = "member_type_cid", referencedColumnName = "cid")
	@ApiModelProperty(value = "身分類別")
	private Codedetail memberTypeCode;
	
	@NotNull
	@ApiModelProperty(value = "顯示次序")
	private Integer seqNo;

	@NotNull
	@ApiModelProperty(value = "帳號")
	private String account;

	@NotNull
	@ApiModelProperty(value = "姓名")
	private String name;

	@OneToOne(cascade = CascadeType.PERSIST)
	@JoinColumn(name = "domain_cid", referencedColumnName = "cid")
	@ApiModelProperty(value = "專長領域")
	private Codedetail domainCode;

	@NotNull
	@ApiModelProperty(value = "性別")
	private String sex;

	@NotNull
	@ApiModelProperty(value = "電話")
	private String telNo;

	@ApiModelProperty(value = "分機")
	private String extNo;

	@NotNull
	@ApiModelProperty(value = "主要電子郵件")
	private String email1;

	@ApiModelProperty(value = "副知電子郵件")
	private String email2;

	@ApiModelProperty(value = "匯款銀行（文字)")
	private String bankDesc;

	@ApiModelProperty(value = "匯款帳號")
	private String bankAccount;

	@NotNull
	@ApiModelProperty(value = "註記刪除")
	private Integer delFlag;

//	-----------------------------------------------------
	@JSONField(serialize = false)
	@OneToOne
	@JoinColumn(name = "id")
	private SessionMember sessionMember;
	
}
