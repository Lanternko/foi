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
package me.zhengjie.modules.mnt.service;

import me.zhengjie.modules.mnt.domain.App;
import me.zhengjie.modules.mnt.service.dto.AppDto;
import me.zhengjie.modules.mnt.service.dto.AppQueryCriteria;
import org.springframework.data.domain.Pageable;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Set;

/**
* @author zhanghouying
* @date 2019-08-24
*/
public interface AppService {

    /**
     * 分頁查詢
     * @param criteria 條件
     * @param pageable 分頁參數
     * @return /
     */
    Object queryAll(AppQueryCriteria criteria, Pageable pageable);

    /**
     * 查詢全部數據
     * @param criteria 條件
     * @return /
     */
    List<AppDto> queryAll(AppQueryCriteria criteria);

    /**
     * 根據ID查詢
     * @param id /
     * @return /
     */
    AppDto findById(Long id);

    /**
     * 建立
     * @param resources /
     */
    void create(App resources);

    /**
     * 編輯
     * @param resources /
     */
    void update(App resources);

    /**
     * 刪除
     * @param ids /
     */
    void delete(Set<Long> ids);

    /**
     * 導出數據
     * @param queryAll /
     * @param response /
     * @throws IOException /
     */
    void download(List<AppDto> queryAll, HttpServletResponse response) throws IOException;
}
