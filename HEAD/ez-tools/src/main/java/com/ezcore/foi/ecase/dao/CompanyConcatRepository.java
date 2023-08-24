package com.ezcore.foi.ecase.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import com.ezcore.foi.ecase.dao.entity.Company;
import com.ezcore.foi.ecase.dao.entity.CompanyConcat;

public interface CompanyConcatRepository extends JpaRepository<CompanyConcat, String>, JpaSpecificationExecutor<CompanyConcat> {

	List<CompanyConcat> findByCompany(Company company);
	
}
