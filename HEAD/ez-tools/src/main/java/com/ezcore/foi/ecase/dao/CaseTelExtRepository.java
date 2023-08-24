package com.ezcore.foi.ecase.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.ezcore.foi.ecase.dao.entity.CaseTelExt;

public interface CaseTelExtRepository extends JpaRepository<CaseTelExt, String>, JpaSpecificationExecutor<CaseTelExt> {

	CaseTelExt findByCaseMasterTid(String caseMasterTid);
	
}
