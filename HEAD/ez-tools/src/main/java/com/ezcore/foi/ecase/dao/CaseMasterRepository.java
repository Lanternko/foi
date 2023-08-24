package com.ezcore.foi.ecase.dao;

import java.sql.Timestamp;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.lang.Nullable;

import com.ezcore.foi.ecase.dao.entity.CaseMaster;
import com.ezcore.foi.ecase.model.bo.casedatabo.Result;

public interface CaseMasterRepository extends JpaRepository<CaseMaster, String>, JpaSpecificationExecutor<CaseMaster> {

	List<CaseMaster> findAllByCenterOwnerAccountAndIsClose(String centerOwnerAccount, Boolean isClose);
	
	CaseMaster findByCaseNo(String caseNo);
	
	Optional<CaseMaster> findById(String id);
	
	String findLatestCaseFlowTidById(String caseMasterTid);

	@Query(nativeQuery = true, name = "caseManager.findCaseRecords")
	List<Result> findCaseRecords(@Nullable @Param("caseTypeCids") List<Long> caseTypeCids, 
								 @Nullable @Param("inMethodCids") List<Long> inMethodCids, 
								 @Nullable @Param("caseClassCids") List<Long> caseClassCids, 
								 @Nullable @Param("industryCid") Long industryCid, 
								 @Nullable @Param("disputeKindCid") Long disputeKindCid, 
								 @Nullable @Param("caseNo") String caseNo, 
								 @Nullable @Param("centerOwnerAccount") String centerOwnerAccount, 
								 @Nullable @Param("caseDate") Timestamp caseDate, 
								 @Nullable @Param("username") String username, 
								 @Nullable @Param("idnoCrypt") String idnoCrypt, 
								 @Nullable @Param("continueStatusCid") Long continueStatusCid, 
								 @Nullable @Param("isClose") Boolean isClose, 
								 @Nullable @Param("appealCaseNo") String appealCaseNo, 
								 @Nullable @Param("latestCaseFlowTid") String latestCaseFlowTid, 
								 @Nullable @Param("receiveName") String receiveName, 
								 @Nullable @Param("docYear") String docYear, 
								 @Nullable @Param("docWord") String docWord, 
								 @Nullable @Param("docNo") String docNo, 
								 @Nullable @Param("reparationCid") Long reparationCid, 
								 @Nullable @Param("phone1NoCrypt") String phone1NoCrypt, 
								 @Nullable @Param("phone2NoCrypt") String phone2NoCrypt);

	@Query(nativeQuery = true, name = "caseManager.findEarlist10034FlowTime")
	Timestamp findEarlist10034FlowTime(@Param("caseMasterTid") String caseMasterTid);

}
