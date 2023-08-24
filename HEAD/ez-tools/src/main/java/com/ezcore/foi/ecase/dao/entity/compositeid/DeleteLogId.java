package com.ezcore.foi.ecase.dao.entity.compositeid;

import java.io.Serializable;
import java.util.Objects;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@EqualsAndHashCode
public class DeleteLogId implements Serializable {

	private static final long serialVersionUID = 181987868660328077L;

	private String tableId;
	private String tableName;

}
