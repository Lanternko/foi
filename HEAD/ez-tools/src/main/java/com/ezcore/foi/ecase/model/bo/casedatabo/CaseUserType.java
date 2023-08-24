package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.sql.Timestamp;

import com.ezcore.foi.ecase.model.bo.ShowCodeBo;

public interface CaseUserType {
	String getCaseMasterTid();
    String getCaseUserTid();
    String getName();
    ShowCodeBo getIdnoType();
    String getIdno();
    String getSex();
    Timestamp getBirthDate();
    String getPhone1No();
    String getPhone1Ext();
    String getPhone2No();
    String getPhone2Ext();
    String getEmail();
    String getZipCode();
    ShowCodeBo getSysCity();
    ShowCodeBo getSysDistrict();
    String getAddress();
    Timestamp getAssignTime();
    
    String getUserKind();

	Timestamp adjustBirthDate(Timestamp originalBirthDate);
}
