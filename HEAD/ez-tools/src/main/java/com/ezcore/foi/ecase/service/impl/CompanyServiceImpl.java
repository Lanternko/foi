package com.ezcore.foi.ecase.service.impl;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Deque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.Map.Entry;

import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.poi.ss.util.CellReference;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.foi.common.FoiConstants;
import com.ezcore.foi.ecase.dao.CodedetailRepository;
import com.ezcore.foi.ecase.dao.CompanyIndustryRepository;
import com.ezcore.foi.ecase.dao.CompanyRepository;
import com.ezcore.foi.ecase.dao.CustomRepository;
import com.ezcore.foi.ecase.dao.dto.AgentCompanyIndustryTidDto;
import com.ezcore.foi.ecase.dao.dto.CompanyContractDto;
import com.ezcore.foi.ecase.dao.dto.CompanyIndustryContractRepository;
import com.ezcore.foi.ecase.dao.dto.CompanyIndustryDto;
import com.ezcore.foi.ecase.dao.dto.CompanyIndustryListDto;
import com.ezcore.foi.ecase.dao.dto.CompanyIndustryTidDto;
import com.ezcore.foi.ecase.dao.dto.CompanyIndustryTidNameDto;
import com.ezcore.foi.ecase.dao.entity.Codedetail;
import com.ezcore.foi.ecase.dao.entity.Company;
import com.ezcore.foi.ecase.dao.entity.CompanyConcat;
import com.ezcore.foi.ecase.dao.entity.CompanyIndustry;
import com.ezcore.foi.ecase.dao.entity.CompanyIndustryContract;
import com.ezcore.foi.ecase.dao.entity.CompanyIndustrySysUser;
import com.ezcore.foi.ecase.model.bo.CompanyBo;
import com.ezcore.foi.ecase.model.bo.CompanyConcatBo;
import com.ezcore.foi.ecase.model.bo.CompanyIndustryBo;
import com.ezcore.foi.ecase.model.bo.CompanyIndustryContractBo;
import com.ezcore.foi.ecase.model.bo.CompanyIndustryContractFile;
import com.ezcore.foi.ecase.model.bo.CompanyIndustryContractValueBo;
import com.ezcore.foi.ecase.model.bo.CompanyIndustryTreeBo;
import com.ezcore.foi.ecase.model.response.company.Company01Response;
import com.ezcore.foi.ecase.service.CompanyService;
import com.ezcore.foi.ecase.service.ConfigService;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.common.CodeDetailMap;
import com.ezcore.tools.common.Constants;

import lombok.RequiredArgsConstructor;
import me.zhengjie.exception.BadRequestException;
import me.zhengjie.modules.system.domain.Role;
import me.zhengjie.modules.system.domain.User;
import me.zhengjie.modules.system.repository.RoleRepository;
import me.zhengjie.modules.system.repository.UserRepository;
import me.zhengjie.utils.DateUtil;
import me.zhengjie.utils.FileUtil;
import me.zhengjie.utils.SecurityUtils;
import me.zhengjie.utils.StringUtils;

@Service
@RequiredArgsConstructor
public class CompanyServiceImpl implements CompanyService {

	@Autowired
	private ConfigService configService;
	@Autowired
	private CodedetailRepository codedetailRepository;
	@Autowired
	private CodeDetailMap codeDetailMap;
	@Autowired
	private CompanyRepository companyRepository;
	@Autowired
	private CompanyIndustryRepository companyIndustryRepository;
	@Autowired
	private CompanyIndustryContractRepository companyIndustryContractRepository;
	@Autowired
	private CustomRepository customRepository;
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private RoleRepository roleRepository;
	
	
	@Override
	public List<Company01Response> getCompanyNameList(CompanyIndustryDto req) {	
		List<Company01Response> rtn = new ArrayList<>();
		
//		登入者是否為金融業者
		if (configService.isCompanyUser() == 1) {
			List<CompanyIndustryTidNameDto> selectables = new ArrayList<>();
			String currentUser = SecurityUtils.getCurrentUsername();
			
//			查金融業者的可選公司
			selectables.addAll(companyRepository.findCompanyIndustries(currentUser));
//			查金融業者代理對象的可選公司
			selectables.addAll(companyRepository.findAgentCompanyIndustries(currentUser));
			
			for (CompanyIndustryTidNameDto c : selectables) {
				Company01Response res = new Company01Response();
				res.setCompanyTid(c.getCompanyTid());
				res.setCompanyName(c.getCompanyName());
				rtn.add(res);
			}	
		} else {
//			查所有可選公司
			List<CompanyIndustryListDto> allCompanies = companyRepository.findCompanyNameByIndustry(req.getCompanyNameLike(), req.getIndustryBottomCid(), 0);
//			if (req == null) {
////				完全沒有查詢條件時取全部
//				allCompanies = companyRepository.findCompanyNameByIndustry(0, null, 0, null, 0);
//			} else if (req.getCompanyNameLike() == null) {
////				沒有公司名稱、有cid
//				allCompanies = companyRepository.findCompanyNameByIndustry(0, null, 1, req.getIndustryBottomCid(), 0);
//			} else if (req.getIndustryBottomCid() == null) {
////				沒有cid、有公司名稱
//				allCompanies = companyRepository.findCompanyNameByIndustry(1, req.getCompanyNameLike(), 0, null, 0);
//			} else {
////				完整條件查詢
//				allCompanies = companyRepository.findCompanyNameByIndustry(1, req.getCompanyNameLike(), 1, req.getIndustryBottomCid(), 0);
//			}
						
			for (CompanyIndustryListDto c : allCompanies) {
				Company01Response res = new Company01Response();
				res.setCompanyTid(c.getCompanyTid());
				res.setCompanyName(c.getCompanyName());
				rtn.add(res);
			}
		}
		return rtn;
	}

