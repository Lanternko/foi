package me.zhengjie.exception;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@EqualsAndHashCode(callSuper=false)
@Data
@NoArgsConstructor
@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
public class BadCredentialsException extends RuntimeException {

	private Integer code;
	private String msg;
	
	public BadCredentialsException(Integer code, String msg){
        this.code = code;
        this.msg = msg;
    }

}
