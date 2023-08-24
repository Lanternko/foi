package com.ezcore.foi.ecase.dao.entity.custom;

public interface CompanyIndustryTreeProjection {

	Long getCid();
	Long getParentId();
	String getName();
	String getCode();
	Integer getLevel();
	String getIndustryPath();
	String getCompanyIndustryTid();
	String getCompantTid();
	
}
