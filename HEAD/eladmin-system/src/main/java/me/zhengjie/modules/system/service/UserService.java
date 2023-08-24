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

import me.zhengjie.modules.security.service.dto.AuthUserDto;
import me.zhengjie.modules.system.domain.User;
import me.zhengjie.modules.system.domain.vo.TwoFactorVo;
import me.zhengjie.modules.system.domain.vo.UserPassVo;
import me.zhengjie.modules.system.service.dto.UserDto;
import me.zhengjie.modules.system.service.dto.UserLoginDto;
import me.zhengjie.modules.system.service.dto.UserQueryCriteria;
import org.springframework.data.domain.Pageable;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * @author Zheng Jie
 * @date 2018-11-23
 */
public interface UserService {

    /**
     * 根據ID查詢
     * @param id ID
     * @return /
     */
    UserDto findById(long id);

    /**
     * 新增使用者
     * @param resources /
     */
    void create(User resources);

    /**
     * 編輯使用者
     * @param resources /
     * @throws Exception /
     */
    void update(User resources) throws Exception;

    /* 更新最後成功登入的時間 */
    void updateLatestLoginTime(String currentUserName, Date loginTime) throws Exception;
    
    /**
     * 刪除使用者
     * @param ids /
     */
    void delete(Set<Long> ids);

    /**
     * 根據使用者名稱查詢
     * @param userName /
     * @return /
     */
    UserDto findByName(String userName);

    /**
     * 根據使用者名稱查詢
     * @param userName /
     * @return /
     */
    UserLoginDto getLoginData(String userName);

    /**
     * 使用者更改密碼<p>
     * 更改密碼前進行以下檢查<br>
     * 1.複雜度檢查<br>
     * 2.重複使用檢查<p>
     */
    void updatePass(String oldPass, String newPass, UserDto user) throws Exception;

    /**
     * 修改頭像
     * @param file 檔案
     * @return /
     */
    Map<String, String> updateAvatar(MultipartFile file);

    /**
     * 修改郵箱
     * @param username 使用者名稱
     * @param email 郵箱
     */
    void updateEmail(String username, String email);

    /**
     * 查詢全部
     * @param criteria 條件
     * @param pageable 分頁參數
     * @return /
     */
    Object queryAll(UserQueryCriteria criteria, Pageable pageable);

    /**
     * 查詢全部不分頁
     * @param criteria 條件
     * @return /
     */
    List<UserDto> queryAll(UserQueryCriteria criteria);

    /**
     * 導出數據
     * @param queryAll 待導出的數據
     * @param response /
     * @throws IOException /
     */
    void download(List<UserDto> queryAll, HttpServletResponse response) throws IOException;

    /**
     * 使用者自助修改資料
     * @param resources /
     */
    void updateCenter(User resources);

    /**
     * 重置失敗紀錄
     * @param authUser
     */
    void resetFailedAuth(AuthUserDto authUser);
}
