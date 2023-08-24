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

import me.zhengjie.modules.mnt.domain.Deploy;
import me.zhengjie.modules.mnt.domain.DeployHistory;
import me.zhengjie.modules.mnt.service.dto.DeployDto;
import me.zhengjie.modules.mnt.service.dto.DeployQueryCriteria;
import org.springframework.data.domain.Pageable;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Set;

/**
* @author zhanghouying
* @date 2019-08-24
*/
public interface DeployService {

    /**
     * 分頁查詢
     * @param criteria 條件
     * @param pageable 分頁參數
     * @return /
     */
    Object queryAll(DeployQueryCriteria criteria, Pageable pageable);

    /**
     * 查詢全部數據
     * @param criteria 條件
     * @return /
     */
    List<DeployDto> queryAll(DeployQueryCriteria criteria);

    /**
     * 根據ID查詢
     * @param id /
     * @return /
     */
    DeployDto findById(Long id);

    /**
     * 建立
     * @param resources /
     */
    void create(Deploy resources);


    /**
     * 編輯
     * @param resources /
     */
    void update(Deploy resources);

    /**
     * 刪除
     * @param ids /
     */
    void delete(Set<Long> ids);

	/**
	 * 部署檔案到伺服器
	 * @param fileSavePath 檔案路徑
	 * @param appId 應用ID
     */
	void deploy(String fileSavePath, Long appId);

    /**
     * 查詢部署狀態
     * @param resources /
     * @return /
     */
    String serverStatus(Deploy resources);
    /**
     * 啟動服務
     * @param resources /
     * @return /
     */
    String startServer(Deploy resources);
    /**
     * 停止服務
     * @param resources /
     * @return /
     */
    String stopServer(Deploy resources);

    /**
     * 停止服務
     * @param resources /
     * @return /
     */
    String serverReduction(DeployHistory resources);

    /**
     * 導出數據
     * @param queryAll /
     * @param response /
     * @throws IOException /
     */
    void download(List<DeployDto> queryAll, HttpServletResponse response) throws IOException;
}
