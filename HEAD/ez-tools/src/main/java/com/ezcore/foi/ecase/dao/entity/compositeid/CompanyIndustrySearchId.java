package com.ezcore.foi.ecase.dao.entity.compositeid;

import java.io.Serializable;
import java.util.Objects;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@EqualsAndHashCode
public class CompanyIndustrySearchId implements Serializable {

	private static final long serialVersionUID = -7002755300594209626L;

	private Long industryCid;
	private String companyTid;
	private String companyIndustryTid;

}
