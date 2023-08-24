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
package me.zhengjie.service.impl;

import cn.hutool.core.lang.Dict;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.domain.Log;
import me.zhengjie.repository.LogRepository;
import me.zhengjie.repository.UserDtoRepository;
import me.zhengjie.service.LogService;
import me.zhengjie.service.dto.LogQueryCriteria;
import me.zhengjie.service.mapstruct.LogSmallMapper;
import me.zhengjie.utils.*;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Method;
import java.lang.reflect.Parameter;
import java.util.*;

/**
 * @author Zheng Jie
 * @date 2018-11-24
 */
@Service
@RequiredArgsConstructor
public class LogServiceImpl implements LogService {
	
    private final LogRepository logRepository;
    private final LogSmallMapper logSmallMapper;
    private final UserDtoRepository userDtoRepository;

    @SuppressWarnings("serial")
	Set<String> errKeywords = new HashSet<String>() {{
		add("錯誤"); add("失敗"); add("error"); add("err"); add("fail"); add("wrong"); add("bad");
	}};
	@SuppressWarnings("serial")
	Set<String> successKeywords = new HashSet<String>() {{ 
		add("正確"); add("成功"); add("info"); add("success"); add("correct"); add("good"); add("ok");
	}};
    
    @Override
    public Object queryAll(LogQueryCriteria criteria, Pageable pageable) {  
        return logRepository.findAll(((root, criteriaQuery, cb) -> QueryHelp.getPredicateByUser(root, criteria, cb)), pageable);
    }

    @Override
    public List<Log> queryAll(LogQueryCriteria criteria) {
        return logRepository.findAll(((root, criteriaQuery, cb) -> QueryHelp.getPredicateByUser(root, criteria, cb)));
    }

    @Override
    public Object queryAllByUser(LogQueryCriteria criteria, Pageable pageable) {
        Page<Log> page = logRepository.findAll(((root, criteriaQuery, cb) -> QueryHelp.getPredicateByUser(root, criteria, cb)), pageable);
        return PageUtil.toPage(page.map(logSmallMapper::toDto));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void save(String account, String browser, String ip, ProceedingJoinPoint joinPoint, Log log) {
        if (log == null) {
            throw new IllegalArgumentException("Log 不能為 null!");
        }
        MethodSignature signature = (MethodSignature) joinPoint.getSignature();
        Method method = signature.getMethod();
        me.zhengjie.annotation.Log aopLog = method.getAnnotation(me.zhengjie.annotation.Log.class);

        // 方法路徑
        String methodName = joinPoint.getTarget().getClass().getName() + "." + signature.getName() + "()";

        // 說明
        log.setDescription(aopLog.value());
        
        log.setRequestIp(ip);
//        log.setAddress(StringUtils.getCityInfo(log.getRequestIp()));
        log.setMethod(methodName);
        log.setAccount(account);
        log.setParams(getParameter(method, joinPoint.getArgs()));
        // 記錄登錄使用者，隱藏密碼資訊
        if(signature.getName().equals("login") && StringUtils.isNotEmpty(log.getParams())){
            JSONObject obj = JSONUtil.parseObj(log.getParams());
            log.setAccount(obj.getStr("account", ""));
            log.setParams(JSONUtil.toJsonStr(Dict.create().set("account", log.getAccount())));
        }
        log.setBrowser(browser);
        logRepository.save(log);
    }

    /**
     * 根據方法和傳入的參數獲取請求參數
     */
    private String getParameter(Method method, Object[] args) {
        List<Object> argList = new ArrayList<>();
        Parameter[] parameters = method.getParameters();
        for (int i = 0; i < parameters.length; i++) {
            //將RequestBody註解修飾的參數作為請求參數
            RequestBody requestBody = parameters[i].getAnnotation(RequestBody.class);
            if (requestBody != null) {
                argList.add(args[i]);
            }
            //將RequestParam註解修飾的參數作為請求參數
            RequestParam requestParam = parameters[i].getAnnotation(RequestParam.class);
            if (requestParam != null) {
                Map<String, Object> map = new HashMap<>(2);
                String key = parameters[i].getName();
                if (!StringUtils.isEmpty(requestParam.value())) {
                    key = requestParam.value();
                }
                map.put(key, args[i]);
                argList.add(map);
            }
        }
        if (argList.isEmpty()) {
            return "";
        }
        return argList.size() == 1 ? JSONUtil.toJsonStr(argList.get(0)) : JSONUtil.toJsonStr(argList);
    }

    @Override
    public Object findByErrDetail(Long id) {
        Log log = logRepository.findById(id).orElseGet(Log::new);
        ValidationUtil.isNull(log.getId(), "Log", "id", id);
        byte[] details = log.getExceptionDetail();
        return Dict.create().set("exception", new String(ObjectUtil.isNotNull(details) ? details : "".getBytes()));
    }

    @Override
    public void download(List<Log> logs, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (Log log : logs) {
            Map<String, Object> map = new LinkedHashMap<>();
            map.put("使用者名稱", log.getAccount());
            map.put("管理者", log.getUserDto() == null ? "否" : log.getUserDto().getIsAdmin() ? "是" : "否");
            map.put("IP", log.getRequestIp());
            map.put("操作內容", log.getDescription());
            map.put("操作結果", "ERROR".equals(log.getLogType()) ? "失敗" : "成功");
            map.put("瀏覽器", log.getBrowser());
            map.put("請求耗時(毫秒)", log.getTime());
            map.put("異常詳情", new String(ObjectUtil.isNotNull(log.getExceptionDetail()) ? log.getExceptionDetail() : "".getBytes()));
            map.put("建立日期", log.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void delAllByError() {
        logRepository.deleteByLogType("ERROR");
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void delAllByInfo() {
        logRepository.deleteByLogType("INFO");
    }

    @Override
    public LogQueryCriteria processSearchKeywords(LogQueryCriteria criteria) {
    	if (criteria.getBlurry() == null) {
    		return criteria;
    	}
    	
    	String[] options = null;
    	if (criteria.getBlurry().indexOf(',') > -1) {
    		options = criteria.getBlurry().split(",");
    	} else {
    		options = new String[1];
    		options[0] = criteria.getBlurry();
    	}
    	
//    	從模糊搜索條件裡辨識出使用者名稱、執行結果
    	for (int i = 0 ; i < options.length ; i ++) {
    		String temp = options[i].trim();
    		if (userDtoRepository.isUser(temp) != null) {
    			criteria.setAccount(temp);
    		} else if (errKeywords.contains(temp.toLowerCase())) {
    			criteria.setLogType("ERROR");
    		} else if (successKeywords.contains(temp.toLowerCase())) {
    			criteria.setLogType("INFO");
    		} else {
    			continue;
    		}
    		options[i] = null;
    	}
    	
    	criteria.setBlurry(null);
    	for (String op : options) {
    		if (op != null) {
    			criteria.setBlurry(op);    			    				
    		}
    	}
    	return criteria;
    }
    
}
