package com.ezcore.foi.ecase.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.ezcore.foi.ecase.dao.entity.CaseMediate;

public interface CaseMediateRepository extends JpaRepository<CaseMediate, String>, JpaSpecificationExecutor<CaseMediate> {

	CaseMediate findByCaseMasterTid(String caseMasterTid);
	
}
