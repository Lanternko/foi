package com.ezcore.foi.ecase.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.ezcore.foi.ecase.dao.entity.CaseSuggestionBook;

public interface CaseSuggestionBookRepository extends JpaRepository<CaseSuggestionBook, String>, JpaSpecificationExecutor<CaseSuggestionBook> {

	List<CaseSuggestionBook> findAllByCaseSuggestionTidOrderBySeqNo(String caseSuggestionTid);
	
}
