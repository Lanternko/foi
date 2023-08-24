package com.ezcore.foi.ecase.dao;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.ezcore.foi.ecase.dao.entity.CaseFile;
import com.ezcore.foi.ecase.dao.entity.CaseFileLog;
import com.ezcore.foi.ecase.model.bo.casedatabo.Result;
import com.ezcore.foi.ecase.model.bo.casefilebo.CaseFileBoData;

public interface CaseFileRepository extends JpaRepository<CaseFile, String>, JpaSpecificationExecutor<CaseFile> {
    	
	List<CaseFile> findByCaseNoAndCaseFileTypeCid(String caseNo, Long caseFileTypeCid);
	
	@Query(value = "SELECT c.caseNo FROM nfoi_log.dbo.CaseFileLog c "
			+ "WHERE c.uploadTime BETWEEN :startOfDay AND :endOfDay and c.caseFileTypeCid = :fileTypeCid", nativeQuery = true) 
	List<String> findCaseNosByDateAndFileType(LocalDateTime startOfDay, LocalDateTime endOfDay, Long fileTypeCid);


	
	@Query(value = "SELECT c FROM nfoi_log.dbo.CaseFileLog c WHERE c.caseFileTypeCid = :fileTypeCid AND " + 
	           "c.uploadTime BETWEEN :beginDate AND :endDate AND " +
	           "(c.caseNo = :caseNo OR :caseNo IS NULL) AND " +
	           "(c.fileName = :fileName OR :fileName IS NULL)", nativeQuery = true)
	List<CaseFileLog> findLogData(@Param("fileTypeCid") Long fileTypeCid, 
	                              @Param("beginDate") LocalDateTime beginDate, 
	                              @Param("endDate") LocalDateTime endDate, 
	                              @Param("caseNo") String caseNo,
	                              @Param("fileName") String fileName);

	// TODO add the connection to the second DataBase!!!!!!!!!
	
	List<CaseFile> findAllByFromTableNameAndFromTableTid(String fromTableName, String fromTableTid);

	List<CaseFile> findByFromTableTid(String caseMasterTid);
	
}
