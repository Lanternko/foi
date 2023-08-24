package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
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
@Table(name = "MEETING")
public class Meeting extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 3727036051750118970L;

	@Id
	@NotNull
	@GenericGenerator(name = "generator", strategy = "guid", parameters = {})
	@Column(columnDefinition ="uniqueidentifier")
	@ApiModelProperty(value = "識別值")
	private String id;

	@NotNull
	@ApiModelProperty(value = "屆次")
	private Integer session;

	@NotNull
	@ApiModelProperty(value = "會次")
	private Integer meetNo;

	@NotNull
	@ApiModelProperty(value = "會議日期")
	private Timestamp meetDate;

	@NotNull
	@ApiModelProperty(value = "提會期限")
	private Timestamp limitDate;

	@NotNull
	@ApiModelProperty(value = "會議地點")
	private String meetRoom;

	@ApiModelProperty(value = "主席")
	private String chairman;
	
}
