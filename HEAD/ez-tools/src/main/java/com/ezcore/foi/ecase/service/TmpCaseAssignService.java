package com.ezcore.foi.ecase.service;

import com.ezcore.foi.ecase.model.request.TmpCaseAssign101Request;
import com.ezcore.foi.ecase.model.request.TmpCaseAssign102Request;

public interface TmpCaseAssignService {
	void tmpCaseAssign101(TmpCaseAssign101Request request);
	
	void tmpCaseAssign102(TmpCaseAssign102Request request);
}
