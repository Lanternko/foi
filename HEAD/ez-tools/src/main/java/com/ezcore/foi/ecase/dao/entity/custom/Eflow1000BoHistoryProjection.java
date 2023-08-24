package com.ezcore.foi.ecase.dao.entity.custom;

import java.sql.Timestamp;

public interface Eflow1000BoHistoryProjection {

	String getProcessNo();
	String getCurrentWorkGroup();
	String getNextWorkGroup();
	Timestamp getCreateTime();
	Integer getRows();
	
}
