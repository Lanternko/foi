package com.ezcore.foi.ecase.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.ezcore.foi.ecase.dao.entity.CaseExaminer;

public interface CaseExaminerRepository extends JpaRepository<CaseExaminer, String>, JpaSpecificationExecutor<CaseExaminer> {

	List<CaseExaminer> findAllByCaseMasterTid(String caseMasterTid);
	
}