	@Override
	public List<CompanyBo> getCompanyList(CompanyIndustryDto req) {
		List<CompanyBo> rtn = new ArrayList<>();
		List<Company> selectableCompanies = new ArrayList<>();
		
//		登入者是否為金融業者
		if (configService.isCompanyUser() == 1) {
			String currentUser = SecurityUtils.getCurrentUsername();
			
			List<CompanyIndustryTidNameDto> selectables = new ArrayList<>();
//			查金融業者的可選公司
			selectables.addAll(companyRepository.findCompanyIndustries(currentUser));
//			查金融業者代理對象的可選公司
			selectables.addAll(companyRepository.findAgentCompanyIndustries(currentUser));
			
			List<String> bankSelectableCompanyTids = new ArrayList<>();
			selectables.forEach(s -> bankSelectableCompanyTids.add(s.getCompanyTid()));
			
//			可選公司list
			selectableCompanies = companyRepository.findAllById(bankSelectableCompanyTids);
		} else {
//			查所有可選公司
			List<String> companiesTids = new ArrayList<>();
//			companyRepository.findCompanyNameByIndustry(0, null, 0, null, 0).forEach(d -> companiesTids.add(d.getCompanyTid()));
			companyRepository.findCompanyNameByIndustry(null, null, 0).forEach(d -> companiesTids.add(d.getCompanyTid()));
			
//			可選公司list
			selectableCompanies = companyRepository.findAllById(companiesTids);
		}
		
//		組織list of CompanyBo
		for (Company company : selectableCompanies) {
			rtn.add(createCompanyBoByCompany(company));
		}
		return rtn;
	}

	@Override
	public CompanyBo getCompanyData(String companyTid) {
		Company company = companyRepository.findById(companyTid).orElse(null);
		if (company == null) {
	        throw new BadRequestException(String.format("公司(id=%s)不存在", companyTid));
	    }
		return createCompanyBoByCompany(company);
	}

