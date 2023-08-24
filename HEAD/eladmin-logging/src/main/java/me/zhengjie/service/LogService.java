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
package me.zhengjie.service;

import me.zhengjie.domain.Log;
import me.zhengjie.service.dto.LogQueryCriteria;
import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.data.domain.Pageable;
import org.springframework.scheduling.annotation.Async;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author Zheng Jie
 * @date 2018-11-24
 */
public interface LogService {

    /**
     * 分頁查詢
     * @param criteria 查詢條件
     * @param pageable 分頁參數
     * @return /
     */
    Object queryAll(LogQueryCriteria criteria, Pageable pageable);

    /**
     * 查詢全部數據
     * @param criteria 查詢條件
     * @return /
     */
    List<Log> queryAll(LogQueryCriteria criteria);

    /**
     * 查詢使用者日誌
     * @param criteria 查詢條件
     * @param pageable 分頁參數
     * @return -
     */
    Object queryAllByUser(LogQueryCriteria criteria, Pageable pageable);

    /**
     * 儲存日誌數據
     * @param account 帳號
     * @param browser 瀏覽器
     * @param ip 請求IP
     * @param joinPoint /
     * @param log 日誌實體
     */
    @Async
    void save(String account, String browser, String ip, ProceedingJoinPoint joinPoint, Log log);

    /**
     * 查詢異常詳情
     * @param id 日誌ID
     * @return Object
     */
    Object findByErrDetail(Long id);

    /**
     * 導出日誌
     * @param logs 待導出的數據
     * @param response /
     * @throws IOException /
     */
    void download(List<Log> logs, HttpServletResponse response) throws IOException;

    /**
     * 刪除所有錯誤日誌
     */
    void delAllByError();

    /**
     * 刪除所有INFO日誌
     */
    void delAllByInfo();
    
    /** 模糊搜索條件辨識，目前可辨識"使用者名稱"、"執行結果"
     * @param LogQueryCriteria
     * @return LogQueryCriteria
     */
    LogQueryCriteria processSearchKeywords(LogQueryCriteria criteria);
}
