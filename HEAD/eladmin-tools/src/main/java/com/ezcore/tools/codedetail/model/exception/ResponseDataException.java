package com.ezcore.tools.codedetail.model.exception;

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
public class ResponseDataException extends Exception{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String jobCode;
	private int code;
	private String type;
	private String msgTitle;
	private String msgContent;
	
	public ResponseDataException(int code, String type, String msgTitle, String msgContent,String jobCode) {
		this.code = code;
		this.type = type;
		this.msgContent = msgContent;
		this.msgTitle = msgTitle;
		this.jobCode = jobCode;
	}
}
