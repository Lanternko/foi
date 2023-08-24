package com.ezcore.foi.ecase.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.ezcore.foi.ecase.dao.entity.CaseMediateContact;

public interface CaseMediateContactRepository extends JpaRepository<CaseMediateContact, String>, JpaSpecificationExecutor<CaseMediateContact> {

	List<CaseMediateContact> findAllByCaseMediateTid(String caseMediateTid);
	
}
