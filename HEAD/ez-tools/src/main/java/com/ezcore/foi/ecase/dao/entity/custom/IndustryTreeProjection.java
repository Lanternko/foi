package com.ezcore.foi.ecase.dao.entity.custom;

public interface IndustryTreeProjection {

	Long getCid();
	Long getParentId();
	String getName();
	String getCode();
	Integer getLevel();
	String getIndustryPath();
	
}
