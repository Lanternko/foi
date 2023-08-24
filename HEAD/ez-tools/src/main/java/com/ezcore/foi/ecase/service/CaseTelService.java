package com.ezcore.foi.ecase.service;

import java.util.List;
import java.util.UUID;

import com.ezcore.foi.ecase.dao.dto.CaseTelDetailDTO;
import com.ezcore.foi.ecase.model.bo.CaseTelEflow2000BoList;
import com.ezcore.foi.ecase.model.bo.Eflow2000BoData;
import com.ezcore.foi.ecase.model.request.CaseTel01Request;


public interface CaseTelService {
	/*
	 * Case Tel 01
	 */
    List<CaseTelEflow2000BoList> getEflow2000Check(List<Eflow2000BoData> datas);
    
    /*
     * Case Tel 02
     */
    void updateEflow2000Check(String value, String id);
}
