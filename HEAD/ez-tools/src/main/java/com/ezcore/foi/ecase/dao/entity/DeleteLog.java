package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;
import java.sql.Timestamp;
import com.ezcore.foi.ecase.dao.entity.compositeid.DeleteLogId;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
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
@IdClass(DeleteLogId.class)
@Table(name = "DELETE_LOG")
public class DeleteLog implements Serializable {

	private static final long serialVersionUID = -7102588347259518524L;

	@Id
	@NotNull
	@Column(columnDefinition ="uniqueidentifier")
	@ApiModelProperty(value = "資料表識別值")
	private String tableId;
	
	@Id
	@NotNull
	@ApiModelProperty(value = "資料表名")
	private String tableName;
	
	@CreatedBy
	@NotNull
	@ApiModelProperty(value = "建立者")
	private String createBy;

	@CreationTimestamp
	@NotNull
	@ApiModelProperty(value = "建立時間")
	private Timestamp createTime;
	
}
