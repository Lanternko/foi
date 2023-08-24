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
package me.zhengjie.modules.system.service.impl;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletResponse;

import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.util.ObjectUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.exception.BadRequestException;
import me.zhengjie.exception.EntityExistException;
import me.zhengjie.exception.handler.SysErrLev;
import me.zhengjie.modules.system.domain.Menu;
import me.zhengjie.modules.system.domain.Role;
import me.zhengjie.modules.system.domain.User;
import me.zhengjie.modules.system.domain.vo.MenuMetaVo;
import me.zhengjie.modules.system.domain.vo.MenuVo;
import me.zhengjie.modules.system.repository.MenuRepository;
import me.zhengjie.modules.system.repository.UserRepository;
import me.zhengjie.modules.system.service.MenuService;
import me.zhengjie.modules.system.service.RoleService;
import me.zhengjie.modules.system.service.SubstituteService;
import me.zhengjie.modules.system.service.dto.MenuDto;
import me.zhengjie.modules.system.service.dto.MenuQueryCriteria;
import me.zhengjie.modules.system.service.dto.RoleSmallDto;
import me.zhengjie.modules.system.service.mapstruct.MenuMapper;
import me.zhengjie.utils.CacheKey;
import me.zhengjie.utils.FileUtil;
import me.zhengjie.utils.QueryHelp;
import me.zhengjie.utils.RedisUtils;
import me.zhengjie.utils.StringUtils;
import me.zhengjie.utils.ValidationUtil;

/**
 * @author Zheng Jie
 */
@Service
@RequiredArgsConstructor
@CacheConfig(cacheNames = "menu")
public class MenuServiceImpl implements MenuService {

    private final SubstituteService substituteService;
    private final UserRepository userRepository;
    private final MenuRepository menuRepository;
    private final MenuMapper menuMapper;
    private final RoleService roleService;
    private final RedisUtils redisUtils;

