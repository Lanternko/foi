package com.ezcore.foi.ecase.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.ezcore.foi.ecase.dao.entity.CaseProductItem;

public interface CaseProductItemRepository extends JpaRepository<CaseProductItem, String>, JpaSpecificationExecutor<CaseProductItem> {

	Integer countByCaseMasterTid(String caseMasterTid);

	List<CaseProductItem> findByCaseMasterTid(String caseMasterTid);
	
	List<CaseProductItem> findAllByCaseMasterTidAndOwnerTypeCid(String caseMasterTid, Long ownerTypeCid);
	
}
