package com.ezcore.foi.ecase.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.ezcore.foi.ecase.dao.entity.CaseMeetPlan;

public interface CaseMeetPlanRepository extends JpaRepository<CaseMeetPlan, String>, JpaSpecificationExecutor<CaseMeetPlan> {

	CaseMeetPlan findByCaseMasterTid(String caseMasterTid);
	
	Integer countByCaseMasterTid(String caseMasterTid);
	
}
