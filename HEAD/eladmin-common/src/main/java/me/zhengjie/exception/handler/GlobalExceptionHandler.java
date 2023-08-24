/*
 *  Copyright 2019-2020 Zheng Jie
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */
package me.zhengjie.exception.handler;

import lombok.extern.slf4j.Slf4j;
import me.zhengjie.exception.BadRequestException;
import me.zhengjie.exception.EntityExistException;
import me.zhengjie.exception.EntityNotFoundException;
import me.zhengjie.repository.LogRepositoryForHandleException;
import me.zhengjie.utils.DateUtil;
import me.zhengjie.utils.RequestHolder;
import me.zhengjie.utils.SecurityUtils;
import me.zhengjie.utils.StringUtils;
import me.zhengjie.utils.ThrowableUtil;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import me.zhengjie.domain.LogForHandleException;
import me.zhengjie.exception.BadCredentialsException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.lang.reflect.Field;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;

/**
 * @author Zheng Jie
 * @date 2018-11-23
 */
@Slf4j
@RestControllerAdvice
public class GlobalExceptionHandler {

	@Autowired
	private LogRepositoryForHandleException logRepositoryForHandleException;

    /**
     * 以internal server error狀態處理系統未知例外<br/>
     * 回傳讓系統顯示簡易並可用來查程式的資訊，詳細stacktrace則寫入log內
     */
    @ExceptionHandler(Throwable.class)
    public ResponseEntity<ApiError> handleException(Throwable e){
    	String msg = "";
    	Integer code = null;
    	try {
    		Field codeField = e.getClass().getDeclaredField("code");
			Field msgField = e.getClass().getDeclaredField("msg");
			codeField.setAccessible(true);
			msgField.setAccessible(true);
			code = (Integer) codeField.get(e);
			msg = msgField.get(e).toString();
		} catch (NoSuchFieldException | IllegalArgumentException | IllegalAccessException e1) {
			code = SysErrLev.UNRECOGNIZED_ERROR;
			msg = e.toString();
		}
    	
//    	StackTraceElement[] ste = e.getStackTrace();
    	String message = "煩請協助通報系統管理人員";
//    	String message = String.format("系統內部錯誤，煩請協助截圖並通報系統管理人員<br/>%s<br/>%s<br/>%s<br/>%s", 
//    			msg, ste[0].getFileName().substring(0, ste[0].getFileName().lastIndexOf('.')), 
//    			ste[0].getLineNumber(), DateUtil.localDateTimeFormatyMdHms(DateUtil.toLocalDateTime(new Date())));
        log.error(ThrowableUtil.getStackTrace(e));
    	return new ResponseEntity<ApiError> (ApiError.builder()
    			.respTime(System.currentTimeMillis())
				.jobCode("")
				.respState(State.builder()
						.code(Integer.valueOf(code))
						.msgTitle("其他例外")
						.msgContent(message)
						.build())
				.build()
			, HttpStatus.INTERNAL_SERVER_ERROR);
    }
    
    /**
     * 處理api拒絕存取異常
     * 這個exception無法在aspect被抓到，因此只能在這裡寫入sys_log
     */
    @ExceptionHandler(org.springframework.security.access.AccessDeniedException.class)
    public ResponseEntity<ApiError> accessDeniedExceptionSpring(org.springframework.security.access.AccessDeniedException e){
    	HttpServletRequest request = RequestHolder.getHttpServletRequest();
    	StackTraceElement[] ste = e.getStackTrace();
    	LogForHandleException logForHandleException = new LogForHandleException();
    	logForHandleException.setLogType("ERROR_" + SysErrLev.FUNCTION_ACCESS_DENIED);
    	String method = "";
    	for (int i = 0 ; i < ste.length ; i ++) {
    		if ("sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)".equals(ste[i].toString())) {
    			method = ste[i - 1].toString().replace("<generated>", "");
    			break;
    		}
    	}
    	logForHandleException.setMethod(method);
    	logForHandleException.setDescription("(功能權限不足)");
    	logForHandleException.setParams("(無法取得)");
    	logForHandleException.setRequestIp(StringUtils.getIp(request));
    	logForHandleException.setTime(0L);
    	logForHandleException.setAccount(SecurityUtils.getCurrentUsername());
    	logForHandleException.setBrowser(StringUtils.getBrowser(request));
    	String message = String.format("主因: %s\n物件: %s\n方法: %s\n", 
    			e.toString(), method.substring(method.substring(0, method.indexOf("$$")).lastIndexOf('.') + 1, method.indexOf("$$")), 
    			method.substring(method.lastIndexOf('.') + 1));
    	logForHandleException.setExceptionDetail(message.getBytes());
    	logRepositoryForHandleException.save(logForHandleException);
    	log.error(e.getMessage());
    	return new ResponseEntity<ApiError> (ApiError.builder()
    			.respTime(System.currentTimeMillis())
				.jobCode("")
				.respState(State.builder()
						.code(SysErrLev.FUNCTION_ACCESS_DENIED)
						.msgTitle("功能權限異常")
						.msgContent(e.getMessage())
						.build())
				.build()
			, HttpStatus.FORBIDDEN);
    }

