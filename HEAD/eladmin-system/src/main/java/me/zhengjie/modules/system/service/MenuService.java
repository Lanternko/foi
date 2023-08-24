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

import me.zhengjie.modules.system.domain.Menu;
import me.zhengjie.modules.system.service.dto.MenuDto;
import me.zhengjie.modules.system.service.dto.MenuQueryCriteria;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Set;

/**
 * @author Zheng Jie
 * @date 2018-12-17
 */
public interface MenuService {

    /**
     * 查詢全部數據
     * @param criteria 條件
     * @param isQuery /
     * @throws Exception /
     * @return /
     */
    List<MenuDto> queryAll(MenuQueryCriteria criteria, Boolean isQuery) throws Exception;

    /**
     * 根據ID查詢
     * @param id /
     * @return /
     */
    MenuDto findById(long id);

    /**
     * 建立
     * @param resources /
     */
    void create(Menu resources);

    /**
     * 編輯
     * @param resources /
     */
    void update(Menu resources);

    /**
     * 獲取所有子節點，包含自身ID
     * @param menuList /
     * @param menuSet /
     * @return /
     */
    Set<Menu> getChildMenus(List<Menu> menuList, Set<Menu> menuSet);

    /**
     * 取得登入者可用的功能選單(含代理對象)
     * @param id /
     * @return /
     */
    Object getUserMenus(Long id);
    
    /**
     * 構建菜單樹
     * @param menuDtos 原始數據
     * @return /
     */
    List<MenuDto> buildTree(Set<MenuDto> menuDtos);

    /**
     * 構建菜單樹
     * @param menuDtos /
     * @return /
     */
    Object buildMenus(List<MenuDto> menuDtos);

    /**
     * 根據ID查詢
     * @param id /
     * @return /
     */
    Menu findOne(Long id);

    /**
     * 刪除
     * @param menuSet /
     */
    void delete(Set<Menu> menuSet);

    /**
     * 導出
     * @param queryAll 待導出的數據
     * @param response /
     * @throws IOException /
     */
    void download(List<MenuDto> queryAll, HttpServletResponse response) throws IOException;

    /**
     * 懶載入菜單數據
     * @param pid /
     * @return /
     */
    List<MenuDto> getMenus(Long pid);

    /**
     * 根據ID獲取同級與上級數據
     * @param menuDto /
     * @param objects /
     * @return /
     */
    List<MenuDto> getSuperior(MenuDto menuDto, List<Menu> objects);

    /**
     * 根據目前使用者獲取菜單
     * @param currentUserId /
     * @return /
     */
    List<MenuDto> findByUser(Long currentUserId);
}
