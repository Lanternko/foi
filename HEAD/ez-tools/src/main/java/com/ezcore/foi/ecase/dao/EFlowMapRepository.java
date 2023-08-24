package com.ezcore.foi.ecase.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.ezcore.foi.ecase.dao.entity.EFlow;
import com.ezcore.foi.ecase.dao.entity.EFlowMap;

public interface EFlowMapRepository extends JpaRepository<EFlowMap, String>, JpaSpecificationExecutor<EFlowMap> {

	EFlowMap findByEflowAndCurrentCodeAndAction(EFlow eflow, String currentCode, String action);
	
	EFlowMap findByEflowAndNextCodeAndAction(EFlow eflow, String currentCode, String action);
	
}
