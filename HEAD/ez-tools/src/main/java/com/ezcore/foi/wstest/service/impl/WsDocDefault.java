package com.ezcore.foi.wstest.service.impl;

import org.springframework.stereotype.Service;

@Service("wsDocDefault")
public class WsDocDefault extends WsDocBaseAction {

	@Override
	protected boolean preProcess() {
//		無須前置動作
		return false;
	}

	@Override
	protected void postProcess() {
//		無須後置動作
	}

}
