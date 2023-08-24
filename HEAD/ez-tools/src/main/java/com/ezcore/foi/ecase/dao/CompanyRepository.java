package com.ezcore.foi.ecase.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.lang.Nullable;

import com.ezcore.foi.ecase.dao.dto.CompanyIndustryListDto;
import com.ezcore.foi.ecase.dao.dto.CompanyIndustryTidNameDto;
import com.ezcore.foi.ecase.dao.entity.Company;

public interface CompanyRepository extends JpaRepository<Company, String>, JpaSpecificationExecutor<Company> {

	/**
	 * 使用產業別查找爭議對象(非業者)
	 */
//	@Query(value = "select new com.ezcore.foi.ecase.dao.dto.CompanyIndustryListDto("
//				 + "a.id as companyTid,"
//				 + "concat((case when getdate() between a.enableDate and a.codeEndDate then '(即將停用)' else '' end ), a.name ) as companyName "
//				 + ") from Company a "
//				 + " where :option1 = 0 or exists (select 1 from CompanyIndustrySearch s1 "
//				 + "                where a.id = s1.companyTid "
//				 + "				 and s1.industryCid = :industryCid) "
//				 + "and (:option2 = 0 or (getdate() < a.codeEndDate or a.codeEndDate is null))")
//	List<CompanyIndustryListDto> findCompanyNameByIndustry(@Param("option1") Integer option1, @Param("option2") Integer option2, @Param("industryCid") @Nullable Long industryCid);
	@Query(value = "select new com.ezcore.foi.ecase.dao.dto.CompanyIndustryListDto("
			+ "a.id as companyTid, "
			+ "concat((case when getdate() between a.enableDate and a.codeEndDate then '(即將停用)' else '' end ), a.name ) as companyName "
			+ ") from Company a "
			+ " where (:companyNameLike is null or a.name like %:companyNameLike%) "
			+ " and :industryCid is null or exists (select 1 from CompanyIndustrySearch s1 "
			+ "                where a.id = s1.companyTid "
			+ "                and s1.industryCid = :industryCid) "
			+ "and (:option2 = 0 or (getdate() < a.codeEndDate or a.codeEndDate is null))")
	List<CompanyIndustryListDto> findCompanyNameByIndustry(
			@Param("companyNameLike") @Nullable String companyNameLike, 
			@Param("industryCid") @Nullable Long industryCid, 
			@Param("option2") Integer option2);
	
	/**
	 * 可見所屬之爭議對象及所有產業別(金融業者)
	 */
	@Query(value = "select new com.ezcore.foi.ecase.dao.dto.CompanyIndustryTidNameDto("
				 + "c.id as companyTid, "
				 + "c.name as companyName, "
				 + "ci.id as companyIndustryTid, "
				 + "industry.name as industryName "
				 + ") from User as usr "
				 + "inner join CompanyIndustrySysUser as sysusr on usr.id = sysusr.user.id "
				 + "inner join CompanyIndustry as ci on sysusr.companyIndustry.id = ci.id "
				 + "inner join Company as c on c.id = ci.company.id "
				 + "left outer join Codedetail as industry on industry.cid = ci.industryCode.cid "
				 + "where usr.account = :account ")
	List<CompanyIndustryTidNameDto> findCompanyIndustries(@Param("account") String account);
	
	/**
	 * 可見代理之爭議對象及被授權之產業別(金融業者)
	 */
	@Query(value = "select new com.ezcore.foi.ecase.dao.dto.CompanyIndustryTidNameDto("
				 + "agentCompany.id as companyTid, "
				 + "agentCompany.name as companyName, "
				 + "agent.id as companyIndustryTid, "
				 + "industry.name as industryName "
				 + ") from User as usr "
				 + "inner join CompanyIndustrySysUser as sysusr on usr.id = sysusr.user.id "
				 + "inner join CompanyIndustry as master on sysusr.companyIndustry.id = master.id "
				 + "inner join CompanyIndustry as agent on master.id = agent.agentCompanyIndustryTid "
				 + "inner join Company as agentCompany on agentCompany.id = agent.company.id "
				 + "left outer join Codedetail as industry on industry.cid = agent.industryCode.cid "
				 + "where usr.account = :account ")
	List<CompanyIndustryTidNameDto> findAgentCompanyIndustries(@Param("account") String account);
	
	
}
