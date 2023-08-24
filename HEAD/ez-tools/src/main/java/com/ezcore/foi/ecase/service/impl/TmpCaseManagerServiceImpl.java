package com.ezcore.foi.ecase.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Service;

import com.ezcore.common.model.BasePageResponse;
import com.ezcore.foi.ecase.model.bo.casedatabo.CenterOwner;
import com.ezcore.foi.ecase.model.bo.casedatabo.Examiner;
import com.ezcore.foi.ecase.model.bo.casedatabo.Suggestion;
import com.ezcore.foi.ecase.model.request.TmpCaseManager108Request;
import com.ezcore.foi.ecase.model.request.tmpcasemanager.TmpCaseManager101Request;
import com.ezcore.foi.ecase.model.request.tmpcasemanager.TmpCaseManager102Request;
import com.ezcore.foi.ecase.model.request.tmpcasemanager.TmpCaseManager103Request;
import com.ezcore.foi.ecase.model.request.tmpcasemanager.TmpCaseManager104Request;
import com.ezcore.foi.ecase.model.request.tmpcasemanager.TmpCaseManager105Request;
import com.ezcore.foi.ecase.model.request.tmpcasemanager.TmpCaseManager107Request;
import com.ezcore.foi.ecase.model.request.tmpcasemanager.TmpCaseManager121Request;
import com.ezcore.foi.ecase.model.request.tmpcasemanager.TmpCaseManager122Request;
import com.ezcore.foi.ecase.model.request.tmpcasemanager.TmpCaseManager123Request;
import com.ezcore.foi.ecase.model.response.TmpCaseManager108Response;
import com.ezcore.foi.ecase.model.response.tmpcasemanager.TmpCaseManager101Response;
import com.ezcore.foi.ecase.model.response.tmpcasemanager.TmpCaseManager102Response;
import com.ezcore.foi.ecase.model.response.tmpcasemanager.TmpCaseManager103Response;
import com.ezcore.foi.ecase.model.response.tmpcasemanager.TmpCaseManager103ResponseChild;
import com.ezcore.foi.ecase.model.response.tmpcasemanager.TmpCaseManager104Response;
import com.ezcore.foi.ecase.model.response.tmpcasemanager.TmpCaseManager104ResponseChild;
import com.ezcore.foi.ecase.model.response.tmpcasemanager.TmpCaseManager105Response;
import com.ezcore.foi.ecase.model.response.tmpcasemanager.TmpCaseManager107Response;
import com.ezcore.foi.ecase.model.response.tmpcasemanager.TmpCaseManager121Response;
import com.ezcore.foi.ecase.model.response.tmpcasemanager.TmpCaseManager124Response;
import com.ezcore.foi.ecase.service.TmpCaseManagerService;

@Service
public class TmpCaseManagerServiceImpl implements TmpCaseManagerService{
	/*
	 * 101
	 */
	@Override
    public List<TmpCaseManager101Response> caseManager101(TmpCaseManager101Request req) {
        // TODO: 提供預設的response內容
        // Step 1: 驗證請求
        // Step 2: 查詢案件進度
        // Step 3: 組裝結果
		
		List<TmpCaseManager101Response> rtn = new ArrayList<>();
		rtn.add(new TmpCaseManager101Response());
		rtn.add(new TmpCaseManager101Response(1));
		
		return rtn;
    }

	
	/*
	 * 102
	 */
	@Override
	public List<TmpCaseManager102Response> caseManager102(TmpCaseManager102Request req) {
	    // TODO: 提供預設的response內容
	    // Step 1: 驗證請求
	    // Step 2: 查詢案件進度
	    // Step 3: 組裝結果
		
		List<TmpCaseManager102Response> rtn = new ArrayList<>();
		rtn.add(new TmpCaseManager102Response());
		
		return rtn;
	}
	
