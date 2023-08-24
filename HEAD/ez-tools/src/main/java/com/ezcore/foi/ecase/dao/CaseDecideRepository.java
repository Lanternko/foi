package com.ezcore.foi.ecase.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.ezcore.foi.ecase.dao.entity.CaseDecide;

public interface CaseDecideRepository extends JpaRepository<CaseDecide, String>, JpaSpecificationExecutor<CaseDecide> {

	CaseDecide findByCaseMasterTid(String caseMasterTid);
	
}
