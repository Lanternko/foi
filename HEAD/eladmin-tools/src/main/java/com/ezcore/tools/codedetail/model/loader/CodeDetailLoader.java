package com.ezcore.tools.codedetail.model.loader;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ezcore.tools.codedetail.dao.CodeDetailMapper;
import com.ezcore.tools.codedetail.po.CodeDetailExample;
import com.ezcore.tools.codedetail.service.impl.CodeDetailServiceImpl;

@Component
public class CodeDetailLoader {
	@Autowired
	private CodeDetailMapper codeDetailMapper;
	@PostConstruct
	public void load(){
		CodeDetailExample example = new CodeDetailExample();
		example.setOrderByClause("kind,sort_code");
		CodeDetailServiceImpl.reload( codeDetailMapper.selectByExample(example));
	}
	
	
}
