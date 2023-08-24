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

import me.zhengjie.domain.LocalStorage;
import org.springframework.core.io.Resource;
import me.zhengjie.service.dto.LocalStorageDto;
import me.zhengjie.service.dto.LocalStorageQueryCriteria;
import org.springframework.data.domain.Pageable;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;
import java.util.List;

/**
* @author Zheng Jie
* @date 2019-09-05
*/
public interface LocalStorageService {

    /**
     * 分頁查詢
     * @param criteria 條件
     * @param pageable 分頁參數
     * @return /
     */
    Object queryAll(LocalStorageQueryCriteria criteria, Pageable pageable);

    /**
     * 查詢全部數據
     * @param criteria 條件
     * @return /
     */
    List<LocalStorageDto> queryAll(LocalStorageQueryCriteria criteria);

    /**
     * 根據ID查詢
     * @param id /
     * @return /
     */
    LocalStorageDto findById(Long id);

    /**
     * 上傳
     * @param name 檔名稱
     * @param file 檔案
     * @return
     */
    LocalStorage create(String name, MultipartFile file, String fromapi);

    /**
     * 編輯
     * @param resources 檔案資訊
     */
    void update(LocalStorage resources);

    /**
     * 多選刪除
     * @param ids /
     */
    void deleteAll(Long[] ids);

    /**
     * 匯出表單
     * @param localStorageDtos 待導出的數據
     * @param response /
     * @throws IOException /
     */
    void exportExcel(List<LocalStorageDto> localStorageDtos, HttpServletResponse response) throws IOException;
    
    /**
     * 使用guid查尋、取得檔案
     */
    File downloadFile(String fileGuid) throws IOException;
    
    
    /*
     * 
     */
    Resource load(String filename);
    
    LocalStorage findByUuid(String uuid);
}