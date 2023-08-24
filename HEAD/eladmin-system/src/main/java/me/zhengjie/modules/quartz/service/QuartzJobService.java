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
package me.zhengjie.modules.quartz.service;

import me.zhengjie.modules.quartz.domain.QuartzJob;
import me.zhengjie.modules.quartz.domain.QuartzLog;
import me.zhengjie.modules.quartz.service.dto.JobQueryCriteria;
import org.springframework.data.domain.Pageable;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Set;

/**
 * @author Zheng Jie
 * @date 2019-01-07
 */
public interface QuartzJobService {

    /**
     * 分頁查詢
     * @param criteria 條件
     * @param pageable 分頁參數
     * @return /
     */
    Object queryAll(JobQueryCriteria criteria, Pageable pageable);

    /**
     * 查詢全部
     * @param criteria 條件
     * @return /
     */
    List<QuartzJob> queryAll(JobQueryCriteria criteria);

    /**
     * 分頁查詢日誌
     * @param criteria 條件
     * @param pageable 分頁參數
     * @return /
     */
    Object queryAllLog(JobQueryCriteria criteria, Pageable pageable);

    /**
     * 查詢全部
     * @param criteria 條件
     * @return /
     */
    List<QuartzLog> queryAllLog(JobQueryCriteria criteria);

    /**
     * 建立
     * @param resources /
     */
    void create(QuartzJob resources);

    /**
     * 編輯
     * @param resources /
     */
    void update(QuartzJob resources);

    /**
     * 刪除任務
     * @param ids /
     */
    void delete(Set<Long> ids);

    /**
     * 根據ID查詢
     * @param id ID
     * @return /
     */
    QuartzJob findById(Long id);

    /**
     * 更改定時任務狀態
     * @param quartzJob /
     */
    void updateIsPause(QuartzJob quartzJob);

    /**
     * 立即執行定時任務
     * @param quartzJob /
     */
    void execution(QuartzJob quartzJob);

    /**
     * 導出定時任務
     * @param queryAll 待導出的數據
     * @param response /
     * @throws IOException /
     */
    void download(List<QuartzJob> queryAll, HttpServletResponse response) throws IOException;

    /**
     * 導出定時任務日誌
     * @param queryAllLog 待導出的數據
     * @param response /
     * @throws IOException /
     */
    void downloadLog(List<QuartzLog> queryAllLog, HttpServletResponse response) throws IOException;

    /**
     * 執行子任務
     * @param tasks /
     * @throws InterruptedException /
     */
    void executionSubJob(String[] tasks) throws InterruptedException;
}
