package com.ezcore.foi.ecase.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.ezcore.foi.ecase.dao.entity.CaseTree;

public interface CaseTreeRepository extends JpaRepository<CaseTree, String>, JpaSpecificationExecutor<CaseTree> {

	List<CaseTree> findAllByCaseMasterTid(String caseMasterTid);

	CaseTree findByCaseMasterTidAndNodeCid(String caseMasterTid, Long selectedCid);

	CaseTree findByNodeCidAndCaseMasterTid(Long cid, String caseMasterTid);
	
}