	@Override
	public CompanyBo updateCompanyData(CompanyBo req) {
		Company company = null;
		if (!StringUtils.isEmptyOrNull(req.getCompanyTid())) {
			company = companyRepository.findById(req.getCompanyTid()).orElse(null);
			if (company == null) {
				throw new BadRequestException(String.format("公司(id=%s)不存在", req.getCompanyTid()));
			}
		}
		List<String> industryTidForDelete = new ArrayList<>();
		List<String> industryTidForInsert = new ArrayList<>();
		
		if (company != null) {
//			修改公司資料
			company.setCompanyAddr(req.getCompanyAddress());
			company.setMailAddr(req.getMailAddress());
			company.setCompanyStateCode(codedetailRepository.findById(req.getCompanyStateCid()).orElse(null));
//			company.setCompanyStateCode(codeDetailMap.get(req.getCompanyStateCid()));
			company.setEnableDate(req.getEnableDate());
			company.setCloseDate(req.getCloseDate());
			company.setCloseRemark(req.getCloseRemark());
			company.setCombineDate(req.getCombineDate());
			company.setCodeEndDate(req.getCodeEndDate());

//			確認聯絡人是否有 新增/更新/刪除
			List<CompanyConcat> companyConcats = company.getCompanyConcats();
			for (int i = 0 ; i < companyConcats.size() ; i ++) {
				CompanyConcat concat = companyConcats.get(i);	
				CompanyConcatBo ccbo = req.getCompanyConcats().stream().filter(c -> concat.getId().equals(c.getCompanyConcatsTid())).findFirst().orElse(null);
				if (ccbo == null) {
//					刪除現存聯絡人
					companyConcats.remove(i);
				} else {
//					更新現存聯絡人
					concat.setSeqNo(ccbo.getSeqNo());
					concat.setName(ccbo.getName());
					concat.setTelNo(ccbo.getTelNo());
					concat.setTelExt(ccbo.getTelExt());
					concat.setEmail(ccbo.getEmail());
					concat.setFaxNo(ccbo.getFaxNo());
					concat.setFaxExt(ccbo.getFaxExt());
					
					req.getCompanyConcats().remove(ccbo);
					i --;
				}
			}
			
			for (CompanyConcatBo ccbo : req.getCompanyConcats()) {
//				新增聯絡人
				CompanyConcat newcc = new CompanyConcat();
				newcc.setId(UUID.randomUUID().toString());
				newcc.setCompany(company);
				newcc.setSeqNo(ccbo.getSeqNo());
				newcc.setName(ccbo.getName());
				newcc.setTelNo(ccbo.getTelNo());
				newcc.setTelExt(ccbo.getTelExt());
				newcc.setFaxNo(ccbo.getFaxNo());
				newcc.setFaxExt(ccbo.getFaxExt());
				newcc.setEmail(ccbo.getEmail());
			
				companyConcats.add(newcc);
			}

//			確認現存產業別是否有 新增/更新/刪除
			List<CompanyIndustry> companyIndustrys = company.getCompanyOwnedIndustrys();
			List<CompanyIndustry> checkDelete = new ArrayList<>(companyIndustrys);
			for (CompanyIndustryBo cibo : req.getCompanyIndustrys()) {
				List<CompanyIndustryTreeBo> citbos = cibo.getIndustryCids();
				for (int i = 0 ; i < citbos.size() ; i ++) {
					CompanyIndustryTreeBo citbo = citbos.get(i);
					CompanyIndustry ci = companyIndustrys.stream().filter(c -> c.getId().equals(citbo.getCompanyIndustryTid())).findFirst().orElse(null);
					if (ci == null) {
//						新增公司產業別
						CompanyIndustry newci = new CompanyIndustry();
						newci.setId(UUID.randomUUID().toString());
						newci.setCompany(company);
						newci.setSeqNo(String.valueOf(companyIndustryRepository.getCurrentMaxSeqNo(company.getId()) + 1));

						Codedetail currentCode = codedetailRepository.findById(citbo.getIndustryCid()).orElse(null);
//						CodeDetailDto currentCode = codeDetailMap.get(citbo.getIndustryCid());
						newci.setIndustryCode(currentCode);
						
//						使用最末階資訊新增管理帳號
						if (isLeafOfIndustryTree(currentCode) 
								&& company.getCompanyStateCode().getCode().equals(FoiConstants.ENABLED)) {
							CompanyIndustrySysUser cisu = new CompanyIndustrySysUser();
							cisu.setId(UUID.randomUUID().toString());
							cisu.setCompanyIndustry(newci);
							cisu.setUser(createNewUser(company, citbo.getIndustryCid()));
							cisu.setCreateBy(Constants.SYSTEM);
							
//							新增管理帳號與公司產業別關聯
							List<CompanyIndustrySysUser> companyIndustryMappingSysUser = new ArrayList<>();
							companyIndustryMappingSysUser.add(cisu);
							newci.setCompanyIndustryMappingSysUser(companyIndustryMappingSysUser);
						}
						
//						新增搜尋樹對象
						industryTidForInsert.add(newci.getId());
						
						companyIndustrys.add(newci);
						citbos.remove(i);
						i --;
					} else {
//						更新當筆公司產業別
						if (ci.getIndustryCode().getCid() != citbo.getIndustryCid()) {
							Codedetail currentCode = codedetailRepository.findById(citbo.getIndustryCid()).orElse(null);
//							CodeDetailDto currentCode = codeDetailMap.get(citbo.getIndustryCid());
							ci.setIndustryCode(currentCode);
							
//							使用最末階資訊新增管理帳號
							if (isLeafOfIndustryTree(currentCode) 
									&& company.getCompanyStateCode().getCode().equals(FoiConstants.ENABLED)) {
								CompanyIndustrySysUser cisu = new CompanyIndustrySysUser();
								cisu.setId(UUID.randomUUID().toString());
								
								CompanyIndustry cicurrent = companyIndustryRepository.findById(citbo.getCompanyIndustryTid()).orElse(null);
								cisu.setCompanyIndustry(cicurrent);
								cisu.setUser(createNewUser(company, citbo.getIndustryCid()));
								cisu.setCreateBy(Constants.SYSTEM);
								
//								新增管理帳號與公司產業別關聯
								List<CompanyIndustrySysUser> companyIndustryMappingSysUser = cicurrent.getCompanyIndustryMappingSysUser();
								companyIndustryMappingSysUser.add(cisu);
								
								ci.setCompanyIndustryMappingSysUser(companyIndustryMappingSysUser);
							}
							
//							刪除搜尋樹對象
							industryTidForDelete.add(ci.getId());
							
//							新增搜尋樹對象
							industryTidForInsert.add(ci.getId());
						}
						checkDelete.remove(ci);
					}
				}
			}
//			刪除cpmpanyBo裡不存在的公司產業別，但不刪除對應帳號
			companyIndustrys.removeAll(checkDelete);
			
			company.setCompanyOwnedIndustrys(companyIndustrys);
		} else {
//			組織公司資料
			company = new Company();
			company.setId(UUID.randomUUID().toString());
			company.setName(req.getCompanyName());
			company.setCompanyAddr(req.getCompanyAddress());
			company.setMailAddr(req.getMailAddress());
			company.setCompanyStateCode(codedetailRepository.findById(req.getCompanyStateCid()).orElse(null));
//			company.setCompanyStateCode(codeDetailMap.get(req.getCompanyStateCid()));
			company.setEnableDate(req.getEnableDate());
			company.setCloseDate(req.getCloseDate());
			company.setCloseRemark(req.getCloseRemark());
			company.setCombineDate(req.getCombineDate());
			company.setCodeEndDate(req.getCodeEndDate());
			
//			組織聯絡人
			List<CompanyConcat> companyConcats = new ArrayList<>();
			for (CompanyConcatBo ccbo : req.getCompanyConcats()) {
				CompanyConcat cc = new CompanyConcat();
				cc.setId(UUID.randomUUID().toString());
				cc.setCompany(company);
				cc.setSeqNo(ccbo.getSeqNo());
				cc.setName(ccbo.getName());
				cc.setTelNo(ccbo.getTelNo());
				cc.setTelExt(ccbo.getTelExt());
				cc.setFaxNo(ccbo.getFaxNo());
				cc.setFaxExt(ccbo.getFaxExt());
				cc.setEmail(ccbo.getEmail());
				
				companyConcats.add(cc);
			}
			company.setCompanyConcats(companyConcats);
			
//			組織公司產業別
			List<CompanyIndustry> companyIndustrys = new ArrayList<>();
			StringBuilder ccode = new StringBuilder();
			for (CompanyIndustryBo cibo : req.getCompanyIndustrys()) {
				int i = 1;
				for (CompanyIndustryTreeBo citbo : cibo.getIndustryCids()) {
					CompanyIndustry ci = new CompanyIndustry();
					ci.setId(UUID.randomUUID().toString());
					ci.setCompany(company);
					ci.setSeqNo(String.valueOf(i));
					i ++;
					
					Codedetail industryCode = codedetailRepository.findById(citbo.getIndustryCid()).orElse(null);
//					CodeDetailDto industryCode = codeDetailMap.get(citbo.getIndustryCid());
					ci.setIndustryCode(industryCode);
					
//					使用最末階資訊新增管理帳號、串接公司code
					if (isLeafOfIndustryTree(industryCode)) {
						CompanyIndustrySysUser cisu = new CompanyIndustrySysUser();
						cisu.setId(UUID.randomUUID().toString());
						cisu.setCompanyIndustry(ci);
						cisu.setUser(createNewUser(company, citbo.getIndustryCid()));
						cisu.setCreateBy(Constants.SYSTEM);
						
//						新增管理帳號與公司產業別關聯
						List<CompanyIndustrySysUser> companyIndustryMappingSysUser = new ArrayList<>();
						companyIndustryMappingSysUser.add(cisu);
						ci.setCompanyIndustryMappingSysUser(companyIndustryMappingSysUser);
						
//						company code只組合一次
						if (ccode != null) {
							Deque<Long> stack = getCidStructure(industryCode);
//							依產業別階層大至小組合company code
							while (!stack.isEmpty()) {
								Long cid = stack.pop();
//								Codedetail code = codedetailRepository.findById(cid).orElse(null);
								CodeDetailDto code = codeDetailMap.get(cid);
								ccode.append(code.getCode());
							}
//							取得流水號初始值
							ccode.append(codedetailRepository.findByKindAndCode(FoiConstants.WEB090301, FoiConstants.COMPANY_CODE_SEQ).getProperty1());
//							ccode.append(codeDetailMap.get(Constants.WEB090301, Constants.COMPANY_CODE_SEQ).getProperty1());
							company.setCode(ccode.toString());
							ccode = null;
						}
						
					}

//					新增搜尋樹對象
					industryTidForInsert.add(ci.getId());
					
					companyIndustrys.add(ci);
				}
			}
			company.setCompanyOwnedIndustrys(companyIndustrys);
		}
		
		companyRepository.saveAndFlush(company);

//		刪除有異動的company industry搜尋樹
		for (String tidForDel : industryTidForDelete) {
			customRepository.deleteFromCompanyIndustryTree(tidForDel);			
		}
		
//		建立company industry搜尋樹
		for (String tidForAdd : industryTidForInsert) {
			customRepository.insertIntoCompanyIndustryTree(tidForAdd);			
		}
		
		return req;
	}

