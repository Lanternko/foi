package com.ezcore.foi.ecase.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.ezcore.foi.ecase.dao.entity.CaseUser;

public interface CaseUserRepository extends JpaRepository<CaseUser, String>, JpaSpecificationExecutor<String> {

	List<CaseUser> findByCaseMasterTid(String caseMasterTid);

	
	
}
