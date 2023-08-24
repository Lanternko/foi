package com.ezcore.foi.ecase.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.ezcore.foi.ecase.dao.entity.CaseSuggestion;

public interface CaseSuggestionRepository extends JpaRepository<CaseSuggestion, String>, JpaSpecificationExecutor<CaseSuggestion> {

	CaseSuggestion findByCaseMasterTid(String caseMasterTid);
	
}
