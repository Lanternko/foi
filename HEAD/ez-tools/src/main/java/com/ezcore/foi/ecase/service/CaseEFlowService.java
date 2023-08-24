package com.ezcore.foi.ecase.service;

import java.util.List;

import com.ezcore.foi.ecase.model.bo.Eflow2000BoGroup;
import com.ezcore.foi.ecase.model.bo.Eflow2000BoHistory;
import com.ezcore.foi.ecase.model.bo.Eflow1000BoData;
import com.ezcore.foi.ecase.model.bo.Eflow1000BoHistory;
import com.ezcore.foi.ecase.model.bo.EflowBoDoProc;
import com.ezcore.foi.ecase.model.bo.EflowBoEFlowMap;
import com.ezcore.foi.ecase.model.request.caseeflow.CaseEFlow01Request;
import com.ezcore.foi.ecase.model.request.caseeflow.CaseEFlow05Request;
import com.ezcore.foi.ecase.model.request.caseeflow.CaseEFlow06Request;
import com.ezcore.foi.ecase.model.request.caseeflow.CaseEFlow07Request;
import com.ezcore.foi.ecase.model.request.caseeflow.CaseEFlow08Request;

public interface CaseEFlowService {
	
	/**
	 * 取得作業可用電子流程表
	 */
    List<EflowBoEFlowMap> getMap(CaseEFlow01Request req);
	
	/**
	 * (諮服組)取得待建立電話流程清單
	 */
    List<Eflow1000BoData> get1000Init(String pCode, String account);
	
	/**
	 * (諮服組)取指定流程清單
	 */
    List<Eflow1000BoData> get1000List(String pCode, String currentWorkGroupCode, String currentCode, String account);
	
	/**
	 * 推進流程
	 */
    void doProc(List<EflowBoDoProc> req);
	
	/**
	 * (申訴組)取得待建立電話申訴案件結案清單
	 */
    List<Eflow2000BoGroup> get2000Init(CaseEFlow05Request req);
	
	/**
	 * (申訴組)取指定流程清單
	 */
    List<Eflow2000BoGroup> get2000List(CaseEFlow06Request req);
	
	/**
	 * (諮服組)查詢移交歷史
	 * EFlow 07
	 */
    List<Eflow1000BoHistory> get1000History(CaseEFlow07Request req);
	
	/**
	 * (申訴組)查詢移交歷史
	 * EFlow 08
	 */
    List<Eflow2000BoGroup> get2000History(CaseEFlow08Request req);
    
    
}