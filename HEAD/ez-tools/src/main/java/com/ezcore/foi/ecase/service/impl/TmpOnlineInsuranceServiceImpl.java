package com.ezcore.foi.ecase.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.foi.ecase.model.request.TmpOnlineInsurance01Request;
import com.ezcore.foi.ecase.model.request.TmpOnlineInsurance02Request;
import com.ezcore.foi.ecase.service.CaseFileService;
import com.ezcore.foi.ecase.service.TmpOnlineInsuranceService;

@Service
public class TmpOnlineInsuranceServiceImpl implements TmpOnlineInsuranceService {
	
	@Autowired
	private CaseFileService caseFileService;

	@Override
	public void addInsuranceDispute(TmpOnlineInsurance01Request req) {
//		防疫保單 entity = new 防疫保單();
//		entity.setId(StringUtils.newUuidStr());
//		entity.setName(req.getClass().toString());
//		...中間省略
//		
//		caseFileService.saveOrUpdateCaseFile(new CaseFileBoData(), file);
//		caseFileService.saveOrUpdateCaseFile(new CaseFileBoData(), file);
		
//		for (CaseFileBoData file : req.getOtherFilesObj()) {
//			caseFileService.saveOrUpdateCaseFile(file, file);
//		}

//		防疫保單Repository.saveAndFlush(entity);
	}
	@Override
	public void addInsuranceAppeal(TmpOnlineInsurance02Request req) {
	    // TODO: 提供預設的response內容
	    // Step 1: 驗證請求
	    // Step 2: 新增防疫保單線上申訴
	    // Step 3: 儲存資料
	}


}
