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

import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletResponse;

import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.util.CollectionUtils;
import org.springframework.util.ObjectUtils;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.ezcore.tools.common.CodeDetailMap;
import com.ezcore.tools.common.Constants;
import com.ezcore.tools.common.RandomString;

import cn.hutool.core.collection.CollectionUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import me.zhengjie.annotation.Log;
import me.zhengjie.config.RsaProperties;
import me.zhengjie.exception.BadCredentialsException;
import me.zhengjie.exception.BadRequestException;
import me.zhengjie.exception.handler.SysErrLev;
import me.zhengjie.modules.system.domain.Dept;
import me.zhengjie.modules.system.domain.User;
import me.zhengjie.modules.system.domain.vo.TwoFactorVo;
import me.zhengjie.modules.system.domain.vo.UserPassVo;
import me.zhengjie.modules.system.service.DataService;
import me.zhengjie.modules.system.service.DeptService;
import me.zhengjie.modules.system.service.RoleService;
import me.zhengjie.modules.system.service.UserService;
import me.zhengjie.modules.system.service.dto.RoleSmallDto;
import me.zhengjie.modules.system.service.dto.UserDto;
import me.zhengjie.modules.system.service.dto.UserQueryCriteria;
import me.zhengjie.utils.PageUtil;
import me.zhengjie.utils.RsaUtils;
import me.zhengjie.utils.SecurityUtils;

/**
 * @author Zheng Jie
 * @date 2018-11-23
 */
@Slf4j
@Api(tags = "系統 : 使用者管理")
@RestController
@RequestMapping("/api/users")
@RequiredArgsConstructor
public class UserController {

    private final PasswordEncoder passwordEncoder;
    private final UserService userService;
    private final DataService dataService;
    private final DeptService deptService;
    private final RoleService roleService;
    
    private final CodeDetailMap codeDetailMap;

    @Log("取得當前登入者帳號")
    @ApiOperation("取得當前登入者帳號")
    @GetMapping(value = "/getCurrent")
//    @PreAuthorize("@el.check('')")
    public ResponseEntity<Object> getCurrentUserAccount(){
    	return new ResponseEntity<>(SecurityUtils.getCurrentUsername(), HttpStatus.OK);
    }
    
    @ApiOperation("導出用戶資料")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('user:list')")
    public void exportUser(HttpServletResponse response, UserQueryCriteria criteria) throws IOException {
        userService.download(userService.queryAll(criteria), response);
    }

    @ApiOperation("查詢使用者")
    @GetMapping
    @PreAuthorize("@el.check('user:list')")
    public ResponseEntity<Object> queryUser(UserQueryCriteria criteria, Pageable pageable){
        if (!ObjectUtils.isEmpty(criteria.getDeptId())) {
            criteria.getDeptIds().add(criteria.getDeptId());
            // 先查詢是否存在子節點
            List<Dept> data = deptService.findByPid(criteria.getDeptId());
            // 然後把子節點的ID都加入到集合中
            criteria.getDeptIds().addAll(deptService.getDeptChildren(data));
        }
        // 資料權限
        List<Long> dataScopes = dataService.getDeptIds(userService.findByName(SecurityUtils.getCurrentUsername()));
        // criteria.getDeptIds() 不為空並且資料權限不為空則取交集
        if (!CollectionUtils.isEmpty(criteria.getDeptIds()) && !CollectionUtils.isEmpty(dataScopes)){
            // 取交集
            criteria.getDeptIds().retainAll(dataScopes);
            if(!CollectionUtil.isEmpty(criteria.getDeptIds())){
                return new ResponseEntity<>(userService.queryAll(criteria,pageable),HttpStatus.OK);
            }
        } else {
            // 否則取並集
            criteria.getDeptIds().addAll(dataScopes);
            return new ResponseEntity<>(userService.queryAll(criteria,pageable),HttpStatus.OK);
        }
        return new ResponseEntity<>(PageUtil.toPage(null,0),HttpStatus.OK);
    }

    @Log("新增使用者")
    @ApiOperation("新增使用者")
    @PostMapping
    @PreAuthorize("@el.check('user:add')")
    public ResponseEntity<Object> createUser(@Validated @RequestBody User resources){
        checkLevel(resources);

//      預設密碼為符合複雜度的亂數字串
        String newPw = RandomString.randomPw(10);
//        String newPw = RandomUtil.randomPw(10);
        if (codeDetailMap.get(Constants.SYS_FUNC, Constants.LOG_PW).getIsEnabled()) {
        	log.info(String.format("新密碼 : %s", newPw));        	
        }
        resources.setPassword(passwordEncoder.encode(newPw));
        userService.create(resources);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }

