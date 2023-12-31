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
package me.zhengjie.modules.security.service.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import java.util.Date;

/**
 * 線上使用者
 * @author Zheng Jie
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class OnlineUserDto {

    /**
     * 使用者名稱
     */
    private String account;

    /**
     * 昵稱
     */
    private String name;

    /**
     * 組織/單位
     */
    private String dept;

    /**
     * 瀏覽器
     */
    private String browser;

    /**
     * IP
     */
    private String ip;

    /**
     * 地址
     */
    private String address;

    /**
     * token
     */
    private String key;

    /**
     * 登錄時間
     */
    private Date loginTime;


}
