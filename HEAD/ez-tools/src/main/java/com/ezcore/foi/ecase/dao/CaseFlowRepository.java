package com.ezcore.foi.ecase.dao;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.lang.Nullable;

import com.ezcore.foi.ecase.dao.entity.CaseFlow;

public interface CaseFlowRepository extends JpaRepository<CaseFlow, String>, JpaSpecificationExecutor<CaseFlow> {
	
	Optional<CaseFlow> findById(String caseMasterTid);

	Optional<CaseFlow> findFirstByCaseMasterTidOrderByFlowTimeDesc(String caseMasterTid);
	
	@Query(value = "select * from case_flow "
				 + "where case_master_tid = convert(uniqueidentifier, :caseMasterTid) "
				 + "and manager_flag = :managerFlag "
				 + "and scope_flag in :scopeFlags ", nativeQuery = true)
	List<CaseFlow> findByManagerFlagAndScopeFlagIn(@Param("caseMasterTid") String caseMasterTid, @Param("managerFlag") @Nullable String managerFlag, 
												   @Param("scopeFlags") List<String> scopeFlags);
	
	@Query(value = "select b.* from case_master a "
				 + "inner join case_flow b on a.id = b.case_master_tid "
				 + "inner join codedetail c on b.flow_code_cid = c.cid "
				 + "                        and c.kind = 'flow_code' "
				 + "where a.case_no = :caseNo "
				 + "and c.code in :flowCodes ", nativeQuery = true)
	List<CaseFlow> findByCaseNoAndFlowCode(@Param("caseNo") String caseNo, @Param("flowCodes") List<String> flowCodes);

	@Query("SELECT CASE WHEN COUNT(c) > 0 THEN true ELSE false END "
			+ "FROM CaseFlow c "
			+ "WHERE c.flowCodeCid = :flowCodeCid AND c.caseMasterTid = :caseMasterTid")
    boolean existsByFlowCodeCidAndCaseMasterTid(@Param("flowCodeCid") Long flowCodeCid, @Param("caseMasterTid") String caseMasterTid);

}
