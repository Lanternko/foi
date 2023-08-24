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

/**
 * 常用靜態常量
 *
 * @author Zheng Jie
 * @date 2018-12-26
 */
public class ElAdminConstant {

    /**
     * 用於IP定位轉換
     */
    public static final String REGION = "內網IP|內網IP";
    /**
     * win 系統
     */
    public static final String WIN = "win";

    /**
     * mac 系統
     */
    public static final String MAC = "mac";
    
    /**
     * 常用介面
     */
    public static class Url {
        // IP歸屬地查詢
        public static final String IP_URL = "http://whois.pconline.com.cn/ipJson.jsp?ip=%s&json=true";
    }
}
