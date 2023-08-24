package com.ezcore.foi.ecase.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.ezcore.foi.ecase.dao.entity.CaseDocExt;

public interface CaseDocExtRepository extends JpaRepository<CaseDocExt, String>, JpaSpecificationExecutor<CaseDocExt> {

	CaseDocExt findByCaseMasterTid(String caseMasterTid);
	
}
