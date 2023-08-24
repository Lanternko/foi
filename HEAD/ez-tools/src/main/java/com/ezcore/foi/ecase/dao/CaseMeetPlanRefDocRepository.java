package com.ezcore.foi.ecase.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.ezcore.foi.ecase.dao.entity.CaseMeetPlanRefDoc;

public interface CaseMeetPlanRefDocRepository extends JpaRepository<CaseMeetPlanRefDoc, String>, JpaSpecificationExecutor<CaseMeetPlanRefDoc> {

	List<CaseMeetPlanRefDoc> findAllByCaseMeetPlanTid(String caseMeetPlanTid);
	
}
