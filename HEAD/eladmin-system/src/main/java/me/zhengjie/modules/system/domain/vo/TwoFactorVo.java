package me.zhengjie.modules.system.domain.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class TwoFactorVo {
	
	private String currentUser;
	
	private String verifyCode;
	
	private String newPass;
}
