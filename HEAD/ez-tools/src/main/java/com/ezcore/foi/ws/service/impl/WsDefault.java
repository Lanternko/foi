package com.ezcore.foi.ws.service.impl;

import org.springframework.stereotype.Service;

//@Service("wsDefault")
public class WsDefault extends WsBaseAction {

	@Override
	protected void doProcess() {
		System.out.println("執行程式wsBaseAction");
		addCaseFlow(null, null, null);
	}

	@Override
	protected void preProcess() {
		// TODO Auto-generated method stub
	}

	@Override
	protected void postProcess() {
		// TODO Auto-generated method stub
	}

}
