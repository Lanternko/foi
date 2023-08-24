package com.ezcore.foi.ecase.dao.entity.compositeid;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Builder
@EqualsAndHashCode
public class CaseTreeSearchId implements Serializable {

	private static final long serialVersionUID = 1481840296454116040L;

	private String caseTreeTid;
	private Long nodeCid;

	public CaseTreeSearchId(String caseTreeTid, Long nodeCid) {
        this.caseTreeTid = caseTreeTid;
        this.nodeCid = nodeCid;
    }
	
}