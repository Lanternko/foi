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
package me.zhengjie.utils;

import cn.hutool.json.JSONArray;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import me.zhengjie.exception.BadCredentialsException;
import me.zhengjie.exception.handler.SysErrLev;
import me.zhengjie.utils.enums.DataScopeEnum;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import java.util.List;

/**
 * 獲取目前登入的使用者
 * @author Zheng Jie
 * @date 2019-01-17
 */
public class SecurityUtils {

    /**
     * 獲取目前登入的使用者
     * @return UserDetails
     */
    public static UserDetails getCurrentUser() {
        UserDetailsService userDetailsService = SpringContextHolder.getBean(UserDetailsService.class);
        return userDetailsService.loadUserByUsername(getCurrentUsername());
    }

    /**
     * 取得特定使用者
     * @return UserDetails
     */
    public static UserDetails getSpecificUser(String username) {
        UserDetailsService userDetailsService = SpringContextHolder.getBean(UserDetailsService.class);
        return userDetailsService.loadUserByUsername(username);
    }

    /**
     * 獲取系統使用者名稱
     *
     * @return 系統使用者名稱（登入者）
     */
    public static String getCurrentUsername() { 
        final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (authentication == null) {
            throw new BadCredentialsException(SysErrLev.TOKEN_EXPIRED, "目前登入狀態過期");
        }
        if (authentication.getPrincipal() instanceof UserDetails) {
            UserDetails userDetails = (UserDetails) authentication.getPrincipal();
            return userDetails.getUsername();
        }
        throw new BadCredentialsException(SysErrLev.TOKEN_EXPIRED, "找不到目前登入的資訊");
    }

    /**
     * 獲取系統使用者ID
     * @return 系統使用者ID
     */
    public static Long getCurrentUserId() {
        UserDetails userDetails = getCurrentUser();
        return new JSONObject(new JSONObject(userDetails).get("user")).get("id", Long.class);
    }

    /**
     * 獲取目前使用者的數據許可權
     * @return /
     */
    public static List<Long> getCurrentUserDataScope(){
        UserDetails userDetails = getCurrentUser();
        JSONArray array = JSONUtil.parseArray(new JSONObject(userDetails).get("dataScopes"));
        return JSONUtil.toList(array,Long.class);
    }
    
    /**
     * 取得特定使用者的數據許可權
     * @return /
     */
    public static List<Long> getSpecificUserDataScope(String username){
    	UserDetails userDetails = getSpecificUser(username);
    	JSONArray array = JSONUtil.parseArray(new JSONObject(userDetails).get("dataScopes"));
    	return JSONUtil.toList(array,Long.class);
    }

    /**
     * 獲取數據許可權級別
     * @return 級別
     */
    public static String getDataScopeType() {
        List<Long> dataScopes = getCurrentUserDataScope();
        if(dataScopes.size() != 0){
            return "";
        }
        return DataScopeEnum.ALL.getValue();
    }
}
