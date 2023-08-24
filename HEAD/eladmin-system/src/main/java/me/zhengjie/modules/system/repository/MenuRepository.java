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
package me.zhengjie.modules.system.repository;

import me.zhengjie.modules.system.domain.Menu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/**
 * @author Zheng Jie
 * @date 2018-12-17
 */
public interface MenuRepository extends JpaRepository<Menu, Long>, JpaSpecificationExecutor<Menu> {

    /**
     * 根據選單標題查詢
     * @param title 選單標題
     * @return /
     */
    Menu findByTitle(String title);

    /**
     * 根據元件名稱查詢
     * @param name 元件名稱
     * @return /
     */
    Menu findByComponentName(String name);

    /**
     * 根據菜單的 PID 查詢
     * @param pid /
     * @return /
     */
    List<Menu> findByPidOrderByMenuSort(long pid);

    /**
     * 查詢頂級選單
     * @return /
     */
    List<Menu> findByPidIsNullOrderByMenuSort();

    /**
     * 根據角色ID與選單型別查詢選單
     * @param roleIds roleIDs
     * @param type 型別
     * @return /
     */
    @Query(value = "SELECT m.* FROM sys_menu m, sys_roles_menus r WHERE " +
            "m.menu_id = r.menu_id AND r.role_id IN ?1 AND type != ?2 order by m.menu_sort asc",nativeQuery = true)
    LinkedHashSet<Menu> findByRoleIdsAndTypeNot(Set<Long> roleIds, int type);

    /**
     * 獲取節點數量
     * @param id /
     * @return /
     */
    int countByPid(Long id);

    /**
     * 更新節點數目
     * @param count /
     * @param menuId /
     */
    @Modifying
    @Query(value = " update sys_menu set sub_count = ?1 where menu_id = ?2 ",nativeQuery = true)
    void updateSubCntById(int count, Long menuId);
}
