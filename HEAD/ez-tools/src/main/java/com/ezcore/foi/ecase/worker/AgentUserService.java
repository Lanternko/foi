package com.ezcore.foi.ecase.worker;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.foi.ecase.dao.entity.CaseUserAgent;
import com.ezcore.foi.ecase.model.bo.casedatabo.AgentUser;

//@Service
//public class AgentUserService {
//
//    private final ShowCodeBoService showCodeBoService;
//
//    @Autowired
//    public AgentUserService(ShowCodeBoService showCodeBoService) {
//        this.showCodeBoService = showCodeBoService;
//    }
//
//    public void copyFromCaseUserAgent(AgentUser agentUser, CaseUserAgent caseUserAgent) {
//        agentUser.setAgentKind(showCodeBoService.createShowCodeBo(caseUserAgent.getAgentKindCid()));
//        agentUser.setAgentType(showCodeBoService.createShowCodeBo(caseUserAgent.getAgentTypeCid()));
//        agentUser.setOtherRemark(caseUserAgent.getOtherRemark());
//    }
//}
