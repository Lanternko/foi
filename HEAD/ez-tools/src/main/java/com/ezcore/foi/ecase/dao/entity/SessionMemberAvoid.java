package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import org.hibernate.annotations.CreationTimestamp;
import org.springframework.data.annotation.CreatedBy;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "SESSION_MEMBER_AVOID")
public class SessionMemberAvoid implements Serializable {

	private static final long serialVersionUID = 3048400344955065054L;

	@Id
	@NotNull
//	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@Column(columnDefinition = "uniqueidentifier")
	@ApiModelProperty(value = "識別值")
	private String id;

	@ManyToOne
    @JoinColumn(name = "session_member_tid", nullable = false)
	@NotNull
	@ApiModelProperty(value = "父層識別值")
	private SessionMember sessionMember;

	@ManyToOne
    @JoinColumn(name = "company_tid", nullable = false)
	@NotNull
	@ApiModelProperty(value = "應迴避公司識別值")
	private Company company;

	@CreatedBy
	@NotNull
	@ApiModelProperty(value = "建立者")
	private String createBy;

	@CreationTimestamp
	@NotNull
	@ApiModelProperty(value = "建立時間")
	private Timestamp createTime;

	
}