	@Override
	public void enableAdmin(CompanyIndustryTidDto req) {
		CompanyIndustry ci = companyIndustryRepository.findById(req.getCompanyIndustryTid()).orElse(null);
		if (ci == null) {
			throw new BadRequestException(String.format("公司產業別(id=%s)不存在", req.getCompanyIndustryTid()));
		}
		
//		檢查公司產業別是否存在管理者帳號
		for (CompanyIndustrySysUser cisu : ci.getCompanyIndustryMappingSysUser()) {
			if (cisu.getUser().getIsAdmin()) {
				throw new BadRequestException(-101, String.format("{%s-%s}已存在管理帳號，不可重複建立", ci.getCompany().getName(), ci.getIndustryCode().getName()));
			}			
		}

//		新增管理者帳號、與公司產業別的關聯
		CompanyIndustrySysUser cisu = new CompanyIndustrySysUser();
		cisu.setId(UUID.randomUUID().toString());
		cisu.setCompanyIndustry(ci);
		cisu.setUser(createNewUser(ci.getCompany(), ci.getIndustryCode().getCid()));
		cisu.setCreateBy(Constants.SYSTEM);

		List<CompanyIndustrySysUser> companyIndustryMappingSysUser = new ArrayList<>();
		companyIndustryMappingSysUser.add(cisu);
		ci.setCompanyIndustryMappingSysUser(companyIndustryMappingSysUser);
		
		companyIndustryRepository.saveAndFlush(ci);
		
//		公司狀態若為未啟用，改為啟用
		if (!ci.getCompany().getCompanyStateCode().getCode().equals(FoiConstants.ENABLED)) {
			Company company = companyRepository.findById(ci.getCompany().getId()).orElse(null);
			company.setCompanyStateCode(codedetailRepository.findByKindAndCode(FoiConstants.COMPANY_STATE, FoiConstants.ENABLED));
//			company.setCompanyStateCode(codeDetailMap.get(Constants.COMPANY_STATE, Constants.ENABLED));

			companyRepository.saveAndFlush(company);
		}	
	}

	@Override
	public void assignIndustryAgent(AgentCompanyIndustryTidDto req) {
		CompanyIndustry ci = companyIndustryRepository.findById(req.getMainCompanyIndustryTid()).orElse(null);
		if (ci == null) {
			throw new BadRequestException(String.format("公司產業別(id=%s)不存在", req.getMainCompanyIndustryTid()));
		}
		
		ci.setAgentCompanyIndustryTid(req.getAgentCompanyIndustryTid());
		companyIndustryRepository.saveAndFlush(ci);
	}

