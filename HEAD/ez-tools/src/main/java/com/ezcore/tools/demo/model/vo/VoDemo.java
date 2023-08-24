package com.ezcore.tools.demo.model.vo;

import java.io.Serializable;

import com.ezcore.tools.common.Constants;
import com.ezcore.tools.demo.dao.entity.Demo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class VoDemo implements Serializable {

	private String tool;
	private String tech;
	private String desc;
	private boolean createdByAdmin;
	private int level;
	
	public VoDemo(Demo vo) {
		this.tool = vo.getDemoMsga();
		this.tech = vo.getDemoMsgb();
		this.desc = vo.getDemoMsgc();
		
		if ("admin".equals(vo.getCreateBy())) {
			this.createdByAdmin = true;
			this.level = 99;
		} else {
			this.createdByAdmin = false;
			this.level = 24;
		}
	}
	
	public String getCombinedMsg() {
		return String.format(Constants.MSG_PATTERN, tool, tech, desc, createdByAdmin == true ? Constants.Y_CHT : Constants.N_CHT);
	}
}
