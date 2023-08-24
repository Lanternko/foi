package me.zhengjie.modules.system.domain.vo;

import java.io.Serializable;

import org.springframework.security.core.Authentication;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class AuthInfoVo implements Serializable {

	private Authentication authentication;
	
	private String pwGenre;
	
}
