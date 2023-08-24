package com.ezcore.foi.ecase.dao.dto.custom;

import java.sql.Timestamp;

public interface Eflow1000BoDataProjection {

	String getSqlCheck();
	String getCaseClassName();
	String getInMethodName();
	String getCaseNo();
	String getCompanyName();
	String getDisputeKindName();
	Timestamp getCaseDate();
	String getMemoText();
	String getCaseMasterTid();
	String getFlowCode();
	String getCaseEflowTid();
	String getProcessNo();
	String getCenterOwnerAccount();
	String getCenterOwnerName();
	
}
