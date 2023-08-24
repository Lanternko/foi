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
package me.zhengjie.modules.security.service;

import cn.hutool.core.util.RandomUtil;
import me.zhengjie.modules.security.config.bean.LoginProperties;
import me.zhengjie.modules.security.service.dto.JwtUserDto;
import me.zhengjie.utils.RedisUtils;
import me.zhengjie.utils.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;
import javax.annotation.Resource;

/**
 * @author Zheng Jie
 * @description 使用者快取管理
 * @date 2022-05-26
 **/
@Component
public class UserCacheManager {

    @Resource
    private RedisUtils redisUtils;
    @Value("${login.user-cache.idle-time}")
    private long idleTime;

    /**
     * 返回使用者快取
     * @param userName 使用者名稱
     * @return JwtUserDto
     */
    public JwtUserDto getUserCache(String userName) {
        if (StringUtils.isNotEmpty(userName)) {
            // 獲取數據
            Object obj = redisUtils.hget(LoginProperties.cacheKey, userName);
            if(obj != null){
                return (JwtUserDto)obj;
            }
        }
        return null;
    }

    /**
     *  新增快取到Redis
     * @param userName 使用者名稱
     */
    @Async
    public void addUserCache(String userName, JwtUserDto user) {
        if (StringUtils.isNotEmpty(userName)) {
            // 新增數據, 避免數據同時過期
            long time = idleTime + RandomUtil.randomInt(900, 1800);
            redisUtils.hset(LoginProperties.cacheKey, userName, user, time);
        }
    }

    /**
     * 清理使用者快取資訊
     * 使用者資訊變更時
     * @param userName 使用者名稱
     */
    @Async
    public void cleanUserCache(String userName) {
        if (StringUtils.isNotEmpty(userName)) {
            // 清除數據
            redisUtils.hdel(LoginProperties.cacheKey, userName);
        }
    }
}