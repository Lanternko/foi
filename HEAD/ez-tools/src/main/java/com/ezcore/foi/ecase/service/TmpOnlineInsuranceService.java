package com.ezcore.foi.ecase.service;

import org.springframework.stereotype.Service;

import com.ezcore.foi.ecase.model.request.TmpOnlineInsurance01Request;
import com.ezcore.foi.ecase.model.request.TmpOnlineInsurance02Request;


public interface TmpOnlineInsuranceService {

	/**
     * 新增防疫保單線上評議
     */
    void addInsuranceDispute(TmpOnlineInsurance01Request req);
    
    /**
     * 新增防疫保單線上申訴
     */
    void addInsuranceAppeal(TmpOnlineInsurance02Request req);
	
}