	/**
	 * 103
	 * @param req
	 * @return
	 */
	@Override
	public TmpCaseManager103Response caseManager103(TmpCaseManager103Request req) {
	    TmpCaseManager103Response response = new TmpCaseManager103Response();
	   
	    TmpCaseManager103ResponseChild responseItem1 = new TmpCaseManager103ResponseChild("案件識別值1", true, false);
	    TmpCaseManager103ResponseChild responseItem2 = new TmpCaseManager103ResponseChild("案件識別值2", false, false);

	    response.getType1().add(responseItem1);
	    response.getType2().add(responseItem2);
	    
	    return response;
	}
	
	/**
	 * 104
	 */
	@Override
	public TmpCaseManager104Response caseManager104(TmpCaseManager104Request req) {
	    TmpCaseManager104Response response = new TmpCaseManager104Response();
	    TmpCaseManager104ResponseChild content = new TmpCaseManager104ResponseChild();
	    
	    // 處理page回傳
	    BasePageResponse page = BasePageResponse.builder()
	    		.key(req.getKey())
	    		.last(req.getLast())
	    		.first(req.getFirst())
	    		.build();
	    
	    response.setContent(new ArrayList<>());
	    response.getContent().add(content);
	    response.setPage(page);

	    return response;
	}
	
	/**
	 * 105
	 */
	@Override
	public TmpCaseManager105Response caseManager105(TmpCaseManager105Request req) {
		return new TmpCaseManager105Response();
	}
	
	/**
	 * 107
	 */
	@Override
	public TmpCaseManager107Response caseManager107(TmpCaseManager107Request req) {
		return new TmpCaseManager107Response();
	}
	
	/**
	 * 108
	 */
	@Override
	public TmpCaseManager108Response caseManager108(TmpCaseManager108Request req) {
		return new TmpCaseManager108Response();
	}

	/**
	 * 121
	 */
	@Override
	public List<TmpCaseManager121Response> caseManager121(TmpCaseManager121Request req) {
	    // 創建一個 TmpCaseManager121Response 對象
	    TmpCaseManager121Response response = new TmpCaseManager121Response();
	    // 使用 Arrays.asList 返回包含 response 的列表
	    return new ArrayList<>(Arrays.asList(response)); 	//可變列表
//	    return Arrays.asList(response);						//固定大小
	}
	
	/**
	 * 122
	 */
	@Override
    public void caseManager122(TmpCaseManager122Request request) {
        // 這裡可以實現您的業務邏輯，例如，檢查和確認調處情況。
        // 您可以使用request中的資料進行處理

        // 例如：
        Long status = request.getSignStatusCid();
        String memo = request.getSignMemo();
        List<String> caseIds = request.getCaseMediateContractTids();

        // 進一步的處理，例如更新數據庫等
    }
	
	/**
	 * 123
	 */
	@Override
    public void caseManager123(TmpCaseManager123Request request) {
        // 在此實現更新公文字號的邏輯
        // 您可以使用request中的資料進行處理

        // 例如：
        String caseMasterTid = request.getCaseMasterTid();

        // 您可以在此使用這些信息進行數據庫更新等操作
    }
	
	/**
	 * 124
	 */
	@Override
    public TmpCaseManager124Response caseManager124(String caseMasterTid) {
        // 建立示例預審建議和預審委員資訊
        Suggestion suggestionInfo = new Suggestion(/* 初始化參數 */);
        Examiner examiner = new Examiner(/* 初始化參數 */);
        
        suggestionInfo.setCaseMasterTid("2023777777");
        examiner.setCaseMasterTid("98877712345");
        // 建立中心所有者
        CenterOwner centerOwner = new CenterOwner();

        // 建立並返回response
        return TmpCaseManager124Response.builder()
                .suggestionInfo(suggestionInfo)
                .examiner(examiner)
                .centerOwner(centerOwner)
                .build();
    }

	/**
	 * 125
	 */
	@Override
	public void caseManager125(Examiner req) {
		// 預審資料判斷-新增/異動（外網）
	}
	
	/**
	 * 126
	 */
	@Override
	public void caseManager126(Examiner req) {
		// 預審資料判斷-確認送出（外網）
	}
}
