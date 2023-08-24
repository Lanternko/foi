package com.ezcore.foi.ecase.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.ezcore.foi.ecase.dao.entity.CaseTreeSearch;
import com.ezcore.foi.ecase.dao.entity.compositeid.CaseTreeSearchId;

public interface CaseTreeSearchRepository extends JpaRepository<CaseTreeSearch, CaseTreeSearchId>, JpaSpecificationExecutor<CaseTreeSearch> {

	List<CaseTreeSearch> findAllByCaseTreeTidAndCaseMasterTid(String caseTreeTid, String caseMasterTid);
	
	List<CaseTreeSearch> findAllByCaseTreeTidOrderByLevelAsc(String caseTreeTid);

}
