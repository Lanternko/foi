package com.ezcore.foi.ecase.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.foi.ecase.dao.CaseTelCheckRepository;
import com.ezcore.foi.ecase.dao.entity.CaseTelCheck;
import com.ezcore.foi.ecase.dao.entity.custom.CaseTelEflow2000BoDataProjection;
import com.ezcore.foi.ecase.model.bo.CaseTelEflow2000BoData;
import com.ezcore.foi.ecase.model.bo.CaseTelEflow2000BoList;
import com.ezcore.foi.ecase.model.bo.Eflow2000BoData;
import com.ezcore.foi.ecase.service.CaseTelService;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.common.CodeDetailMap;

import me.zhengjie.exception.BadRequestException;
import me.zhengjie.utils.DateUtil;
import me.zhengjie.utils.SecurityUtils;
import me.zhengjie.utils.StringUtils;

@Service
public class CaseTelServiceImpl implements CaseTelService {

	@Autowired
    private CaseTelCheckRepository caseTelRepository;
//	@Autowired
//    private CodedetailRepository codedetailRepository; 
	@Autowired
	private CodeDetailMap codeDetailMap;
    
    /*
     * TEL 01
     */
    @Override
    public List<CaseTelEflow2000BoList> getEflow2000Check(List<Eflow2000BoData> datas) {
        List<CaseTelEflow2000BoList> rtn = new ArrayList<>();
        for (Eflow2000BoData data : datas) {
        	CaseTelEflow2000BoList boList = new CaseTelEflow2000BoList();
        	boList.setCaseMasterTid(data.getCaseMasterTid());
        	
            List<CaseTelEflow2000BoDataProjection> projections = caseTelRepository.joinCaseTelCheckAndCodeDetailByCaseMasterTid(data.getCaseMasterTid());
            
            // If there's no data for a specific caseMasterId, create new entries.
            // TODO if caseTelDetails is null, we should build a data into casedetails according to the cuurentUserId, 
            // but I don't know how to fetch the ID
            List<CaseTelEflow2000BoData> boDatas = new ArrayList<>();
            if (projections == null || projections.isEmpty()) {
//                List<Codedetail> codeDetails = codedetailRepository.findByKindOrderBySortCodeAsc("eflow.2000.check");
            	List<CodeDetailDto> codeDetails = codeDetailMap.getAndOrderBySortCode("eflow.2000.check");
                for (CodeDetailDto codeDetail : codeDetails) {
                    CaseTelCheck newCaseTelCheck = new CaseTelCheck();
                    
                    newCaseTelCheck.setId(StringUtils.newUuidStr());  // Method to generate a new ID
                    newCaseTelCheck.setCaseMasterTid(data.getCaseMasterTid());
                    newCaseTelCheck.setEflow2000CheckCid(codeDetail.getCid()); // codedetail = long; telcheck = int
                    newCaseTelCheck.setValue(codeDetail.getProperty4());
                    newCaseTelCheck.setUpdateBy(SecurityUtils.getCurrentUsername()); // Method to get the current user ID
                    newCaseTelCheck.setUpdateTime(DateUtil.getSystemTime()); // Current date and time
                    
                    caseTelRepository.save(newCaseTelCheck);
                    
                    boDatas.add(new CaseTelEflow2000BoData(newCaseTelCheck, codeDetail)); // 在dto裡建構新資料
                }
            } else {
            	projections.forEach(p -> boDatas.add(new CaseTelEflow2000BoData(p.getCaseTelCheckTid(), p.getCode(), p.getX(), p.getY(),
            																			p.getStyle(), p.getText(), p.getValue())));
            }
            boList.setColumn(boDatas);
            
            rtn.add(boList);
        }

        return rtn;
    }
    
    /*
     * TEL 02
     */
    @Override
    public void updateEflow2000Check(String id, String value) {
        Optional<CaseTelCheck> optionalCaseTelCheck = caseTelRepository.findById(id);
        if (!optionalCaseTelCheck.isPresent()) {
            throw new BadRequestException("CaseTelCheck with id " + id + " not found");
        }
        int updatedRows = caseTelRepository.updateEflow2000Check(value, id);
        if (updatedRows == 0) {
            throw new BadRequestException("No CaseTelCheck was updated. CaseTelCheck with id " + id + " might not exist.");
        }
        
    }
//    @Override
//    public void updateEflow2000Check(String value, String id) {
//        try {
//            UUID.fromString(id);
//        } catch (IllegalArgumentException e) {
//        	throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Invalid id format: " + id);
//        }
//        
//        int updatedRows = caseTelRepository.updateEflow2000Check(value, id);
//        if (updatedRows == 0) {
//            throw new EntityNotFoundException("No CaseTelCheck was updated. CaseTelCheck with id " + id + " might not exist.");
//        }
//    }




}

