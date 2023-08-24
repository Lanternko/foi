package com.ezcore.foi.ecase.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.ezcore.foi.ecase.dao.entity.CaseUserAgent;

public interface CaseUserAgentRepository extends JpaRepository<CaseUserAgent, String>, JpaSpecificationExecutor<CaseUserAgent>{

	CaseUserAgent findByCaseUserTid(String caseUserTid);

}
