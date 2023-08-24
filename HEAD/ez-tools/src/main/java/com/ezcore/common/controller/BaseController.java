package com.ezcore.common.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import com.ezcore.common.model.BasePageResponse;
import com.ezcore.common.model.BaseResponse;
import com.ezcore.common.model.BaseStateResponse;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.common.CodeDetailMap;
import com.ezcore.tools.common.Constants;

import lombok.extern.slf4j.Slf4j;

//	統一回覆訊息
@Slf4j
public abstract class BaseController {
	
	private final Integer DEFAULT_CODE = 0;
	private final String DEFAULT_TITLE = "執行成功";
	
//	@Autowired
//	private CodedetailRepository codedetailRepository;
	@Autowired
	private CodeDetailMap codeDetailMap;
	
	// 無回傳物件、自動抓jobcode
	public ResponseEntity<Object> commonResponse() {
		return new ResponseEntity<>(BaseResponse.builder()
				.respTime(System.currentTimeMillis())
				.jobCode(getDefaultJobCode())
				.respState(BaseStateResponse.builder()
						.code(DEFAULT_CODE)
						.type("")
						.msgTitle(DEFAULT_TITLE)
						.msgContent("")
						.build())
				.build(),
				HttpStatus.OK);
	}
	
	// 無回傳物件、自訂jobcode
	public ResponseEntity<Object> commonResponse(String jobcode) {
		return new ResponseEntity<>(BaseResponse.builder()
				.respTime(System.currentTimeMillis())
				.jobCode(jobcode)
				.respState(BaseStateResponse.builder()
						.code(DEFAULT_CODE)
						.type("")
						.msgTitle(DEFAULT_TITLE)
						.msgContent("")
						.build())
				.build(),
				HttpStatus.OK);
	}
	
	// 無回傳物件、自訂jobcode、回傳code
	public ResponseEntity<Object> commonResponse(String jobcode, Integer code) {
		CodeDetailDto resCode = getResStateCode(code.toString());
		return new ResponseEntity<>(BaseResponse.builder()
				.respTime(System.currentTimeMillis())
				.jobCode(jobcode)
				.respState(BaseStateResponse.builder()
						.code(code)
						.type(resCode.getProperty1())
						.msgTitle(resCode.getProperty2())
						.msgContent(resCode.getProperty3())
						.build())
				.build(),
				HttpStatus.OK);
	}
	
	// 有回傳物件、自動抓jobcode
	public ResponseEntity<Object> commonResponse(Object rtn) {
		return new ResponseEntity<>(BaseResponse.builder()
				.respTime(System.currentTimeMillis())
				.jobCode(getDefaultJobCode())
				.respState(BaseStateResponse.builder()
						.code(DEFAULT_CODE)
						.type("")
						.msgTitle(DEFAULT_TITLE)
						.msgContent("")
						.build())
				.content(rtn)
				.build(),
				HttpStatus.OK);
	}
	
	// 有回傳物件、自訂jobcode
	public ResponseEntity<Object> commonResponse(Object rtn, String jobcode) {
		return new ResponseEntity<>(BaseResponse.builder()
				.respTime(System.currentTimeMillis())
				.jobCode(jobcode)
				.respState(BaseStateResponse.builder()
						.code(DEFAULT_CODE)
						.type("")
						.msgTitle(DEFAULT_TITLE)
						.msgContent("")
						.build())
				.content(rtn)
				.build(),
				HttpStatus.OK);
	}
	
	// 有回傳物件、自訂jobcode
	public ResponseEntity<Object> commonResponse(Object rtn, String jobcode, BasePageResponse page) {
		return new ResponseEntity<>(BaseResponse.builder()
				.respTime(System.currentTimeMillis())
				.jobCode(jobcode)
				.respState(BaseStateResponse.builder()
						.code(DEFAULT_CODE)
						.type("")
						.msgTitle(DEFAULT_TITLE)
						.msgContent("")
						.build())
				.page(page)
				.content(rtn)
				.build(),
				HttpStatus.OK);
	}
	
	// 有回傳物件、自訂jobcode、回傳code
	public ResponseEntity<Object> commonResponse(Object rtn, String jobcode, Integer code) {
		CodeDetailDto resCode = getResStateCode(code.toString());
		return new ResponseEntity<>(BaseResponse.builder()
				.respTime(System.currentTimeMillis())
				.jobCode(jobcode)
				.respState(BaseStateResponse.builder()
						.code(code)
						.type(resCode.getProperty1())
						.msgTitle(resCode.getProperty2())
						.msgContent(resCode.getProperty3())
						.build())
				.content(rtn)
				.build(),
				HttpStatus.OK);
	}
	
//	找同thread下第一個進入的方法
	private String getDefaultJobCode() {
  		StackTraceElement[] current = Thread.currentThread().getStackTrace();
		for (int i = 0 ; i < current.length ; i ++) {
			if (current[i].getMethodName().equals("invoke")) { 
				return checkMethodName(current, i - 1);
			}
		}
		return "";
    }
	
	private String checkMethodName(StackTraceElement[] current, int i) {
		while (current[i].getMethodName().equals("invoke0")) {
			i --;
		}
		return current[i].getMethodName();
	}
	
	private CodeDetailDto getResStateCode(String code) {
//		Codedetail resCode = codedetailRepository.findByKindAndCode(Constants.SYS_RES_STATE, code);
		if (code == null) {
			log.warn(String.format("代碼檔中未定義此代碼(code=%s)，回傳預設代碼(code=0)", code));
//			return codedetailRepository.findByKindAndCode(Constants.SYS_RES_STATE, DEFAULT_CODE.toString());
			return codeDetailMap.get(Constants.SYS_RES_STATE, DEFAULT_CODE.toString());
		}
		return codeDetailMap.get(Constants.SYS_RES_STATE, code);
	}
	
}