	@Override
	public List<CompanyBo> getIndustryList(String companyTid) {
		List<CompanyBo> rtn = new ArrayList<>();
		List<Company> companyList = null;
		if (FoiConstants.NULL.equals(companyTid)) {
//			查所有可選公司
			List<String> companiesTids = new ArrayList<>();
//			companyRepository.findCompanyNameByIndustry(0, null, 0, null, 0).forEach(d -> companiesTids.add(d.getCompanyTid()));
			companyRepository.findCompanyNameByIndustry(null, null, 0).forEach(d -> companiesTids.add(d.getCompanyTid()));
			
//			可選公司list
			companyList = companyRepository.findAllById(companiesTids);
		} else {
			Company company = companyRepository.findById(companyTid).orElse(null);
			companyList = new ArrayList<>();
			companyList.add(company);
		}

//		組織list of CompanyBo
		for (Company company : companyList) {
			rtn.add(createCompanyBoByCompany(company));
		}
		return rtn;
	}

	@Override
	public List<CompanyIndustryContractBo> getIndustryContractList(String companyIndustryTid) {
		CompanyIndustry ci = companyIndustryRepository.findById(companyIndustryTid).orElse(null);
		if (ci == null) {
			throw new BadRequestException(String.format("公司產業別(id=%s)不存在", companyIndustryTid));
		}
		List<CompanyIndustryContract> cics = companyIndustryContractRepository.findByCompanyIndustryOrderByYearAscMonthAsc(ci);
		
		List<CompanyIndustryContractBo> rtn = new ArrayList<>();

		CompanyIndustryContractBo dto = null;
		List<CompanyIndustryContractValueBo> values = null;
		int temp = 0;
		for (CompanyIndustryContract cic : cics) {
			if (cic.getYear() + cic.getMonth() != temp) {
				if (temp > 0) {
					dto.setValues(values);
					rtn.add(dto);					
				}
				
				temp = cic.getYear() + cic.getMonth();
				
				dto = new CompanyIndustryContractBo();
				dto.setCompanyIndustryTid(companyIndustryTid);
				dto.setYear(cic.getYear());
				dto.setMonth(cic.getMonth());
				values = new ArrayList<>();
			}

			CompanyIndustryContractValueBo cicvbo = new CompanyIndustryContractValueBo();
			cicvbo.setColumn(cic.getContractTypeCode().getProperty1());
			cicvbo.setValue(cic.getContractNum());

			values.add(cicvbo);
		}
		return rtn;
	}

	@Override
	public void updateIndustryContract(CompanyIndustryContractBo req) {
		CompanyIndustry ci = null;
		if (!StringUtils.isEmptyOrNull(req.getCompanyIndustryTid())) {
			ci = companyIndustryRepository.findById(req.getCompanyIndustryTid()).orElse(null);
			if (ci == null) {
				throw new BadRequestException(String.format("公司產業別(id=%s)不存在", req.getCompanyIndustryTid()));
			}
		}

		List<CompanyIndustryContract> companyIndustryContracts = ci.getCompanyIndustryContracts();
		Set<CompanyIndustryContract> companyIndustryContractsCopy = new HashSet<>(companyIndustryContracts);
		
		Map<String, Integer> map = new HashMap<>();
		for (CompanyIndustryContractValueBo cicvbo : req.getValues()) {
			map.put(cicvbo.getColumn(), cicvbo.getValue());
		}
		
//		更新對應年月的新契約數
		for (CompanyIndustryContract cic : companyIndustryContracts) {
			if (cic.getYear() == req.getYear() && cic.getMonth() == req.getMonth()) {
				cic.setContractNum(map.get(cic.getContractTypeCode().getProperty1()));
				companyIndustryContractsCopy.remove(cic);
				map.remove(cic.getContractTypeCode().getProperty1());
			}
		}
		
//		刪除不在CompanyIndustryContractBo內的契約樹資料
		companyIndustryContracts.removeAll(companyIndustryContractsCopy);

//		新增不在原始資料裡的契約數資料
		for (Entry<String, Integer> entry : map.entrySet()) {
			CompanyIndustryContract newCic = new CompanyIndustryContract();
			newCic.setCompanyIndustry(ci);
			newCic.setYear(req.getYear());
			newCic.setMonth(req.getMonth());
			
			Codedetail contractTypeCode = codedetailRepository.findByKindAndProperty1(FoiConstants.CONTRACT_TYPE, entry.getKey());
			newCic.setContractTypeCode(contractTypeCode);
			newCic.setContractNum(entry.getValue());
			
			companyIndustryContracts.add(newCic);
		}
		ci.setCompanyIndustryContracts(companyIndustryContracts);
		
		companyIndustryRepository.saveAndFlush(ci);
	}

