package com.ezcore.foi.ecase.service.impl;

import org.springframework.stereotype.Service;

import com.ezcore.foi.ecase.model.request.TmpCaseAssign101Request;
import com.ezcore.foi.ecase.model.request.TmpCaseAssign102Request;
import com.ezcore.foi.ecase.service.TmpCaseAssignService;

@Service
public class TmpCaseAssignServiceImpl implements TmpCaseAssignService {
    @Override
    public void tmpCaseAssign101(TmpCaseAssign101Request request) {
        // 在此實現案件移轉的邏輯
    }
    
    @Override
    public void tmpCaseAssign102(TmpCaseAssign102Request request) {
        // 在此實現評議案件指派的邏輯
    }
}
