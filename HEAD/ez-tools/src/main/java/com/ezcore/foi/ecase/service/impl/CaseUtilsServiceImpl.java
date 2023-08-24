package com.ezcore.foi.ecase.service.impl;

import java.util.Collections;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.ezcore.foi.ecase.service.CaseUtilsService;

@Service
public class CaseUtilsServiceImpl implements CaseUtilsService {

	@Override
	public List<String> getMailLogSimple() {
		// TODO Auto-generated method stub
		return Collections.emptyList();
	}

	@Override
	public Map<String, String> getEmailContent(String jobCode, String caseMasterTid, String mailCode,
			Map<String, String> argMaps) {
		// TODO Auto-generated method stub
		return Collections.emptyMap();
	}

}