    @Log("修改使用者")
    @ApiOperation("修改使用者")
    @PutMapping
    @PreAuthorize("@el.check('user:edit')")
    public ResponseEntity<Object> updateUser(@Validated(User.Update.class) @RequestBody User resources) throws Exception {
        checkLevel(resources);
        userService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("修改使用者 : 個人中心")
    @ApiOperation("修改使用者 : 個人中心")
    @PutMapping(value = "center")
    public ResponseEntity<Object> centerUser(@Validated(User.Update.class) @RequestBody User resources){
        if(!resources.getId().equals(SecurityUtils.getCurrentUserId())){
            throw new BadRequestException(SysErrLev.DATA_ACCESS_DENIED, "不能修改他人資料");
        }
        userService.updateCenter(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("刪除使用者")
    @ApiOperation("刪除使用者")
    @DeleteMapping
    @PreAuthorize("@el.check('user:del')")
    public ResponseEntity<Object> deleteUser(@RequestBody Set<Long> ids){
        for (Long id : ids) {
            Integer currentLevel =  Collections.min(roleService.findByUsersId(SecurityUtils.getCurrentUserId()).stream().map(RoleSmallDto::getLevel).collect(Collectors.toList()));
            Integer optLevel =  Collections.min(roleService.findByUsersId(id).stream().map(RoleSmallDto::getLevel).collect(Collectors.toList()));
            if (currentLevel > optLevel) {
                throw new BadRequestException(SysErrLev.DATA_ACCESS_DENIED, "權限不足，無法刪除對象：" + userService.findById(id).getAccount());
            }
        }
        userService.delete(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
    
    @ApiOperation("修改密碼")
    @PostMapping(value = "/prepareUpdatePass")
    public ResponseEntity<Object> updateUserPass(@RequestBody TwoFactorVo vo) throws Exception {
    	UserDto user = userService.findByName(vo.getCurrentUser());
    	String oldPass = user.getPassword();
    	String newPass = RsaUtils.decryptByPrivateKey(RsaProperties.privateKey, vo.getNewPass());
    	userService.updatePass(oldPass, newPass, user);
    	return new ResponseEntity<>(HttpStatus.OK);
    }

    @ApiOperation("修改密碼")
    @PostMapping(value = "/updatePass")
    public ResponseEntity<Object> updateUserPass(@RequestBody UserPassVo passVo) throws Exception {
    	UserDto user = userService.findByName(SecurityUtils.getCurrentUsername());
		String oldPass = RsaUtils.decryptByPrivateKey(RsaProperties.privateKey, passVo.getOldPass());
		String newPass = RsaUtils.decryptByPrivateKey(RsaProperties.privateKey, passVo.getNewPass());
        userService.updatePass(oldPass, newPass, user);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @ApiOperation("修改頭像")
    @PostMapping(value = "/updateAvatar")
    public ResponseEntity<Object> updateUserAvatar(@RequestParam MultipartFile avatar){
        return new ResponseEntity<>(userService.updateAvatar(avatar), HttpStatus.OK);
    }

    @ApiOperation("使用者首次輸入電子信箱")
    @PostMapping(value = "/insertEmail")
    public ResponseEntity<Object> insertUserEmail(@RequestBody User user) throws Exception {
    	userService.updateEmail(user.getAccount(), user.getEmail());
    	return new ResponseEntity<>(HttpStatus.OK);
    }
    
    @Log("修改電子信箱")
    @ApiOperation("修改電子信箱")
    @PostMapping(value = "/updateEmail")
    public ResponseEntity<Object> updateUserEmail(@RequestBody User user) throws Exception {
    	UserDto userDto = userService.findByName(SecurityUtils.getCurrentUsername());
    	if (!passwordEncoder.matches(RsaUtils.decryptByPrivateKey(RsaProperties.privateKey, user.getPassword()), userDto.getPassword())) {
    		throw new BadCredentialsException(SysErrLev.FUNCTION_PARAMETER_ERROR, "密碼輸入錯誤");
    	}
        userService.updateEmail(SecurityUtils.getCurrentUsername(), user.getEmail());
    	return new ResponseEntity<>(HttpStatus.OK);
    }

    /**
     * 如果目前使用者的角色級別低於建立使用者的角色級別，則拋出權限不足的錯誤
     * @param resources /
     */
    private void checkLevel(User resources) {
        Integer currentLevel =  Collections.min(roleService.findByUsersId(SecurityUtils.getCurrentUserId()).stream().map(RoleSmallDto::getLevel).collect(Collectors.toList()));
        Integer optLevel = roleService.findByRoles(resources.getRoles());
        if (currentLevel > optLevel) {
            throw new BadRequestException(SysErrLev.DATA_ACCESS_DENIED, "權限不足，無法執行此操作");
        }
    }
}
