package com.ezcore.foi.ecase.model.request.caseeflow;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CaseMaintain01Request {
    private String caseMasterTid;
    private Boolean continueStatusCid;
    private String preCaseNo;
}
