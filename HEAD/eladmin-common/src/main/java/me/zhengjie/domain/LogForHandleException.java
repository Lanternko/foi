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
package me.zhengjie.domain;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import org.hibernate.annotations.CreationTimestamp;
import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;

/**
 * @author Zheng Jie
 * @date 2018-11-24
 */
@Entity
@Getter
@Setter
@Table(name = "sys_log")
@NoArgsConstructor
public class LogForHandleException implements Serializable {

    @Id
    @Column(name = "log_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    /** 操作者帳號 */
    private String account;

    /** 說明 */
    private String description;

    /** 方法名 */
    private String method;

    /** 參數 */
    private String params;

    /** 日誌型別 */
    private String logType;

    /** 請求ip */
    private String requestIp;

    /** 瀏覽器  */
    private String browser;

    /** 請求耗時 */
    private Long time;

    /** 異常詳細  */
    private byte[] exceptionDetail;

    /** 建立日期 */
    @CreationTimestamp
    private Timestamp createTime;

    public LogForHandleException(String logType, Long time) {
        this.logType = logType;
        this.time = time;
    }
}
