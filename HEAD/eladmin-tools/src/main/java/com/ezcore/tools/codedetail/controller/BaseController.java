package com.ezcore.tools.codedetail.controller;

import org.springframework.http.HttpStatus;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.ezcore.tools.codedetail.model.exception.ResponseDataException;
import com.ezcore.tools.codedetail.model.response.BaseStateResponse;
import com.ezcore.tools.codedetail.model.response.CommResponse;

public abstract class BaseController {
	@ResponseStatus(code = HttpStatus.BAD_REQUEST)
    @ExceptionHandler(MethodArgumentNotValidException.class)
	public CommResponse handleValidationException(MethodArgumentNotValidException ex) {
        StringBuffer msgBuffer = new StringBuffer();
        ex.getBindingResult().getAllErrors().forEach((error)->{
        String fieldName = ((FieldError) error).getField();
        String errorMessage = error.getDefaultMessage();
        msgBuffer.append(String.format("%s: %s; ", fieldName, errorMessage));
        });
    	
        return CommResponse.builder()
        		.respTime(System.currentTimeMillis())
        		.jobCode("")
        		.respState(BaseStateResponse.builder()
        				.code(-1)
        				.type("")
        				.msgTitle("驗證錯誤")
        				.msgContent(msgBuffer.toString())
        				.build())
        		.build();
	}
	@ExceptionHandler(ResponseDataException.class)
	public CommResponse handleResponseDataException(ResponseDataException ex) {
		return CommResponse.builder()
				.jobCode(ex.getJobCode())
				.respTime(System.currentTimeMillis())
				.respState(BaseStateResponse.builder()
						.code(ex.getCode())
						.type(ex.getType())
						.msgTitle(ex.getMsgTitle())
						.msgContent(ex.getMsgContent())
						.build())
				.build();
	}	
	
	
	@ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
    @ExceptionHandler(Exception.class)
    public CommResponse handleExceptions(Exception ex) {

        return CommResponse.builder()
                .respTime(System.currentTimeMillis())
				.jobCode("")
                .respState(BaseStateResponse.builder()
                        .code(-2)
                        .type("")
                        .msgTitle("Internal Server Error")
                        .msgContent(ex.getMessage()).build())
                .build();
    }
}
