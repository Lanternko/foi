package com.ezcore.foi.ecase.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.ezcore.foi.ecase.dao.entity.CompanyIndustry;
import com.ezcore.foi.ecase.dao.entity.custom.CompanyIndustryTreeProjection;
import com.ezcore.foi.ecase.dao.entity.custom.IndustryTreeProjection;

public interface CustomRepository extends JpaRepository<CompanyIndustry, String>, JpaSpecificationExecutor<CompanyIndustry> {

	@Query(value = "select * from fnCompanyIndustryTree(convert(uniqueidentifier, :companyIndustryTid))", nativeQuery = true)
	List<CompanyIndustryTreeProjection> execFnCompanyIndustryTree(@Param("companyIndustryTid") String companyIndustryTid);
	
	@Query(value = "SELECT * FROM fnIndustryTree() a "
			+ " where (:option1 = 0 or exists ("
			+ "Select COMPANY.id as company_tid,COMPANY.name , COMPANY_INDUSTRY.id as companyIndustry , industry.name , COMPANY_INDUSTRY#.INDUSTRY_cid "
			+ "  from sys_user "
			+ " inner join COMPANY_INDUSTRY_SYS_USER on sys_user.user_id = COMPANY_INDUSTRY_SYS_USER.sys_user_tid "
			+ " inner join COMPANY_INDUSTRY as COMPANY_INDUSTRY on COMPANY_INDUSTRY_SYS_USER.COMPANY_INDUSTRY_TID = COMPANY_INDUSTRY.ID "
			+ " inner join COMPANY_INDUSTRY#   on COMPANY_INDUSTRY#.COMPANY_INDUSTRY_TID = COMPANY_INDUSTRY.ID "
			+ " inner join COMPANY on COMPANY.id = COMPANY_INDUSTRY.company_tid "
			+ " left outer join codedetail as industry on industry.cid = COMPANY_INDUSTRY.industry_cid "
			+ " WHERE sys_user.account = :account "
			+ "   and a.cid = COMPANY_INDUSTRY#.INDUSTRY_cid "
			+ " union "
			+ "Select agentCompany.id as company_tid, agentCompany.name , agentCompanyIndustry.id as companyIndustry_tid , industry.name, COMPANY_INDUSTRY#.INDUSTRY_cid "
			+ "  from sys_user "
			+ " inner join COMPANY_INDUSTRY_SYS_USER on sys_user.user_id = COMPANY_INDUSTRY_SYS_USER.sys_user_tid "
			+ " inner join COMPANY_INDUSTRY as masterCompanyIndustry on COMPANY_INDUSTRY_SYS_USER.COMPANY_INDUSTRY_TID = masterCompanyIndustry.ID "
			+ " inner join COMPANY_INDUSTRY as agentCompanyIndustry on masterCompanyIndustry.id = agentCompanyIndustry.agent_company_industry_tid "
			+ " inner join COMPANY_INDUSTRY#  on COMPANY_INDUSTRY#.COMPANY_INDUSTRY_tid = agentCompanyIndustry.id "
			+ " inner join COMPANY as agentCompany on agentCompany.id = agentCompanyIndustry.company_tid "
			+ " left outer join codedetail as industry on industry.cid = agentCompanyIndustry.industry_cid "
			+ " WHERE sys_user.account = :account "
			+ "   and a.cid = COMPANY_INDUSTRY#.INDUSTRY_cid ))", nativeQuery = true)
	List<IndustryTreeProjection> execFnIndustryTree(@Param("option1") Integer option1, @Param("account") String account);
	
	/**
	 * 刪除爭議對象產業別搜尋樹
	 */
	@Query(value = "delete company_industry# where company_industry_tid = convert(uniqueidentifier, :companyIndustryTid)", nativeQuery = true)
	void deleteFromCompanyIndustryTree(@Param("companyIndustryTid") String companyIndustryTid);
	
	/**
	 * 建立爭議對象產業別搜尋樹
	 */
	@Query(value = "insert into company_industry# "
				 + "	select cid, company_tid, company_industry_tid, level# "
				 + " 	from fnCompanyIndustryTree(convert(uniqueidentifier, :companyIndustryTid))", nativeQuery = true)
	void insertIntoCompanyIndustryTree(@Param("companyIndustryTid") String companyIndustryTid);
	
}
