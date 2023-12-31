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
package me.zhengjie.modules.system.rest;

import cn.hutool.core.collection.CollectionUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.zhengjie.annotation.Log;
import me.zhengjie.modules.system.domain.Menu;
import me.zhengjie.exception.BadRequestException;
import me.zhengjie.exception.handler.SysErrLev;
import me.zhengjie.modules.system.service.MenuService;
import me.zhengjie.modules.system.service.dto.MenuDto;
import me.zhengjie.modules.system.service.dto.MenuQueryCriteria;
import me.zhengjie.modules.system.service.mapstruct.MenuMapper;
import me.zhengjie.utils.PageUtil;
import me.zhengjie.utils.SecurityUtils;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpServletResponse;

import java.util.*;
import java.util.stream.Collectors;

/**
 * @author Zheng Jie
 * @date 2018-12-03
 */

@RestController
@RequiredArgsConstructor
@Api(tags = "系統 : 目錄管理")
@RequestMapping("/api/menus")
public class MenuController {


    private final MenuService menuService;
    private final MenuMapper menuMapper;
    private static final String ENTITY_NAME = "menu";

    @ApiOperation("匯出目錄清單")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('menu:list')")
    public void exportMenu(HttpServletResponse response, MenuQueryCriteria criteria) throws Exception {
        menuService.download(menuService.queryAll(criteria, false), response);
    }

    @GetMapping(value = "/build")
    @ApiOperation("獲取前端所需目錄")
    public ResponseEntity<Object> buildMenus(){
        return new ResponseEntity<>(menuService.getUserMenus(SecurityUtils.getCurrentUserId()), HttpStatus.OK);
    }

    @ApiOperation("返回全部的目錄")
    @GetMapping(value = "/lazy")
    @PreAuthorize("@el.check('menu:list','roles:list')")
    public ResponseEntity<Object> queryAllMenu(@RequestParam Long pid){
        return new ResponseEntity<>(menuService.getMenus(pid),HttpStatus.OK);
    }

    @ApiOperation("根據目錄ID返回所有子節點ID，包含自身ID")
    @GetMapping(value = "/child")
    @PreAuthorize("@el.check('menu:list','roles:list')")
    public ResponseEntity<Object> childMenu(@RequestParam Long id){
        Set<Menu> menuSet = new HashSet<>();
        List<MenuDto> menuList = menuService.getMenus(id);
        menuSet.add(menuService.findOne(id));
        menuSet = menuService.getChildMenus(menuMapper.toEntity(menuList), menuSet);
        Set<Long> ids = menuSet.stream().map(Menu::getId).collect(Collectors.toSet());
        return new ResponseEntity<>(ids,HttpStatus.OK);
    }

    @GetMapping
    @ApiOperation("查詢目錄")
    @PreAuthorize("@el.check('menu:list')")
    public ResponseEntity<Object> queryMenu(MenuQueryCriteria criteria) throws Exception {
        List<MenuDto> menuDtoList = menuService.queryAll(criteria, true);
        return new ResponseEntity<>(PageUtil.toPage(menuDtoList, menuDtoList.size()),HttpStatus.OK);
    }

    @ApiOperation("查詢目錄:根據ID獲取同級與上級數據")
    @PostMapping("/superior")
    @PreAuthorize("@el.check('menu:list')")
    public ResponseEntity<Object> getMenuSuperior(@RequestBody List<Long> ids) {
        Set<MenuDto> menuDtos = new LinkedHashSet<>();
        if(CollectionUtil.isNotEmpty(ids)){
            for (Long id : ids) {
                MenuDto menuDto = menuService.findById(id);
                menuDtos.addAll(menuService.getSuperior(menuDto, new ArrayList<>()));
            }
            return new ResponseEntity<>(menuService.buildTree(menuDtos),HttpStatus.OK);
        }
        return new ResponseEntity<>(menuService.getMenus(null),HttpStatus.OK);
    }

    @Log("新增目錄")
    @ApiOperation("新增目錄")
    @PostMapping
    @PreAuthorize("@el.check('menu:add')")
    public ResponseEntity<Object> createMenu(@Validated @RequestBody Menu resources){
        if (resources.getId() != null) {
            throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "A new "+ ENTITY_NAME +" cannot already have an ID");
        }
        menuService.create(resources);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }

    @Log("修改目錄")
    @ApiOperation("修改目錄")
    @PutMapping
    @PreAuthorize("@el.check('menu:edit')")
    public ResponseEntity<Object> updateMenu(@Validated(Menu.Update.class) @RequestBody Menu resources){
        menuService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("刪除目錄")
    @ApiOperation("刪除目錄")
    @DeleteMapping
    @PreAuthorize("@el.check('menu:del')")
    public ResponseEntity<Object> deleteMenu(@RequestBody Set<Long> ids){
        Set<Menu> menuSet = new HashSet<>();
        for (Long id : ids) {
            List<MenuDto> menuList = menuService.getMenus(id);
            menuSet.add(menuService.findOne(id));
            menuSet = menuService.getChildMenus(menuMapper.toEntity(menuList), menuSet);
        }
        menuService.delete(menuSet);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
