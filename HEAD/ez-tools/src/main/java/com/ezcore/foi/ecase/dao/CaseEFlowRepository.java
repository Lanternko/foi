package com.ezcore.foi.ecase.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.ezcore.foi.ecase.dao.entity.CaseEFlow;

public interface CaseEFlowRepository extends JpaRepository<CaseEFlow, String>, JpaSpecificationExecutor<String> {

	CaseEFlow findByPcode(String pCode);
	
	/**
	 * 查詢推進電話件流程時，當天日期(yyyyMMdd)下相同pCode時最新的流水號<br>
	 * 會回傳下一筆eflow流程的processNo<br>
	 * substring為9到11的原因 : processNo預期格式為yyyyMMddrrr (rrr為三位數流水號)
	 */
	@Query(value = "select cast(isnull(cast(substring(max(process_no), 9, 11) as int), 0) + 1 as varchar(3)) "
				 + "from case_eflow where pcode = :pCode and process_no like :processNo% ", nativeQuery = true)
	String findByPCodeAndProcessNoLikeOrderByProcessNoDesc(@Param("pCode") String pCode, @Param("processNo") String processNo);
	
}
