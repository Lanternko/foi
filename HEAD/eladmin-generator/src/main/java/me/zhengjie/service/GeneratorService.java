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

import me.zhengjie.domain.GenConfig;
import me.zhengjie.domain.ColumnInfo;
import org.springframework.http.ResponseEntity;
import org.springframework.scheduling.annotation.Async;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @author Zheng Jie
 * @date 2019-01-02
 */
public interface GeneratorService {

    /**
     * 查詢數據庫後設資料
     * @param name 表名
     * @param startEnd 分頁參數
     * @return /
     */
    Object getTables(String name, int[] startEnd);

    /**
     * 得到數據表的後設資料
     * @param name 表名
     * @return /
     */
    List<ColumnInfo> getColumns(String name);

    /**
     * 同步表數據
     * @param columnInfos /
     * @param columnInfoList /
     */
    void sync(List<ColumnInfo> columnInfos, List<ColumnInfo> columnInfoList);

    /**
     * 保持數據
     * @param columnInfos /
     */
    void save(List<ColumnInfo> columnInfos);

    /**
     * 獲取所有table
     * @return /
     */
    Object getTables();

    /**
     * 程式碼產生
     * @param genConfig 配置資訊
     * @param columns 欄位資訊
     */
    void generator(GenConfig genConfig, List<ColumnInfo> columns);

    /**
     * 預覽
     * @param genConfig 配置資訊
     * @param columns 欄位資訊
     * @return /
     */
    ResponseEntity<Object> preview(GenConfig genConfig, List<ColumnInfo> columns);

    /**
     * 打包下載
     * @param genConfig 配置資訊
     * @param columns 欄位資訊
     * @param request /
     * @param response /
     */
    void download(GenConfig genConfig, List<ColumnInfo> columns, HttpServletResponse response);

    /**
     * 查詢數據庫的表字段數據數據
     * @param table /
     * @return /
     */
    List<ColumnInfo> query(String table);
}
