package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;
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
@Table(name = "SESSION_MEMBER")
public class SessionMember extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@NotNull
//	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@Column(columnDefinition = "uniqueidentifier")
	@ApiModelProperty(value = "識別值")
	private String id;

	@NotNull
	@OneToOne(cascade = CascadeType.PERSIST)
	@JoinColumn(name = "session_cid", referencedColumnName = "cid")
	@ApiModelProperty(value = "父層識別值")
	private Codedetail sessionCode;

	@NotNull
	@ApiModelProperty(value = "顯示次序")
	private Integer seqNo;

	@OneToOne
	@JoinColumn(name = "member_tid")
	@NotNull
	@ApiModelProperty(value = "預審委員識別值")
	private Member member;

	@NotNull
	@ApiModelProperty(value = "註記刪除")
	private Boolean delFlag;
	
//	----------------------------------------------------------
	@JSONField(serialize = false)
	@OneToMany(mappedBy = "sessionMember", orphanRemoval = true, cascade = {CascadeType.PERSIST, CascadeType.MERGE})
	private List<SessionMemberAvoid> avoids;
}
