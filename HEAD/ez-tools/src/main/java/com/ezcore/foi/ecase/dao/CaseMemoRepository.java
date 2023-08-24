package com.ezcore.foi.ecase.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.ezcore.foi.ecase.dao.entity.CaseMemo;

public interface CaseMemoRepository extends JpaRepository<CaseMemo, String>, JpaSpecificationExecutor<CaseMemo> {

	@Query(value = "select isnull(max(seq_no), 0) + 1 "
				 + "from case_memo where case_master_tid = convert(uniqueidentifier, :caseMasterTid)", nativeQuery = true)
	Integer createMemoSeqNo(@Param("caseMasterTid") String caseMasterTid);
//	
//	@Query("SELECT MAX(cm.seqNo) FROM CaseMemo cm WHERE cm.caseMasterTid = :caseMasterTid AND cm.memoTypeCid = :memoTypeCid")
//	Integer findLargestSeqNo(@Param("caseMasterTid") String caseMasterTid, @Param("memoTypeCid") Long memoTypeCid);
	
	CaseMemo findByCaseMasterTidAndMemoTypeCid(String caseMasterTid, Long memoTypeCid);
	
	@Query("SELECT cm FROM CaseMemo cm WHERE cm.caseMasterTid = :caseMasterTid AND cm.memoTypeCid = :memoTypeCid")
	List<CaseMemo> findAllByCaseMasterTidAndMemoTypeCid(@Param("caseMasterTid") String caseMasterTid, @Param("memoTypeCid") Long memoTypeCid);

}
