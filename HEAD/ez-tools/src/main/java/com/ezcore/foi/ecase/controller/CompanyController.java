package com.ezcore.foi.ecase.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ezcore.common.controller.BaseController;
import com.ezcore.foi.ecase.dao.dto.AgentCompanyIndustryTidDto;
import com.ezcore.foi.ecase.dao.dto.CompanyIndustryDto;
import com.ezcore.foi.ecase.dao.dto.CompanyIndustryTidDto;
import com.ezcore.foi.ecase.model.bo.CompanyBo;
import com.ezcore.foi.ecase.model.bo.CompanyIndustryContractBo;
import com.ezcore.foi.ecase.service.CompanyService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import me.zhengjie.annotation.Log;

@Slf4j
@RestController
@RequiredArgsConstructor
@Api(tags = "公司相關設定")
@RequestMapping("api/v1/company")
public class CompanyController extends BaseController {

	@Autowired
	private CompanyService companyService;
	
	@Log("取得公司名稱列表")
	@ApiOperation("取得公司名稱列表")
	@PostMapping(value = "/list/name")
	@PreAuthorize("@el.check('')")	
	public ResponseEntity<Object> Company01(@RequestBody(required = false) CompanyIndustryDto req) {
		return commonResponse(companyService.getCompanyNameList(req), "Company01");
	}

	@Log("取得公司列表")
	@ApiOperation("取得公司列表")
	@PostMapping(value = "/list")
	@PreAuthorize("@el.check('company:select')")
	public ResponseEntity<Object> Company02(@RequestBody(required = false) CompanyIndustryDto req) {
		return commonResponse(companyService.getCompanyList(req), "Company02");
	}

	@Log("取得單筆公司資料")
	@ApiOperation("取得單筆公司資料")
	@GetMapping(value = "/{companyTid}")
	@PreAuthorize("@el.check('')")	
	public ResponseEntity<Object> Company03(@PathVariable String companyTid) {
		return commonResponse(companyService.getCompanyData(companyTid), "Company03");
	}

	@Log("新增/異動單筆公司資料")
	@ApiOperation("新增/異動單筆公司資料")
	@PostMapping(value = "/")
	@PreAuthorize("@el.check('')")	
	public ResponseEntity<Object> Company04(@RequestBody CompanyBo req) {
		return commonResponse(companyService.updateCompanyData(req), "Company04");
	}

	@Log("公司產業別管理帳號啟用")
	@ApiOperation("公司產業別管理帳號啟用")
	@PutMapping(value = "/industry/adminEnabled")
	@PreAuthorize("@el.check('')")	
	public ResponseEntity<Object> Company11(@RequestBody CompanyIndustryTidDto req) {
		companyService.enableAdmin(req);
		return commonResponse("Company11");
	}

	@Log("公司產業別代理帳號設定")
	@ApiOperation("公司產業別代理帳號設定")
	@PostMapping(value = "/industry/agent")
	@PreAuthorize("@el.check('')")	
	public ResponseEntity<Object> Company12(@RequestBody AgentCompanyIndustryTidDto req) {
		companyService.assignIndustryAgent(req);
		return commonResponse("Company12");
	}

	@Log("公司產業別清單列表")
	@ApiOperation("公司產業別清單列表")
	@PostMapping(value = "/industry/list/{companyTid}")
	@PreAuthorize("@el.check('')")	
	public ResponseEntity<Object> Company13(@PathVariable String companyTid) {
		return commonResponse(companyService.getIndustryList(companyTid), "Company13");
	}

	@Log("取得公司產業別之契約數清單")
	@ApiOperation("取得公司產業別之契約數清單")
	@GetMapping(value = "/contract/list/{companyIndustryTid}")
	@PreAuthorize("@el.check('')")	
	public ResponseEntity<Object> Company21(@PathVariable String companyIndustryTid) {
		return commonResponse(companyService.getIndustryContractList(companyIndustryTid), "Company21");
	}

	@Log("新增/異動單筆公司契約數資料")
	@ApiOperation("新增/異動單筆公司契約數資料")
	@PostMapping(value = "/contract")
	@PreAuthorize("@el.check('')")	
	public ResponseEntity<Object> Company22(@RequestBody CompanyIndustryContractBo req) {
		companyService.updateIndustryContract(req);
		return commonResponse("Company22");
	}

	@Log("公司契約數匯入")
	@ApiOperation("公司契約數匯入")
	@PostMapping(value = "/contract/import")
	@PreAuthorize("@el.check('')")	
//	public ResponseEntity<Object> Company23(@RequestBody CompanyContractDto req) {
	public ResponseEntity<Object> Company23() {
		companyService.importIndustryContract(null);
		return commonResponse("Company23");
	}

    @Log("公司聯絡窗口")
    @ApiOperation("公司聯絡窗口")
    @PostMapping("/concat")
    @PreAuthorize("@el.check('')")
    public ResponseEntity<Object> Company31() {
        return commonResponse("Company31");
    }
	
}
