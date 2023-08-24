package com.ezcore.foi.ecase.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.ezcore.foi.ecase.dao.entity.CaseReceiveAppl;

public interface CaseReceiveApplRepository extends JpaRepository<CaseReceiveAppl, String>, JpaSpecificationExecutor<CaseReceiveAppl> {

	List<CaseReceiveAppl> findAllByCaseMasterTid(String caseMasterTid);
	
}
