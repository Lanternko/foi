package com.ezcore.foi.ws.service.impl;

import org.springframework.stereotype.Service;

//@Service("wsCompanyResponse")
public class WsCompanyResponse extends WsBaseAction {

	@Override
	protected void doProcess() {
		System.out.println("執行程式wsCompanyResponse");
		preProcess();
		addCaseFlow(null, null, null);
		postProcess();
	}
	
	@Override
	protected void preProcess() {
		System.out.println("執行前置動作...");
	}

	@Override
	protected void postProcess() {
		System.out.println("執行後置動作...");
	}

}
