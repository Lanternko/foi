package com.ezcore.foi.ecase.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.ezcore.foi.ecase.dao.entity.Company;
import com.ezcore.foi.ecase.dao.entity.CompanyIndustry;

public interface CompanyIndustryRepository extends JpaRepository<CompanyIndustry, String>, JpaSpecificationExecutor<CompanyIndustry> {

	List<CompanyIndustry> findByCompany(Company company);

	@Query(value = "select isnull(max(a.seqNo), 0) from CompanyIndustry as a where a.company.id = :companyTid")
	Integer getCurrentMaxSeqNo(@Param("companyTid") String companyTid);
	
}
