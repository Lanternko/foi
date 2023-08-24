package com.ezcore.foi.ecase.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.ezcore.foi.ecase.dao.entity.CaseOwnerLog;

public interface CaseOwnerLogRepository extends JpaRepository<CaseOwnerLog, String>, JpaSpecificationExecutor<CaseOwnerLog> {

	
	
}
