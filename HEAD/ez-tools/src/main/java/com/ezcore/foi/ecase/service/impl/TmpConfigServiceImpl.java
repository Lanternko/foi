package com.ezcore.foi.ecase.service.impl;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Service;

import com.ezcore.foi.ecase.model.bo.configbo.FeeConfig;
import com.ezcore.foi.ecase.service.TmpConfigService;

@Service
public class TmpConfigServiceImpl implements TmpConfigService {

    @Override
    public List<FeeConfig> config101(String memberType) {
    	List<FeeConfig> res = Arrays.asList(new FeeConfig(1), new FeeConfig(2));
        return res; // 返回示例值，請根據您的需求進行修改
    }

    @Override
    public void config102(String memberType, List<FeeConfig> req) {
        
    }
}
