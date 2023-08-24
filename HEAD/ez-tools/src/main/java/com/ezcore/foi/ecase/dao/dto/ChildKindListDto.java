package com.ezcore.foi.ecase.dao.dto;

import java.util.Date;

import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import java.sql.Timestamp;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
//@AllArgsConstructor
@NoArgsConstructor
public class ChildKindListDto {

	private Long pCid;
	private String pKind;
	private String pCode;
	private String pName;
	private Long cid;
	private String kind;
	private String code;
	private String name;
	private Boolean isEnabled;
	@Temporal(TemporalType.DATE)	// 為了配合XML的格式
	private Timestamp insDate;
	private String insUsr;
	@Temporal(TemporalType.DATE)
	private Timestamp updDate;
	private String updUsr;
	private String description;
	private String sortCode;
	private String property1;
	private String property2;
	private String property3;
	private String property4;
	private String property5;
	private String property6;
	private String property7;
	private String property8;
	private String property9;
	private Long childId;
	private Long parentId;
	private String option1;
	private String option2;
	private String option3;

	public ChildKindListDto(Long pCid, String pKind, String pCode, String pName, Long cid, String kind, String code,
			String name, Boolean isEnabled, Date insDate, String insUsr, Date updDate, String updUsr,
			String description, String sortCode, String property1, String property2, String property3, String property4,
			String property5, String property6, String property7, String property8, String property9, Long childId,
			Long parentId, String option1, String option2, String option3) {
		this.pCid = pCid;
		this.pKind = pKind;
		this.pCode = pCode;
		this.pName = pName;
		this.cid = cid;
		this.kind = kind;
		this.code = code;
		this.name = name;
		this.isEnabled = isEnabled;
		this.insDate = insDate == null ? null : new Timestamp(insDate.getTime());
		this.insUsr = insUsr;
		this.updDate = updDate == null ? null : new Timestamp(updDate.getTime());
		this.updUsr = updUsr;
		this.description = description;
		this.sortCode = sortCode;
		this.property1 = property1;
		this.property2 = property2;
		this.property3 = property3;
		this.property4 = property4;
		this.property5 = property5;
		this.property6 = property6;
		this.property7 = property7;
		this.property8 = property8;
		this.property9 = property9;
		this.childId = childId;
		this.parentId = parentId;
		this.option1 = option1;
		this.option2 = option2;
		this.option3 = option3;
	}

}