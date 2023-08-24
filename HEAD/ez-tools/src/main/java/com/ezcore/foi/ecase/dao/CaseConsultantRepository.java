package com.ezcore.foi.ecase.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;

import com.ezcore.foi.ecase.dao.entity.CaseConsultant;

public interface CaseConsultantRepository extends JpaRepository<CaseConsultant, String>, JpaSpecificationExecutor<CaseConsultant> {

	List<CaseConsultant> findAllByCaseMasterTid(String caseMasterTid);
	List<CaseConsultant> findByCaseMasterTidOrderBySeqNo(String caseMasterTid);

	@Query("SELECT COALESCE(MAX(seqNo), 0) FROM CaseConsultant")
	int findMaxSeqNo();
	
}
