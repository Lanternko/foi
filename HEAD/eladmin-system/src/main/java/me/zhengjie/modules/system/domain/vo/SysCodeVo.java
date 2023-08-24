package me.zhengjie.modules.system.domain.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class SysCodeVo {

	private String requestCode;
	
	private Boolean isEnabled;
	
	private String description;
	
	private String property1;
	
}