    @Override
    public List<MenuDto> queryAll(MenuQueryCriteria criteria, Boolean isQuery) throws Exception {
        Sort sort = Sort.by(Sort.Direction.ASC, "menuSort");
        if (Boolean.TRUE.equals(isQuery)) {
            criteria.setPidIsNull(true);
            List<Field> fields = QueryHelp.getAllFields(criteria.getClass(), new ArrayList<>());
            for (Field field : fields) {
                // 設定對象的訪問許可權，保證對private的屬性的訪問
                field.setAccessible(true);
                Object val = field.get(criteria);
                if ("pidIsNull".equals(field.getName())) {
                    continue;
                }
                if (ObjectUtil.isNotNull(val)) {
                    criteria.setPidIsNull(null);
                    break;
                }
            }
        }
        return menuMapper.toDto(menuRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp
                .getPredicateByUserAndSubs(root, criteria, criteriaBuilder, substituteService.getSubsUserDatascope()),
                sort));
    }

    @Override
    @Cacheable(key = "'id:' + #p0")
    public MenuDto findById(long id) {
        Menu menu = menuRepository.findById(id).orElseGet(Menu::new);
        ValidationUtil.isNull(menu.getId(), "Menu", "id", id);
        return menuMapper.toDto(menu);
    }

    /**
     * 使用者角色改變時需清理快取
     * 
     * @param currentUserId /
     * @return /
     */
    @Override
    // @Cacheable(key = "'user:' + #p0")
    public List<MenuDto> findByUser(Long currentUserId) {
        List<RoleSmallDto> roles = roleService.findByUsersId(currentUserId);
        Set<Long> roleIds = roles.stream().map(RoleSmallDto::getId).collect(Collectors.toSet());
        LinkedHashSet<Menu> menus = menuRepository.findByRoleIdsAndTypeNot(roleIds, 2);
        return menus.stream().map(menuMapper::toDto).collect(Collectors.toList());
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void create(Menu resources) {
        // // 檢查是否有重複的標題
        // if (menuRepository.findByTitle(resources.getTitle()) != null) {
        //     throw new EntityExistException(Menu.class, "title", resources.getTitle());
        // }
        // // 檢查是否有重複的組件名稱
        // if (StringUtils.isNotBlank(resources.getComponentName())) {
        //     if (menuRepository.findByComponentName(resources.getComponentName()) != null) {
        //         throw new EntityExistException(Menu.class, "componentName", resources.getComponentName());
        //     }
        // }
        if (resources.getPid().equals(0L)) {
            resources.setPid(null);
        }
        if (resources.getIFrame()) {
            String http = "http://", https = "https://";
            if (!(resources.getPath().toLowerCase().startsWith(http)
                    || resources.getPath().toLowerCase().startsWith(https))) {
                throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "外鏈必須以http://或者https://開頭");
            }
        }
        menuRepository.save(resources);
        // 計運算元節點數目
        resources.setSubCount(0);
        // 更新父節點菜單數目
        updateSubCnt(resources.getPid());
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(Menu resources) {
        if (resources.getId().equals(resources.getPid())) {
            throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "上級不能為自己");
        }
        Menu menu = menuRepository.findById(resources.getId()).orElseGet(Menu::new);
        ValidationUtil.isNull(menu.getId(), "Permission", "id", resources.getId());

        if (resources.getIFrame()) {
            String http = "http://", https = "https://";
            if (!(resources.getPath().toLowerCase().startsWith(http)
                    || resources.getPath().toLowerCase().startsWith(https))) {
                throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "外鏈必須以http://或者https://開頭");
            }
        }
        // Menu menu1 = menuRepository.findByTitle(resources.getTitle());
        // 檢查是否有重複的標題
        // if(menu1 != null && !menu1.getId().equals(menu.getId())){
        // throw new EntityExistException(Menu.class,"title",resources.getTitle());
        // }

        if (resources.getPid().equals(0L)) {
            resources.setPid(null);
        }

        // 記錄的父節點ID
        Long oldPid = menu.getPid();
        Long newPid = resources.getPid();
        // 檢查是否有重複的組件名稱
        // Menu menu1;
        // if (StringUtils.isNotBlank(resources.getComponentName())) {
        //     menu1 = menuRepository.findByComponentName(resources.getComponentName());
        //     if (menu1 != null && !menu1.getId().equals(menu.getId())) {
        //         throw new EntityExistException(Menu.class, "componentName", resources.getComponentName());
        //     }
        // }
        menu.setTitle(resources.getTitle());
        menu.setComponent(resources.getComponent());
        menu.setPath(resources.getPath());
        menu.setIcon(resources.getIcon());
        menu.setIFrame(resources.getIFrame());
        menu.setPid(resources.getPid());
        menu.setMenuSort(resources.getMenuSort());
        menu.setCache(resources.getCache());
        menu.setHidden(resources.getHidden());
        menu.setComponentName(resources.getComponentName());
        menu.setPermission(resources.getPermission());
        menu.setType(resources.getType());
        menuRepository.save(menu);
        // 計算父級菜單節點數目
        updateSubCnt(oldPid);
        updateSubCnt(newPid);
        // 清理快取
        delCaches(resources.getId());
    }

    @Override
    public Set<Menu> getChildMenus(List<Menu> menuList, Set<Menu> menuSet) {
        for (Menu menu : menuList) {
            menuSet.add(menu);
            List<Menu> menus = menuRepository.findByPidOrderByMenuSort(menu.getId());
            if (menus != null && menus.size() != 0) {
                getChildMenus(menus, menuSet);
            }
        }
        return menuSet;
    }

    @Override
    public Object getUserMenus(Long id) {
        Set<MenuDto> menuDtoList = new LinkedHashSet<>();
        //// 登入者自己的功能選單
        // menuDtoList.addAll(findByUser(id));
        //// 代理對象的功能選單
        // for (Long subsUserId : substituteService.getSubsUserId()) {
        // menuDtoList.addAll(findByUser(subsUserId));
        // }

        Set<Long> ids = substituteService.getSubsUserId();
        if (ids.isEmpty()) {
            // 若無代理對象，加入自身可選的功能選單
            menuDtoList.addAll(findByUser(id));
        }

        for (Long subsUserId : ids) {
            menuDtoList.addAll(findByUser(subsUserId));
        }

        return buildMenus(buildTree(menuDtoList));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void delete(Set<Menu> menuSet) {
        for (Menu menu : menuSet) {
            // 清理快取
            delCaches(menu.getId());
            roleService.untiedMenu(menu.getId());
            menuRepository.deleteById(menu.getId());
            updateSubCnt(menu.getPid());
        }
    }

    @Override
    public List<MenuDto> getMenus(Long pid) {
        List<Menu> menus;
        if (pid != null && !pid.equals(0L)) {
            menus = menuRepository.findByPidOrderByMenuSort(pid);
        } else {
            menus = menuRepository.findByPidIsNullOrderByMenuSort();
        }
        return menuMapper.toDto(menus);
    }

    @Override
    public List<MenuDto> getSuperior(MenuDto menuDto, List<Menu> menus) {
        if (menuDto.getPid() == null) {
            menus.addAll(menuRepository.findByPidIsNullOrderByMenuSort());
            return menuMapper.toDto(menus);
        }
        menus.addAll(menuRepository.findByPidOrderByMenuSort(menuDto.getPid()));
        return getSuperior(findById(menuDto.getPid()), menus);
    }

    @Override
    public List<MenuDto> buildTree(Set<MenuDto> menuDtos) {
        Map<Long, MenuDto> map = new HashMap<>();
        menuDtos.forEach(menu -> map.put(menu.getId(), menu));

        // 先查主目錄節點
        Set<MenuDto> roots = menuDtos.stream().filter(menu -> menu.getPid() == null || !map.containsKey(menu.getPid()))
                .collect(Collectors.toSet());
        menuDtos.removeAll(roots);

        // 主目錄下去串子目錄
        for (MenuDto root : roots) {
            chain(root, menuDtos);
        }

        List<MenuDto> tree = new ArrayList<>(roots);
        sortByMenuSort(tree);

        return tree;
    }

    private void chain(MenuDto root, Set<MenuDto> menuDtos) {
        List<MenuDto> childs = menuDtos.stream().filter(c -> root.getId().equals(c.getPid()))
                .collect(Collectors.toList());
        if (childs.size() > 0) {
            // 有查到子目錄的情況下繼續往下查詢
            for (MenuDto child : childs) {
                chain(child, menuDtos);
            }
            sortByMenuSort(childs);
            root.setChildren(childs);
        }
    }

    // 依使用者自訂義menu sort來排序
    private void sortByMenuSort(List<MenuDto> list) {
        Collections.sort(list, new Comparator<MenuDto>() {
            @Override
            public int compare(MenuDto m1, MenuDto m2) {
                return Integer.valueOf(m1.getMenuSort()).compareTo(Integer.valueOf(m2.getMenuSort()));
            }
        });
    }

    @Override
    public List<MenuVo> buildMenus(List<MenuDto> menuDtos) {
        List<MenuVo> list = new LinkedList<>();
        menuDtos.forEach(menuDTO -> {
            if (menuDTO != null) {
                List<MenuDto> menuDtoList = menuDTO.getChildren();
                MenuVo menuVo = new MenuVo();
                menuVo.setName(ObjectUtil.isNotEmpty(menuDTO.getComponentName()) ? menuDTO.getComponentName()
                        : menuDTO.getTitle());
                // 一級目錄需要加斜槓，不然會報警告
                menuVo.setPath(menuDTO.getPid() == null ? "/" + menuDTO.getPath() : menuDTO.getPath());
                menuVo.setHidden(menuDTO.getHidden());
                // 如果不是外鏈
                if (!menuDTO.getIFrame()) {
                    if (menuDTO.getPid() == null) {
                        menuVo.setComponent(
                                StringUtils.isEmpty(menuDTO.getComponent()) ? "Layout" : menuDTO.getComponent());
                        // 如果不是一級菜單，並且菜單型別為目錄，則代表是多級菜單
                    } else if (menuDTO.getType() == 0) {
                        menuVo.setComponent(
                                StringUtils.isEmpty(menuDTO.getComponent()) ? "ParentView" : menuDTO.getComponent());
                    } else if (StringUtils.isNoneBlank(menuDTO.getComponent())) {
                        menuVo.setComponent(menuDTO.getComponent());
                    }
                }
                menuVo.setMeta(new MenuMetaVo(menuDTO.getTitle(), menuDTO.getIcon(), !menuDTO.getCache(),
                        menuDTO.getComponentName()));
                if (CollectionUtil.isNotEmpty(menuDtoList)) {
                    menuVo.setAlwaysShow(true);
                    menuVo.setRedirect("noredirect");
                    menuVo.setChildren(buildMenus(menuDtoList));
                    // 處理是一級菜單並且沒有子菜單的情況
                } else if (menuDTO.getPid() == null) {
                    MenuVo menuVo1 = new MenuVo();
                    menuVo1.setMeta(menuVo.getMeta());
                    // 非外鏈
                    if (!menuDTO.getIFrame()) {
                        menuVo1.setPath("index");
                        menuVo1.setName(menuVo.getName());
                        menuVo1.setComponent(menuVo.getComponent());
                    } else {
                        menuVo1.setPath(menuDTO.getPath());
                    }
                    menuVo.setName(null);
                    menuVo.setMeta(null);
                    menuVo.setComponent("Layout");
                    List<MenuVo> list1 = new ArrayList<>();
                    list1.add(menuVo1);
                    menuVo.setChildren(list1);
                }
                list.add(menuVo);
            }
        });
        return list;
    }

    @Override
    public Menu findOne(Long id) {
        Menu menu = menuRepository.findById(id).orElseGet(Menu::new);
        ValidationUtil.isNull(menu.getId(), "Menu", "id", id);
        return menu;
    }

    @Override
    public void download(List<MenuDto> menuDtos, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (MenuDto menuDTO : menuDtos) {
            Map<String, Object> map = new LinkedHashMap<>();
            map.put("選單標題", menuDTO.getTitle());
            map.put("類別", menuDTO.getType() == null ? "目錄" : menuDTO.getType() == 1 ? "選單" : "按鈕");
            map.put("權限標識", menuDTO.getPermission());
            map.put("外鏈", menuDTO.getIFrame() ? "是" : "否");
            map.put("可見", menuDTO.getHidden() ? "否" : "是");
            map.put("快取", menuDTO.getCache() ? "是" : "否");
            map.put("建立日期", menuDTO.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }

    private void updateSubCnt(Long menuId) {
        if (menuId != null) {
            int count = menuRepository.countByPid(menuId);
            menuRepository.updateSubCntById(count, menuId);
        }
    }

    /**
     * 清理快取
     * 
     * @param id 菜單ID
     */
    public void delCaches(Long id) {
        List<User> users = userRepository.findByMenuId(id);
        redisUtils.del(CacheKey.MENU_ID + id);
        redisUtils.delByKeys(CacheKey.MENU_USER, users.stream().map(User::getId).collect(Collectors.toSet()));
        // 清除 Role 快取
        @SuppressWarnings("serial")
        List<Role> roles = roleService.findInMenuId(new ArrayList<Long>() {
            {
                add(id);
            }
        });
        redisUtils.delByKeys(CacheKey.ROLE_ID, roles.stream().map(Role::getId).collect(Collectors.toSet()));
    }
}
