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
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import java.util.List;
import java.util.Set;

/**
* @author Zheng Jie
* @date 2019-03-25
*/
public interface DeptRepository extends JpaRepository<Dept, Long>, JpaSpecificationExecutor<Dept> {

    /**
     * 根據 PID 查詢
     * @param id pid
     * @return /
     */
    List<Dept> findByPid(Long id);

    /**
     * 獲取頂級部門
     * @return /
     */
    List<Dept> findByPidIsNull();

    /**
     * 根據角色ID 查詢
     * @param roleId 角色ID
     * @return /
     */
    @Query(value = "select d.* from sys_dept d, sys_roles_depts r where " +
            "d.dept_id = r.dept_id and r.role_id = ?1", nativeQuery = true)
    Set<Dept> findByRoleId(Long roleId);

    /**
     * 判斷是否存在子節點
     * @param pid /
     * @return /
     */
    int countByPid(Long pid);

    /**
     * 根據ID更新sub_count
     * @param count /
     * @param id /
     */
    @Modifying
    @Query(value = " update sys_dept set sub_count = ?1 where dept_id = ?2 ",nativeQuery = true)
    void updateSubCntById(Integer count, Long id);
    
    @Query(value = "select dept_id from sys_user where account = :account", nativeQuery = true)
    Long getDeptIdFromAccount(String account);
}