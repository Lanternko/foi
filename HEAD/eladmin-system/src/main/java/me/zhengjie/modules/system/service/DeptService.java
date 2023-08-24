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

import me.zhengjie.modules.system.domain.Dept;
import me.zhengjie.modules.system.service.dto.DeptDto;
import me.zhengjie.modules.system.service.dto.DeptQueryCriteria;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Set;

/**
* @author Zheng Jie
* @date 2019-03-25
*/
public interface DeptService {

    /**
     * 查詢所有數據
     * @param criteria 條件
     * @param isQuery /
     * @throws Exception /
     * @return /
     */
    List<DeptDto> queryAll(DeptQueryCriteria criteria, Boolean isQuery) throws Exception;

    /**
     * 根據ID查詢
     * @param id /
     * @return /
     */
    DeptDto findById(Long id);

    /**
     * 建立
     * @param resources /
     */
    void create(Dept resources);

    /**
     * 編輯
     * @param resources /
     */
    void update(Dept resources);

    /**
     * 刪除
     * @param deptDtos /
     *
     */
    void delete(Set<DeptDto> deptDtos);

    /**
     * 根據PID查詢
     * @param pid /
     * @return /
     */
    List<Dept> findByPid(long pid);

    /**
     * 根據角色ID查詢
     * @param id /
     * @return /
     */
    Set<Dept> findByRoleId(Long id);

    /**
     * 導出數據
     * @param queryAll 待導出的數據
     * @param response /
     * @throws IOException /
     */
    void download(List<DeptDto> queryAll, HttpServletResponse response) throws IOException;

    /**
     * 獲取待刪除的部門
     * @param deptList /
     * @param deptDtos /
     * @return /
     */
    Set<DeptDto> getDeleteDepts(List<Dept> deptList, Set<DeptDto> deptDtos);

    /**
     * 根據ID獲取同級與上級數據
     * @param deptDto /
     * @param depts /
     * @return /
     */
    List<DeptDto> getSuperior(DeptDto deptDto, List<Dept> depts);

    /**
     * 構建樹形數據
     * @param deptDtos /
     * @return /
     */
    Object buildTree(List<DeptDto> deptDtos);

    /**
     * 獲取
     * @param deptList
     * @return
     */
    List<Long> getDeptChildren(List<Dept> deptList);

    /**
     * 驗證是否被角色或使用者關聯
     * @param deptDtos /
     */
    void verification(Set<DeptDto> deptDtos);
}