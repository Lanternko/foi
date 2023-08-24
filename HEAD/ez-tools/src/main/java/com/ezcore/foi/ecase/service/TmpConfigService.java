package com.ezcore.foi.ecase.service;

import java.util.List;

import com.ezcore.foi.ecase.model.bo.configbo.FeeConfig;

public interface TmpConfigService {
	
	List<FeeConfig> config101(String memberType);
	
    void config102(String memberType, List<FeeConfig> req);
}
