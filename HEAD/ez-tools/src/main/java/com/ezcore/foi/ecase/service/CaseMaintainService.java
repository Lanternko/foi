package com.ezcore.foi.ecase.service;

import com.ezcore.foi.ecase.model.request.caseeflow.CaseMaintain01Request;

public interface CaseMaintainService {
	void maintainCase(CaseMaintain01Request req, String username);
}
