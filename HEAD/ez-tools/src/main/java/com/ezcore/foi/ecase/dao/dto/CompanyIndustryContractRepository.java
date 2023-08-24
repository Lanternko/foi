package com.ezcore.foi.ecase.dao.dto;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.ezcore.foi.ecase.dao.entity.CompanyIndustry;
import com.ezcore.foi.ecase.dao.entity.CompanyIndustryContract;

public interface CompanyIndustryContractRepository extends JpaRepository<CompanyIndustryContract, String>, JpaSpecificationExecutor<CompanyIndustryContract> {

	List<CompanyIndustryContract> findByCompanyIndustryOrderByYearAscMonthAsc(CompanyIndustry companyIndustry);

	List<CompanyIndustryContract> findByCompanyIndustryAndYearAndMonth(CompanyIndustry companyIndustry, Integer year, Integer month);
	
}
