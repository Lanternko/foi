package com.ezcore.foi.ecase.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.ezcore.foi.ecase.dao.entity.Codedetail;

@Repository
public interface CaseManagerRepository extends JpaRepository<Codedetail, Long> {

	@Query(value = "SELECT * FROM Case_Master a "
			+ "INNER join CASE_FLOW b ON a.id = b.case_master_tid "
			+ "INNER JOIN codedetail  flowCode ON b.flow_code_cid = flowCode.Cid "
			+ "WHERE a.case_no = :caseNo "
			+ "AND flowCode.code = '99999'", nativeQuery = true)
	Codedetail isCaseClose(String caseNo);

	  // codedetailmap TODO kind -> list redis el-admin 
	//in a time range, api result will not change if the condition is the same.
	// create a individual method, 
	/* 固定的method getCodedetail(String key)
	 *  if redis.get[key]！==null return{redis.get}
	 *  datas =  codedetailRespository.get(kind=key)
	 *  redis.put[key] = datas
	 * 
	 * 
	 * --------------------------------
	 *  band :10col  
	 *  前端:10col
	 * 
	 *  for 前端.1.10
	 *    for band 1.10
	 *       cehck eq
	 *       
	 *  var f = 前端.10
	 *  var b = band 10
	 *   for 前端.1.10
	 *      for b 1..n
	 *        check eq ; remove b 
	 * */

}
