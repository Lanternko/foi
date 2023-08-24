package com.ezcore.foi.ecase.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

import com.ezcore.foi.ecase.dao.entity.CaseTelCheck;
import com.ezcore.foi.ecase.dao.entity.custom.CaseTelEflow2000BoDataProjection;

import java.util.List;



public interface CaseTelCheckRepository extends JpaRepository<CaseTelCheck, String>, JpaSpecificationExecutor<CaseTelCheck> {
	
	/*
	 * TEL 01
	 * find case tel by case masterTID
	 */
	@Query(value = "select a.id as caseTelCheckTid, "
				 + "b.code as code, "
				 + "b.property1 as x, "
				 + "b.property2 as y, "
				 + "b.property3 as style, "
				 + "b.name as text, "
				 + "a.value as value "
				 + "from case_tel_check a "
				 + "inner join codedetail b on a.eflow_2000_check_cid = b.cid and b.kind = 'eflow.2000.check' "
				 + "where a.case_master_tid = convert(uniqueidentifier, :caseMasterTid)  "
				 + "order by 2", nativeQuery = true)
	List<CaseTelEflow2000BoDataProjection> joinCaseTelCheckAndCodeDetailByCaseMasterTid(@Param("caseMasterTid") String caseMasterTid);
	
	/*
	 * TEL 02
	 * updates the value of the CaseTelCheck where caseTelCheckTid matches the provided caseTelCheckTid
	 */
	@Modifying
	@Transactional
	@Query("update CaseTelCheck c set c.value = :value where c.id = :id")
	int updateEflow2000Check(@Param("value") String value, @Param("id") String id); //TODO determine whether to use ID or CaseTelCheckTid
//	@Modifying
//	@Transactional
//	@Query("update CaseTelCheck c set c.value = :value where c.caseTelCheckTid = :caseTelCheckTid")
//	int updateEflow2000Check(@Param("value") String value, @Param("caseTelCheckTid") String caseTelCheckTid);

	// I assume that the caseTelCheckTid is id in caseTelCheck table
	// returns how many rows(int) is updated
}
