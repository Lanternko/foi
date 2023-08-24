package com.ezcore.foi.ecase.service;

import java.util.List;

import com.ezcore.foi.ecase.model.bo.casedatabo.Examiner;
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
import com.ezcore.foi.ecase.model.response.tmpcasemanager.TmpCaseManager104Response;
import com.ezcore.foi.ecase.model.response.tmpcasemanager.TmpCaseManager105Response;
import com.ezcore.foi.ecase.model.response.tmpcasemanager.TmpCaseManager107Response;
import com.ezcore.foi.ecase.model.response.tmpcasemanager.TmpCaseManager121Response;
import com.ezcore.foi.ecase.model.response.tmpcasemanager.TmpCaseManager124Response;

public interface TmpCaseManagerService {
    /**
     * 查詢案件進度(外網)
     */
    List<TmpCaseManager101Response> caseManager101(TmpCaseManager101Request req);
    
    /**
     * 查詢案件進度(外網)
     */
    List<TmpCaseManager102Response> caseManager102(TmpCaseManager102Request req);
    
    /**
     * 評議案件指派查詢
     */
    TmpCaseManager103Response caseManager103(TmpCaseManager103Request req);
    
    /**
     * 案件結案查詢
     */
    TmpCaseManager104Response caseManager104(TmpCaseManager104Request req);
    
    /**
     * 105
     */
    TmpCaseManager105Response caseManager105(TmpCaseManager105Request req);
    
    /**
     * 評議委員預審資料(外網)
     */
    TmpCaseManager107Response caseManager107(TmpCaseManager107Request req);
    
    /**
     * 案件移轉查詢
     */
    TmpCaseManager108Response caseManager108(TmpCaseManager108Request req);
    
    /**
     * 調處情形-查詢
     * @param req
     * @return List<TmpCaseManager121Response>
     */
    List<TmpCaseManager121Response> caseManager121(TmpCaseManager121Request req);
    
    /**
     * 調處情形-確認
     * @param request
     */
    void caseManager122(TmpCaseManager122Request request);
    
    /**
     * 評字第號更新
     */
    void caseManager123(TmpCaseManager123Request request);
    
    TmpCaseManager124Response caseManager124(String caseMasterTid);
    
    void caseManager125(Examiner req);

	/**
	 * 126
	 */
	void caseManager126(Examiner req);
}
