package com.ezcore.foi.ecase.service;

import java.util.List;

import com.ezcore.foi.ecase.dao.dto.AgentCompanyIndustryTidDto;
import com.ezcore.foi.ecase.dao.dto.CompanyContractDto;
import com.ezcore.foi.ecase.dao.dto.CompanyIndustryDto;
import com.ezcore.foi.ecase.dao.dto.CompanyIndustryTidDto;
import com.ezcore.foi.ecase.model.bo.CompanyBo;
import com.ezcore.foi.ecase.model.bo.CompanyIndustryContractBo;
import com.ezcore.foi.ecase.model.response.company.Company01Response;

public interface CompanyService {
	
    /**
     * 取得公司名稱列表
     */
    List<Company01Response> getCompanyNameList(CompanyIndustryDto req);

    /**
     * 取得公司列表清單
     */
    List<CompanyBo> getCompanyList(CompanyIndustryDto req);

    /**
     * 取得單筆公司資料
     */
    CompanyBo getCompanyData(String companyTid);

    /**
     * 新增/異動單筆公司資料
     */
    CompanyBo updateCompanyData(CompanyBo req);

    /**
     * 啟用公司產業別管理帳號
     */
    void enableAdmin(CompanyIndustryTidDto req);

    /**
     * 指定代理之公司產業別
     */
    void assignIndustryAgent(AgentCompanyIndustryTidDto req);

    /**
     * 取得公司產業別清單列表
     */
    List<CompanyBo> getIndustryList(String companyTid);

    /**
     * 取得公司產業別之契約數清單
     */
    List<CompanyIndustryContractBo> getIndustryContractList(String companyIndustryTid);

    /**
     * 新增/異動單筆公司契約數資料
     */
    void updateIndustryContract(CompanyIndustryContractBo req);

    /**
     * 公司契約數匯入
     */
    void importIndustryContract(CompanyContractDto req);


}