	@Override
	public void importIndustryContract(CompanyContractDto req) {
		for (CompanyIndustryContractFile f : req.getFile()) {
//			把multipart還原成檔案型別
			File file = FileUtil.toFile(f.getFileObj());
			
			try (InputStream is = new BufferedInputStream(new FileInputStream(file));
				 XSSFWorkbook workbook = new XSSFWorkbook(is);) {
//				取得頁數對應sheet
				XSSFSheet sheet = workbook.getSheetAt(f.getDataPage() - 1);
				
//		`		取得契約數代碼
//				List<Codedetail> codes = codedetailRepository.findByKindOrderBySortCodeAsc(Constants.CONTRACT_TYPE);
				List<CodeDetailDto> codes = codeDetailMap.getAndOrderBySortCode(FoiConstants.CONTRACT_TYPE);


				if (req.getImportStyle() == 1) {
//					壽險(使用property2資訊)
					String companyCodeCol = codes.get(0).getProperty2();
					for (int i = 1 ; i < codes.size() ; i ++) {
						if ("0".equals(codes.get(i).getProperty2())) {
//							忽略值為0的代碼
							continue;
						}
						Long contractTypeCid = codes.get(i).getCid();
						String contractNumCol = codes.get(i).getProperty2();
						
//						大量資料從第七行開始
						Integer dataStartOnRow = 7;
//						確認匯入excel裡所有的company code都存在，只要任一個不存在就不執行匯入，避免資料混亂
						checkCompanyCodeExists(sheet, dataStartOnRow, companyCodeCol);

						XSSFCell contractNumCell = getCell(sheet, dataStartOnRow, contractNumCol);
						XSSFCell companyCodeCell = getCell(sheet, dataStartOnRow, companyCodeCol);
						while (companyCodeCell != null) {
							CompanyIndustryContract newContract = new CompanyIndustryContract();
							newContract.setId(StringUtils.newUuidStr());
							
							String companyCode = companyCodeCell.toString();
							if (companyCode.indexOf('-') > -1) {
								companyCode = companyCode.split("-")[0];
							}
//							Codedetail contractTypeCompanyCode = codedetailRepository.findByKindAndCode(Constants.CONTRACT_TYPE_COMPANY_CODE, companyCode);
							CodeDetailDto contractTypeCompanyCode = codeDetailMap.get(FoiConstants.CONTRACT_TYPE_COMPANY_CODE, companyCode);
//							property1是company的table id
							Company company = companyRepository.findById(contractTypeCompanyCode.getProperty1()).orElse(null);
							List<CompanyIndustry> cIndustry = companyIndustryRepository.findByCompany(company);
//							找保險業第二階的table id
							for (CompanyIndustry ci : cIndustry) {
								if (FoiConstants.INDUSTRY_B.equals(ci.getIndustryCode().getKind())) {
									newContract.setCompanyIndustry(ci);
									break;
								}
							}
							newContract.setYear(req.getYear());
							newContract.setMonth(req.getMonth());
							
							Codedetail contractTypeCode = codedetailRepository.findById(contractTypeCid).orElse(null);
//							CodeDetailDto contractTypeCode = codeDetailMap.get(contractTypeCid);
							newContract.setContractTypeCode(contractTypeCode);
							
							double contractNum = 0;
							try {
								contractNum = contractNumCell.getNumericCellValue();
							} catch (Exception e) {
//								應為數字的欄位出現非數字(例如: -)時，視為0
							}
							newContract.setContractNum((int)contractNum);
							newContract.setCreateBy(SecurityUtils.getCurrentUsername());
							newContract.setCreateTime(DateUtil.getSystemTime());
							
							companyIndustryContractRepository.saveAndFlush(newContract);
							
							dataStartOnRow ++;
							contractNumCell = getCell(sheet, dataStartOnRow, contractNumCol);
							companyCodeCell = getCell(sheet, dataStartOnRow, companyCodeCol);
						}
					}
				} else if (req.getImportStyle() == 2 && f.getFileKind() == 1) {
//					產險-健康險(使用property3資訊)
					String companyCodeCol = codes.get(0).getProperty3();
					for (int i = 1 ; i < codes.size() ; i ++) {
						if ("0".equals(codes.get(i).getProperty3())) {
//							忽略值為0的代碼
							continue;
						}
						Long contractTypeCid = codes.get(i).getCid();
						String contractNumCol = codes.get(i).getProperty3();
						
//						大量資料從第四行開始
						Integer dataStartOnRow = 4;
						CellReference contractNumCellRef = new CellReference(contractNumCol + dataStartOnRow);
						CellReference companyCodeCellRef = new CellReference(companyCodeCol + dataStartOnRow);
						XSSFCell contractNumCell = sheet.getRow(contractNumCellRef.getRow()).getCell(contractNumCellRef.getCol());
						XSSFCell companyCodeCell = sheet.getRow(companyCodeCellRef.getRow()).getCell(companyCodeCellRef.getCol());
						
						while (companyCodeCell != null) {
							
						}
					}
				} else if (req.getImportStyle() == 2 && f.getFileKind() == 2) {
//					產險-傷害險(使用property4資訊)
					String companyCodeCol = codes.get(0).getProperty4();
//					for (int i = 1 ; i < codes.size() ; i ++) {
//						if ("0".equals(codes.get(i).getProperty4())) {
////							忽略值為0的代碼
//							continue;
//						}
//						Long contractTypeCid = codes.get(i).getCid();
//						String contractNumCol = codes.get(i).getProperty4();
//						
////						大量資料從第五行開始
//						Integer dataStartOnRow = 5;
//						CellReference contractNumCellRef = new CellReference(contractNumCol + dataStartOnRow);
//						CellReference companyCodeCellRef = new CellReference(companyCodeCol + dataStartOnRow);
//						XSSFCell contractNumCell = sheet.getRow(contractNumCellRef.getRow()).getCell(contractNumCellRef.getCol());
//						XSSFCell companyCodeCell = sheet.getRow(companyCodeCellRef.getRow()).getCell(companyCodeCellRef.getCol());
//						
//						
//					}
				} else if (req.getImportStyle() == 2 && f.getFileKind() == 0) {
					String companyCodeCol = codes.get(0).getProperty5();
//					產險-無關鍵字(使用property5資訊)
//					for (int i = 1 ; i < codes.size() ; i ++) {
//						if ("0".equals(codes.get(i).getProperty5())) {
////							忽略值為0的代碼
//							continue;
//						}
//						Long contractTypeCid = codes.get(i).getCid();
//						String contractNumCol = codes.get(i).getProperty5();
//						
////						大量資料從第四行開始
//						Integer dataStartOnRow = 4;
//						CellReference contractNumCellRef = new CellReference(contractNumCol + dataStartOnRow);
//						CellReference companyCodeCellRef = new CellReference(companyCodeCol + dataStartOnRow);
//						XSSFCell contractNumCell = sheet.getRow(contractNumCellRef.getRow()).getCell(contractNumCellRef.getCol());
//						XSSFCell companyCodeCell = sheet.getRow(companyCodeCellRef.getRow()).getCell(companyCodeCellRef.getCol());
//						
//						
//					}
				}
				
			} catch (FileNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	
		}
		
	}
	
//	用Company組成CompanyBo
	private CompanyBo createCompanyBoByCompany(Company c) {
		CompanyBo cbo = new CompanyBo();
		cbo.setCompanyTid(c.getId());
		cbo.setCompanyName(c.getName());
		cbo.setCompanyAddress(c.getCompanyAddr());
		cbo.setMailAddress(c.getMailAddr());
		cbo.setCompanyStateCid(c.getCompanyStateCode().getCid());
		cbo.setCompanyStateName(c.getCompanyStateCode().getName());
		cbo.setEnableDate(c.getEnableDate());
		cbo.setCloseDate(c.getCloseDate());
		cbo.setCloseRemark(c.getCloseRemark());
		cbo.setCodeEndDate(c.getCodeEndDate());
		cbo.setCombineDate(c.getCombineDate());
		
//		組織CompanyIndustryTreeBo物件
		List<CompanyIndustryTreeBo> citbosAll = new ArrayList<>();
		List<CompanyIndustryTreeBo> citbosLeaf = new ArrayList<>();
		for (CompanyIndustry ci : c.getCompanyOwnedIndustrys()) {
			CompanyIndustryTreeBo citbo = new CompanyIndustryTreeBo();
			citbo.setCompanyIndustryTid(ci.getId());
			citbo.setIndustryCid(ci.getIndustryCode().getCid());
			citbo.setIndustryName(ci.getIndustryCode().getName());
			citbo.setLevel(caculateLevel(ci.getIndustryCode()));
			
			citbosAll.add(citbo);
			
//			kind + code組合後若查無結果則為末階
			if (isLeafOfIndustryTree(ci.getIndustryCode())) {
				citbosLeaf.add(citbo);
			}
		}
		
//		用末階CompanyIndustryTreeBo物件來組織CompanyIndustryBo物件
		List<CompanyIndustryBo> cibos = new ArrayList<>();
		for (CompanyIndustryTreeBo citbo : citbosLeaf) {
			CompanyIndustryBo cibo = new CompanyIndustryBo();
//			取得cid階層結構
			Deque<Long> cidStructure =  getCidStructure(codedetailRepository.findById(citbo.getIndustryCid()).orElse(null));
//			Deque<Long> cidStructure =  getCidStructure(codeDetailMap.get(citbo.getIndustryCid()));
			
			List<CompanyIndustryTreeBo> industryCids = new ArrayList<>();
			while (!cidStructure.isEmpty()) {
				Long cid = cidStructure.pop();
				for (int i = 0 ; i < citbosAll.size() ; i ++) {
//					依產業cid結構由上至下，從list of CompanyIndustryTreeBox裡取出本公司產業別的物件，並從list中移除
					if (cid == citbosAll.get(i).getIndustryCid()) {
						industryCids.add(citbosAll.remove(i));
						break;
					}
				}
			}
			cibo.setCompanyIndustryTid(citbo.getCompanyIndustryTid());
			cibo.setIndustryName(createCompanyIndustryFullNameByIndustryCode(codedetailRepository.findById(citbo.getIndustryCid()).orElse(null)));
//			cibo.setIndustryName(createCompanyIndustryFullNameByIndustryCode(codeDetailMap.get(citbo.getIndustryCid())));
			cibo.setIndustryCids(industryCids);

			cibos.add(cibo);
		}
		cbo.setCompanyIndustrys(cibos);
		
//		組織CompanyConcatBo物件
		List<CompanyConcatBo> companyConcats = new ArrayList<>();
		for (CompanyConcat cc : c.getCompanyConcats()) {
			CompanyConcatBo ccbo = new CompanyConcatBo();
			ccbo.setCompanyConcatsTid(cc.getId());
			ccbo.setSeqNo(cc.getSeqNo());
			ccbo.setName(cc.getName());
			ccbo.setTelNo(cc.getTelNo());
			ccbo.setTelExt(cc.getTelExt());
			ccbo.setEmail(cc.getEmail());
			ccbo.setFaxNo(cc.getFaxNo());
			ccbo.setFaxExt(cc.getFaxExt());
			
			companyConcats.add(ccbo);
		}
		cbo.setCompanyConcats(companyConcats);
		
		return cbo;
	}
	
//	用末階的industry代碼組合公司產業別全名
	private String createCompanyIndustryFullNameByIndustryCode(Codedetail industryCode) {
		Deque<String> stack = new ArrayDeque<>();
		do {
			stack.push(industryCode.getName());
			industryCode = getParentIndustryCode(industryCode);
		} while (hasParentIndustry(industryCode));
		stack.push(industryCode.getName());

		StringBuilder sb = new StringBuilder();
		while (!stack.isEmpty()) {
			sb.append(stack.pop()).append('-');
		}
		return sb.length() == 0 ? sb.toString() : sb.substring(0, sb.length() - 1);
	}

//	確認當前公司產業代碼是否為最後一階
//	例如當前code為: kind = "industry.A", code = "01"
//	本方法就會用kind + . + code = "industry.A.01" 去查是否存在擁有此kind的代碼
//	沒有的話即為最後一階
	private boolean isLeafOfIndustryTree(Codedetail currentCode) {
		return codedetailRepository.countByKind(currentCode.getKind() + '.' + currentCode.getCode()) == 0;
	}
	
	private boolean hasParentIndustry(Codedetail currentCode) {
		return currentCode.getKind().lastIndexOf('.') > -1;
	}
	
	private Codedetail getParentIndustryCode(Codedetail currentCode) {
		String cureentKind = currentCode.getKind();
		String nextKind = cureentKind.substring(0, cureentKind.lastIndexOf('.'));
		String nextCode = cureentKind.substring(cureentKind.lastIndexOf('.') + 1, cureentKind.length());
		
		return codedetailRepository.findByKindAndCode(nextKind, nextCode);
//		return codeDetailMap.get(nextKind, nextCode);
	}
	
//	計算industry代碼的層級
	private Integer caculateLevel(Codedetail industryCode) {
		int level = 1;
		while (hasParentIndustry(industryCode)) {
			level += 1;
			industryCode = getParentIndustryCode(industryCode);
		}
		return level;
	}
	
//	使用最末階的產業別code串出完整cid結構
	private Deque<Long> getCidStructure(Codedetail industryCode) {
		Deque<Long> stack = new ArrayDeque<>();
		do {
			stack.push(industryCode.getCid());
			industryCode = getParentIndustryCode(industryCode);
		} while (hasParentIndustry(industryCode));
		stack.push(industryCode.getCid());
		return stack;
	}
	
	private XSSFCell getCell(XSSFSheet sheet, Integer row, String codeCol) {
		CellReference codeCellRef = new CellReference(codeCol + row);
		return sheet.getRow(codeCellRef.getRow()).getCell(codeCellRef.getCol());
	}
	
//	確認匯入excel裡紀錄的company code都有存在
	private void checkCompanyCodeExists(XSSFSheet sheet, Integer row, String companyCodeCol) {
		XSSFCell companyCodeCell = null;
		List<String> compantCodeNotFound = new ArrayList<>();
		do {
			companyCodeCell = getCell(sheet, row ++, companyCodeCol);
			String companyCode = companyCodeCell.toString();
			if (companyCode.indexOf('-') > -1) {
				companyCode = companyCode.split("-")[0];
			}
			Codedetail contractTypeCompanyCode = codedetailRepository.findByKindAndCode(FoiConstants.CONTRACT_TYPE_COMPANY_CODE, companyCode);
//			CodeDetailDto contractTypeCompanyCode = codeDetailMap.get(Constants.CONTRACT_TYPE_COMPANY_CODE, companyCode);
			Company company = companyRepository.findById(contractTypeCompanyCode.getProperty1()).orElse(null);
			if (company == null) {
				compantCodeNotFound.add(companyCode);
			}
		} while (companyCodeCell != null);
		
		if (compantCodeNotFound.size() > 0) {
			throw new BadRequestException(String.format("匯入失敗，以下公司別代碼未設定對應公司:\n"
													  + "%s\n"
													  + "請至共用代碼檔[contract_type.保發公司別代碼]類別進行設定後，再次執行匯入", 
													  			Arrays.toString(compantCodeNotFound.toArray())));
		}
	}
	
//	新增user
	private User createNewUser(Company c, Long industryCid) {
		User user = new User();
		
		Codedetail roleBankAdminGroupCode = codedetailRepository.findByKindAndCode(FoiConstants.ROLE_BANK, FoiConstants.ADMIN_GROUP);
//		CodeDetailDto roleBankAdminGroupCode = codeDetailMap.get(Constants.ROLE_BANK, Constants.ADMIN_GROUP);
		Role companyAdminRole = roleRepository.findById(Long.valueOf(roleBankAdminGroupCode.getProperty1())).orElse(null);
		Set<Role> roles = new HashSet<Role>();
		roles.add(companyAdminRole);
		user.setRoles(roles);
		
//		user.setDept(null);
		user.setAccount(String.format("%s001", c.getCode()));
		user.setName(String.format("%s%s管理者", c.getName(), createCompanyIndustryFullNameByIndustryCode(codedetailRepository.findById(industryCid).orElse(null))));
//		user.setName(String.format("%s%s管理者", c.getName(), createCompanyIndustryFullNameByIndustryCode(codeDetailMap.get(industryCid))));
		
		Codedetail bankDefaultPwCode = codedetailRepository.findByKindAndCode(FoiConstants.WEB090301, FoiConstants.DEFAULTPWD);
//		CodeDetailDto bankDefaultPwCode = codeDetailMap.get(Constants.WEB090301, Constants.DEFAULTPWD);
		user.setPassword(bankDefaultPwCode.getProperty1());
		user.setEnabled(true);
		user.setIsAdmin(true);
		return userRepository.saveAndFlush(user);
	}

}
