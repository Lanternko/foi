package com.ezcore.foi.ecase.dao.entity.custom;

import java.sql.Timestamp;

public interface Eflow1000BoDataProjection {

	String getCaseClassName();   
	String getInMethodName();   
	String getCaseNo();   
//	String getApplicantNames();   
	String getCompanyName();   
	String getDisputeKindName();   
	Timestamp getCaseDate();   
	String getMemoText();   
	String getCaseMasterTid();   
	String getCaseEflowTid();   
	String getProcessNo();
	
}
