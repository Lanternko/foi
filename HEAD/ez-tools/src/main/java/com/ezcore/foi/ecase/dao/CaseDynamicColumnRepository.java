package com.ezcore.foi.ecase.dao;

import java.util.List;
import java.util.UUID;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ezcore.foi.ecase.dao.entity.CaseDynamicColumn;

@Repository
public interface CaseDynamicColumnRepository extends JpaRepository<CaseDynamicColumn, UUID> {


	List<CaseDynamicColumn> findByFromTableTidAndBandCodeCid(String tid, Long bandCodeCid);
			
	CaseDynamicColumn findByBandCodeCidAndColumnAdjustCid(Long bandCodeCid, Long columnAdjustCid);

	List<CaseDynamicColumn> findByFromTableTid(String caseMasterTid);
	
}
