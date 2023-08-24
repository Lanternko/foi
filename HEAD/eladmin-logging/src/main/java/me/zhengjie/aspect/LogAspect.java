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
package me.zhengjie.aspect;

import lombok.extern.slf4j.Slf4j;
import me.zhengjie.domain.Log;
import me.zhengjie.exception.handler.SysErrLev;
import me.zhengjie.service.LogService;
import me.zhengjie.utils.RequestHolder;
import me.zhengjie.utils.SecurityUtils;
import me.zhengjie.utils.StringUtils;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import java.lang.reflect.Field;

import javax.servlet.http.HttpServletRequest;

/**
 * @author Zheng Jie
 * @date 2018-11-24
 */
@Component
@Aspect
@Slf4j
public class LogAspect {

    private final LogService logService;

    ThreadLocal<Long> currentTime = new ThreadLocal<>();

    public LogAspect(LogService logService) {
        this.logService = logService;
    }

    /**
     * 配置切入點
     */
    @Pointcut("@annotation(me.zhengjie.annotation.Log)")
    public void logPointcut() {
        // 該方法無方法體,主要爲了讓同類中其他方法使用此切入點
    }

    /**
     * 配置環繞通知,使用在方法logPointcut()上註冊的切入點
     *
     * @param joinPoint join point for advice
     */
    @Around("logPointcut()")
    public Object logAround(ProceedingJoinPoint joinPoint) throws Throwable {
        Object result;
        currentTime.set(System.currentTimeMillis());
        result = joinPoint.proceed();
        Log log = new Log("INFO",System.currentTimeMillis() - currentTime.get());
        currentTime.remove();
        HttpServletRequest request = RequestHolder.getHttpServletRequest();
        logService.save(getUsername(), StringUtils.getBrowser(request), StringUtils.getIp(request),joinPoint, log);
        return result;
    }

    /**
     * 配置異常通知
     *
     * @param joinPoint join point for advice
     * @param e exception
     */
    @AfterThrowing(pointcut = "logPointcut()", throwing = "e")
    public void logAfterThrowing(JoinPoint joinPoint, Throwable e) {
    	String msg = e.toString();
    	msg = msg.indexOf("(code=") > -1 ? msg.substring(0, msg.indexOf("(code=")) + 
    			": " + msg.substring(msg.indexOf("msg=") + 4, msg.length() - 1) : e.getMessage();
    	Integer code = null;
    	try {
    		Field lvlField = e.getClass().getDeclaredField("level");
			lvlField.setAccessible(true);
			code = (Integer) lvlField.get(e);
		} catch (NoSuchFieldException | IllegalArgumentException | IllegalAccessException e1) {
			code = SysErrLev.UNRECOGNIZED_ERROR;
		}

        Log log = new Log("ERROR_" + code, System.currentTimeMillis() - currentTime.get());
        currentTime.remove();
        StackTraceElement[] ste = e.getStackTrace();
    	String message = String.format("主因: %s\n物件: %s\n位置: %s", 
    			msg, ste[0].getFileName().substring(0, ste[0].getFileName().lastIndexOf('.')), 
    			ste[0].getLineNumber());
        log.setExceptionDetail(message.getBytes());
        HttpServletRequest request = RequestHolder.getHttpServletRequest();
        logService.save(getUsername(), StringUtils.getBrowser(request), StringUtils.getIp(request), (ProceedingJoinPoint)joinPoint, log);
    }

    public String getUsername() {
        try {
            return SecurityUtils.getCurrentUsername();
        }catch (Exception e){
            return "";
        }
    }
}
