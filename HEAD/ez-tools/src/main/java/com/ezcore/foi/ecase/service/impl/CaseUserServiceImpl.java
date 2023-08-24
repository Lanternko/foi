package com.ezcore.foi.ecase.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.foi.ecase.dao.CaseUserRepository;
import com.ezcore.foi.ecase.service.CaseUserService;

@Service
public class CaseUserServiceImpl implements CaseUserService {

	@Autowired
	private CaseUserRepository caseUserRepository;
	
	@Override
	public String getApplicantNames(String caseMasterTid) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getAgentNames(String caseMasterTid) {
		// TODO Auto-generated method stub
		return null;
	}

}