    /**
     * 處理所有登入階段異常<br/>
     * http status為400，不記錄詳細資訊
     */
    @ExceptionHandler(BadCredentialsException.class)
    public ResponseEntity<ApiError> badCredentialsException(BadCredentialsException e){
    	log.error(e.getMsg());
    	return new ResponseEntity<ApiError> (ApiError.builder()
    			.respTime(System.currentTimeMillis())
				.jobCode("")
				.respState(State.builder()
						.code(e.getCode())
						.msgTitle("登入階段異常")
						.msgContent(e.getMsg())
						.build())
				.build()
			, HttpStatus.BAD_REQUEST);
    }

    /**
     * 主動停止api執行<br/>
     * 與使用者端有關的大部分異常
     */
	@ExceptionHandler(BadRequestException.class)
	public ResponseEntity<ApiError> badRequestException(BadRequestException e) {
		log.error(e.getTitle());
		return new ResponseEntity<ApiError> (ApiError.builder()
				.respTime(System.currentTimeMillis())
				.jobCode(e.getControllerMethod())
				.respState(State.builder()
						.code(e.getCode())
						.type(e.getType())
						.msgTitle(e.getTitle())
						.msgContent(e.getContent())
						.build())
				.build()
			, HttpStatus.BAD_REQUEST);
	}

    /**
     * 處理 EntityExist
     */
    @ExceptionHandler(EntityExistException.class)
    public ResponseEntity<ApiError> entityExistException(EntityExistException e) {
        log.error(ThrowableUtil.getStackTrace(e));
		return new ResponseEntity<ApiError> (ApiError.builder()
				.jobCode("")
				.respTime(System.currentTimeMillis())
				.respState(State.builder()
						.code(Integer.valueOf(e.getLevel()))
						.type("")
						.msgTitle("")
						.msgContent(e.getMsg())
						.build())
				.build()
			, HttpStatus.BAD_REQUEST);
    }

    /**
     * 處理 EntityNotFound
     */
    @ExceptionHandler(value = EntityNotFoundException.class)
    public ResponseEntity<ApiError> entityNotFoundException(EntityNotFoundException e) {
        log.error(ThrowableUtil.getStackTrace(e));
		return new ResponseEntity<ApiError> (ApiError.builder()
				.jobCode("")
				.respTime(System.currentTimeMillis())
				.respState(State.builder()
						.code(Integer.valueOf(e.getLevel()))
						.type("")
						.msgTitle("")
						.msgContent(e.getMsg())
						.build())
				.build()
			, HttpStatus.BAD_REQUEST);
    }

//    /**
//     * 處理所有介面數據驗證異常
//     */
//    @ExceptionHandler(MethodArgumentNotValidException.class)
//    public ResponseEntity<ApiError> handleMethodArgumentNotValidException(MethodArgumentNotValidException e){
//        // 列印堆疊資訊
//        log.error(ThrowableUtil.getStackTrace(e));
//        String[] str = Objects.requireNonNull(e.getBindingResult().getAllErrors().get(0).getCodes())[1].split("\\.");
//        String message = e.getBindingResult().getAllErrors().get(0).getDefaultMessage();
//        String msg = "不能為空";
//        if(msg.equals(message)){
//            message = str[1] + ":" + message;
//        }
//        return buildResponseEntity(ApiError.error(message));
//    }
    
//    /**
//     * 統一返回
//     */
//    private ResponseEntity<ApiError> buildResponseEntity(ApiError apiError) {
//        return new ResponseEntity<>(apiError, HttpStatus.valueOf(400));
//    }
}
