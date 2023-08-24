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

import me.zhengjie.modules.security.service.dto.AuthorityDto;
import me.zhengjie.modules.system.domain.Role;
import me.zhengjie.modules.system.service.dto.RoleDto;
import me.zhengjie.modules.system.service.dto.RoleQueryCriteria;
import me.zhengjie.modules.system.service.dto.RoleSmallDto;
import me.zhengjie.modules.system.service.dto.UserDto;
import org.springframework.data.domain.Pageable;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Set;

/**
 * @author Zheng Jie
 * @date 2018-12-03
 */
public interface RoleService {

    /**
     * 查詢全部數據
     * @return /
     */
    List<RoleDto> queryAll();

    /**
     * 根據ID查詢
     * @param id /
     * @return /
     */
    RoleDto findById(long id);

    /**
     * 建立
     * @param resources /
     */
    void create(Role resources);

    /**
     * 編輯
     * @param resources /
     */
    void update(Role resources);

    /**
     * 刪除
     * @param ids /
     */
    void delete(Set<Long> ids);

    /**
     * 根據使用者ID查詢
     * @param id 使用者ID
     * @return /
     */
    List<RoleSmallDto> findByUsersId(Long id);

    /**
     * 根據角色查詢角色級別
     * @param roles /
     * @return /
     */
    Integer findByRoles(Set<Role> roles);

    /**
     * 修改繫結的菜單
     * @param resources /
     * @param roleDTO /
     */
    void updateMenu(Role resources, RoleDto roleDTO);

    /**
     * 解綁菜單
     * @param id /
     */
    void untiedMenu(Long id);

    /**
     * 待條件分頁查詢
     * @param criteria 條件
     * @param pageable 分頁參數
     * @return /
     */
    Object queryAll(RoleQueryCriteria criteria, Pageable pageable);

    /**
     * 查詢全部
     * @param criteria 條件
     * @return /
     */
    List<RoleDto> queryAll(RoleQueryCriteria criteria);

    /**
     * 導出數據
     * @param queryAll 待導出的數據
     * @param response /
     * @throws IOException /
     */
    void download(List<RoleDto> queryAll, HttpServletResponse response) throws IOException;

    /**
     * 獲取使用者許可權資訊
     * @param user 使用者資訊
     * @return 許可權資訊
     */
    List<AuthorityDto> mapToGrantedAuthorities(UserDto user);

    /**
     * 驗證是否被使用者關聯
     * @param ids /
     */
    void verification(Set<Long> ids);

    /**
     * 根據菜單Id查詢
     * @param menuIds /
     * @return /
     */
    List<Role> findInMenuId(List<Long> menuIds);
    
    Set<Role> getCurrentUserRoles();
}
