package com.ezcore.foi.ecase.worker;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
import com.ezcore.tools.common.CodeDetailMap;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;
//@Service
//public class ShowCodeBoService {
//    private final CodeDetailMap codeDetailMap;
//
//    @Autowired
//    public ShowCodeBoService(CodeDetailMap codeDetailMap) {
//        this.codeDetailMap = codeDetailMap;
//    }
//
//    public ShowCodeBo createShowCodeBo(Long cid) {
//        CodeDetailDto codedetail = codeDetailMap.get(cid);
//        return new ShowCodeBo(codedetail.getCid(), codedetail.getCode(), codedetail.getName());
//    }
//}
//
//public class ShowCodeBoService {
////	private final CodeDetailMap codeDetailMap;
//	
////	@Autowired
////	public ShowCodeBoService(CodeDetailMap codeDetailMap) {
////		this.codeDetailMap = codeDetailMap;
////	}
//	
//	public ShowCodeBo createShowCodeBo(Long cid) {
//		CodeDetailMap codeDetailMap = new CodeDetailMap();
//		CodeDetailDto codedetail = codeDetailMap.get(cid);
//		return new ShowCodeBo(codedetail.getCid(), codedetail.getCode(), codedetail.getName());
//	}
//}
