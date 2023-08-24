package me.zhengjie.modules.system.domain.vo;

import java.io.Serializable;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class PwExpiredVo implements Serializable {
	
	private Boolean expired = false;
	
	private String msg = "";
	
	public void setMsg(Integer diffDay) {
		this.msg = String.format("密碼已逾期%s天", diffDay);
	}
	
}
