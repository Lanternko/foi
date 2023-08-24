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

import me.zhengjie.modules.system.domain.Dept;
import me.zhengjie.modules.system.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import lombok.NonNull;

import java.util.List;
import java.util.Set;

/**
 * @author Zheng Jie
 * @date 2018-11-22
 */
public interface UserRepository extends JpaRepository<User, Long>, JpaSpecificationExecutor<User> {

    /**
     * 根據使用者名稱查詢
     * @param account 使用者帳號
     * @return /
     */
    User findByAccount(String account);

    /**
     * 根據郵箱查詢
     * @param email 郵箱
     * @return /
     */
    User findByEmail(String email);

    /**
     * 根據手機號查詢
     * @param phone 手機號
     * @return /
     */
    User findByPhone(String phone);

    /**
     * 修改密碼
     * @param account 使用者名稱
     * @param pass 密碼
     * @param lastPasswordResetTime /
     */
    @Modifying
    @Query(value = "update sys_user set password = ?2 where account = ?1",nativeQuery = true)
    void updatePass(String account, String pass);

    /**
     * 修改郵箱
     * @param account 使用者名稱
     * @param email 郵箱
     */
    @Modifying
    @Query(value = "update sys_user set email = ?2 where account = ?1",nativeQuery = true)
    void updateEmail(String account, String email);

    /**
     * 根據角色查詢使用者
     * @param roleId /
     * @return /
     */
    @Query(value = "SELECT u.* FROM sys_user u, sys_users_roles r WHERE" +
            " u.user_id = r.user_id AND r.role_id = ?1", nativeQuery = true)
    List<User> findByRoleId(Long roleId);

    /**
     * 根據角色中的部門查詢
     * @param deptId /
     * @return /
     */
//    @Query(value = "SELECT u.* FROM sys_user u, sys_users_roles r, sys_roles_depts d WHERE " +
//            "u.user_id = r.user_id AND r.role_id = d.role_id AND d.dept_id = ?1 group by u.user_id", nativeQuery = true)
    @Query(value = "SELECT u.* FROM sys_user u, sys_users_roles r, sys_roles_depts d WHERE " +
            "u.user_id = r.user_id AND r.role_id = d.role_id AND d.dept_id = ?1 ", nativeQuery = true)
    List<User> findByRoleDeptId(Long deptId);

    /**
     * 根據菜單查詢
     * @param id 菜單ID
     * @return /
     */
//    @Query(value = "SELECT u.* FROM sys_user u, sys_users_roles ur, sys_roles_menus rm WHERE\n" +
//            "u.user_id = ur.user_id AND ur.role_id = rm.role_id AND rm.menu_id = ?1 group by u.user_id", nativeQuery = true)
    @Query(value = "SELECT u.* FROM sys_user u, sys_users_roles ur, sys_roles_menus rm WHERE\n" +
            "u.user_id = ur.user_id AND ur.role_id = rm.role_id AND rm.menu_id = ?1 ", nativeQuery = true)
    List<User> findByMenuId(Long id);

    /**
     * 根據Id刪除
     * @param ids /
     */
    void deleteAllByIdIn(Set<Long> ids);

    /**
     * 根據職務查詢
     * @param ids /
     * @return /
     */
    @Query(value = "SELECT count(1) FROM sys_user u, sys_users_jobs j WHERE u.user_id = j.user_id AND j.job_id IN ?1", nativeQuery = true)
    int countByJobs(Set<Long> ids);

    /**
     * 根據組織/單位查詢
     * @param deptIds /
     * @return /
     */
    @Query(value = "SELECT count(1) FROM sys_user u WHERE u.dept_id IN ?1", nativeQuery = true)
    int countByDepts(Set<Long> deptIds);

    /**
     * 根據角色查詢
     * @param ids /
     * @return /
     */
    @Query(value = "SELECT count(1) FROM sys_user u, sys_users_roles r WHERE " +
            "u.user_id = r.user_id AND r.role_id in ?1", nativeQuery = true)
    int countByRoles(Set<Long> ids);
    
    User findFirstByAccountStartsWithOrderByAccountDesc(String account);
    
    List<User> findByDeptInAndAccountNot(List<Dept> depts, String account);

	String findNameByAccount(String ownerAccount);
}
