package com.ezcore.foi.ecase.service.impl;

import java.sql.Timestamp;
import java.util.Optional;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.crossstore.ChangeSetPersister.NotFoundException;
import org.springframework.stereotype.Service;

import com.ezcore.foi.ecase.dao.CaseMaintainLogRepository;
import com.ezcore.foi.ecase.dao.CaseMasterRepository;
import com.ezcore.foi.ecase.dao.entity.CaseMaster;
import com.ezcore.foi.ecase.service.CaseMaintainService;
import com.ezcore.foi.ecase.dao.entity.CaseMaintainLog;
import com.ezcore.foi.ecase.model.request.caseeflow.CaseMaintain01Request;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class CaseMaintainServiceImpl implements CaseMaintainService{
//    @Autowired
//    private CaseMasterRepository caseMasterRepository;
//
//    @Autowired
//    private CaseMaintainLogRepository caseMaintainLogRepository;

    public void maintainCase(CaseMaintain01Request req, String username) {
//        Optional<CaseMaster> caseOpt = caseMasterRepository.findById(req.getCaseMasterTid());
//        if (!caseOpt.isPresent()) {
//            throw new NotFoundException("Case not found");
//        }
//        CaseMaster caseMaster = caseOpt.get();
//        caseMaster.setContinueStatusCid(req.getContinueStatusCid());
//        caseMaster.setPreCaseNo(req.getPreCaseNo());
//        caseMasterRepository.save(caseMaster);
//
//        CaseMaintainLog log = new CaseMaintainLog();
//        log.setId(UUID.randomUUID().toString());
//        log.setCaseMasterTid(req.getCaseMasterTid());
//        log.setCaseLogTypeCid(fnGetCodeCid("case_log_type", "continue_status"));
//        log.setJobCode("CaseMaintain01");
//        log.setCombineValues(req.getContinueStatusCid() + "\t" + req.getPreCaseNo());
//        log.setCreateBy(username);
//        log.setCreateTime(new Timestamp(System.currentTimeMillis()));
//        caseMaintainLogRepository.save(log);
    }

    private Long fnGetCodeCid(String type, String code) {
        // Placeholder for function dbo.fnGetCodeCid() that gets code CID from DB
        // Add the implementation for this function
        return 0L;
    }
}