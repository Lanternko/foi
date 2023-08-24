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
package me.zhengjie.modules.system.service;

import me.zhengjie.modules.system.domain.Job;
import me.zhengjie.modules.system.service.dto.JobDto;
import me.zhengjie.modules.system.service.dto.JobQueryCriteria;
import org.springframework.data.domain.Pageable;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
* @author Zheng Jie
* @date 2019-03-29
*/
public interface JobService {

    /**
     * 根據ID查詢
     * @param id /
     * @return /
     */
    JobDto findById(Long id);

    /**
     * 建立
     * @param resources /
     * @return /
     */
    void create(Job resources);

    /**
     * 編輯
     * @param resources /
     */
    void update(Job resources);

    /**
     * 刪除
     * @param ids /
     */
    void delete(Set<Long> ids);

    /**
     * 分頁查詢
     * @param criteria 條件
     * @param pageable 分頁參數
     * @return /
     */
    Map<String,Object> queryAll(JobQueryCriteria criteria, Pageable pageable);

    /**
     * 查詢全部數據
     * @param criteria /
     * @return /
     */
    List<JobDto> queryAll(JobQueryCriteria criteria);

    /**
     * 導出數據
     * @param queryAll 待導出的數據
     * @param response /
     * @throws IOException /
     */
    void download(List<JobDto> queryAll, HttpServletResponse response) throws IOException;

    /**
     * 驗證是否被使用者關聯
     * @param ids /
     */
    void verification(Set<Long> ids);
}