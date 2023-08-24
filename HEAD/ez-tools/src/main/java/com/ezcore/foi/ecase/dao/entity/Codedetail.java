package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.ezcore.tools.codedetail.dto.CodeDetailDto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "codedetail")
public class Codedetail implements Serializable {

	private static final long serialVersionUID = -272564192419238632L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long cid;

	private Date insDate;

	private String insUsr;

	private Date updDate;

	private String updUsr;

	private String kind;

	private String code;

	private String name;

	private Boolean isEnabled;

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

	public CodeDetailDto toDto() {
		CodeDetailDto dto = new CodeDetailDto();
		dto.setCid(cid);
		dto.setCode(code);
		dto.setKind(kind);
		dto.setName(name);
		dto.setIsEnabled(isEnabled);
		dto.setDescription(description);
		dto.setSortCode(sortCode);
		dto.setProperty1(property1);
		dto.setProperty2(property2);
		dto.setProperty3(property3);
		dto.setProperty4(property4);
		dto.setProperty5(property5);
		dto.setProperty6(property6);
		dto.setProperty7(property7);
		dto.setProperty8(property8);
		dto.setProperty9(property9);
		dto.setChildId(childId);
		dto.setParentId(parentId);

		return dto;
	}

}
