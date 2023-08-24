package com.ezcore.foi.wstest.service;

import org.springframework.stereotype.Component;

@Component
public class CallWsDocService {

//	TODO : 配合wsdl看怎麼設定可以從這裡呼別人web service
	
	public void getDocInfo() {
		System.out.println("call 公文系統的GetDocInfo()");
	}

	public void checkClose() {
		System.out.println("call 公文系統的CheckClose()");
	}

	public void checkAndDoClose() {
		System.out.println("call 公文系統的CheckAndDoClose()");
	}

	public void moveRps() {
		System.out.println("call 公文系統的MoveRps()");
	}

	public void snd() {
		System.out.println("call 公文系統的Snd()");
	}
	
}
