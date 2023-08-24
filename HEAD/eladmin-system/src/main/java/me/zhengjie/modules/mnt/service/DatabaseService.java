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

import me.zhengjie.modules.mnt.domain.Database;
import me.zhengjie.modules.mnt.service.dto.DatabaseDto;
import me.zhengjie.modules.mnt.service.dto.DatabaseQueryCriteria;
import org.springframework.data.domain.Pageable;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Set;

/**
 * @author ZhangHouYing
 * @date 2019-08-24
 */
public interface DatabaseService {

    /**
     * 分頁查詢
     * @param criteria 條件
     * @param pageable 分頁參數
     * @return /
     */
    Object queryAll(DatabaseQueryCriteria criteria, Pageable pageable);

    /**
     * 查詢全部
     * @param criteria 條件
     * @return /
     */
    List<DatabaseDto> queryAll(DatabaseQueryCriteria criteria);

    /**
     * 根據ID查詢
     * @param id /
     * @return /
     */
    DatabaseDto findById(String id);

    /**
     * 建立
     * @param resources /
     */
    void create(Database resources);

    /**
     * 編輯
     * @param resources /
     */
    void update(Database resources);

    /**
     * 刪除
     * @param ids /
     */
    void delete(Set<String> ids);

	/**
	 * 測試連線數據庫
	 * @param resources /
	 * @return /
	 */
	boolean testConnection(Database resources);

    /**
     * 導出數據
     * @param queryAll /
     * @param response /
     * @throws IOException e
     */
    void download(List<DatabaseDto> queryAll, HttpServletResponse response) throws IOException;
}
