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
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Deque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletResponse;

import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Sort;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ezcore.tools.common.CodeDetailMap;
import com.ezcore.tools.common.Constants;
import com.ezcore.tools.common.RandomString;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.util.ObjectUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import me.zhengjie.exception.BadRequestException;
import me.zhengjie.exception.handler.SysErrLev;
import me.zhengjie.modules.system.domain.Dept;
import me.zhengjie.modules.system.domain.Role;
import me.zhengjie.modules.system.domain.User;
import me.zhengjie.modules.system.repository.DeptRepository;
import me.zhengjie.modules.system.repository.RoleRepository;
import me.zhengjie.modules.system.repository.UserRepository;
import me.zhengjie.modules.system.service.DeptService;
import me.zhengjie.modules.system.service.SubstituteService;
import me.zhengjie.modules.system.service.dto.DeptDto;
import me.zhengjie.modules.system.service.dto.DeptQueryCriteria;
import me.zhengjie.modules.system.service.mapstruct.DeptMapper;
import me.zhengjie.utils.CacheKey;
import me.zhengjie.utils.FileUtil;
import me.zhengjie.utils.QueryHelp;
import me.zhengjie.utils.RedisUtils;
import me.zhengjie.utils.SecurityUtils;
import me.zhengjie.utils.StringUtils;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.enums.DataScopeEnum;

/**
* @author Zheng Jie
* @date 2019-03-25
*/
@Slf4j
@Service
@RequiredArgsConstructor
@CacheConfig(cacheNames = "dept")
public class DeptServiceImpl implements DeptService {

	private final char ADMIN_PREFIX = 'a';
	private final char USER_PREFIX = 'u';
	private final short ROC_ERA = 1912;
	private final String INIT_SERIAL = "001";
	
	private final PasswordEncoder passwordEncoder;
    private final DeptRepository deptRepository;
    private final DeptMapper deptMapper;
    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final SubstituteService substituteService;
    private final RedisUtils redisUtils;
    private final CodeDetailMap codeDetailMap;

    @Override
    public List<DeptDto> queryAll(DeptQueryCriteria criteria, Boolean isQuery) throws Exception {
        Sort sort = Sort.by(Sort.Direction.ASC, "deptSort");
        String dataScopeType = SecurityUtils.getDataScopeType();
        if (isQuery) {
            if(dataScopeType.equals(DataScopeEnum.ALL.getValue())){
                criteria.setPidIsNull(true);
            }
            List<Field> fields = QueryHelp.getAllFields(criteria.getClass(), new ArrayList<>());
            @SuppressWarnings("serial")
			List<String> fieldNames = new ArrayList<String>(){{ add("pidIsNull");add("enabled");}};
            for (Field field : fields) {
                //設定對象的訪問許可權，保證對private的屬性的訪問
                field.setAccessible(true);
                Object val = field.get(criteria);
                if(fieldNames.contains(field.getName())){
                    continue;
                }
                if (ObjectUtil.isNotNull(val)) {
                    criteria.setPidIsNull(null);
                    break;
                }
            }
        }
        List<DeptDto> list = deptMapper.toDto(deptRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicateByUserAndSubs(root,criteria,criteriaBuilder,substituteService.getSubsUserDatascope()),sort));
        // 如果為空，就代表為自定義許可權或者本級許可權，就需要去重，不理解可以註釋掉，看查詢結果
        if(StringUtils.isBlank(dataScopeType)){
            return deduplication(list);
        }
        return list;
    }

    @Override
    @Cacheable(key = "'id:' + #p0")
    public DeptDto findById(Long id) {
        Dept dept = deptRepository.findById(id).orElseGet(Dept::new);
        ValidationUtil.isNull(dept.getId(),"Dept","id",id);
        return deptMapper.toDto(dept);
    }

    @Override
    public List<Dept> findByPid(long pid) {
        return deptRepository.findByPid(pid);
    }

    @Override
    public Set<Dept> findByRoleId(Long id) {
        return deptRepository.findByRoleId(id);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void create(Dept resources) {
//    	建立使用者、操作者群組，後續新增群組對應角色、使用者
    	if (resources.getIsSeperate() == 2) {
    		Dept[] newDepts = createSeperateGroup(resources);
    		Role[] newRoles = createSeperateRole(newDepts);
    		createSeperateUser(newDepts, newRoles);
//    	建立單一群組，後續新增群組對應角色、使用者
    	} else if (resources.getIsSeperate() == 1) {
    		resources.setName(resources.getName() + "群組");
    		Dept newDept = createSingleGroup(resources);
    		Role newRole = createSingleRole(newDept, DataScopeEnum.THIS_LEVEL);
    		createSingleUser(newDept, newRole);
//    	僅新增節點，不建立群組，無後續動作
    	} else {
    		createSingleGroup(resources);
    	}
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(Dept resources) {
        // 舊的部門
        Long oldPid = findById(resources.getId()).getPid();
        Long newPid = resources.getPid();
        if(resources.getPid() != null && resources.getId().equals(resources.getPid())) {
            throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "上級不能為自己");
        }
        Dept dept = deptRepository.findById(resources.getId()).orElseGet(Dept::new);
        ValidationUtil.isNull( dept.getId(),"Dept","id",resources.getId());
        resources.setId(dept.getId());
        deptRepository.save(resources);
        // 更新父節點中子節點數目
        updateSubCnt(oldPid);
        updateSubCnt(newPid);
        // 清理快取
        delCaches(resources.getId());
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void delete(Set<DeptDto> deptDtos) {
        for (DeptDto deptDto : deptDtos) {
            // 清理快取
            delCaches(deptDto.getId());
            deptRepository.deleteById(deptDto.getId());
            updateSubCnt(deptDto.getPid());
        }
    }

    @Override
    public void download(List<DeptDto> deptDtos, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (DeptDto deptDTO : deptDtos) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put("名稱", deptDTO.getName());
            map.put("狀態", deptDTO.getEnabled() ? "啟用" : "停用");
            map.put("建立日期", deptDTO.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }

    @Override
    public Set<DeptDto> getDeleteDepts(List<Dept> menuList, Set<DeptDto> deptDtos) {
        for (Dept dept : menuList) {
            deptDtos.add(deptMapper.toDto(dept));
            List<Dept> depts = deptRepository.findByPid(dept.getId());
            if(depts!=null && depts.size()!=0){
                getDeleteDepts(depts, deptDtos);
            }
        }
        return deptDtos;
    }

    @Override
    public List<Long> getDeptChildren(List<Dept> deptList) {
        List<Long> list = new ArrayList<>();
        deptList.forEach(dept -> {
                    if (dept!=null && dept.getEnabled()) {
                        List<Dept> depts = deptRepository.findByPid(dept.getId());
                        if (depts.size() != 0) {
                            list.addAll(getDeptChildren(depts));
                        }
                        list.add(dept.getId());
                    }
                }
        );
        return list;
    }

    @Override
    public List<DeptDto> getSuperior(DeptDto deptDto, List<Dept> depts) {
        if(deptDto.getPid() == null){
            depts.addAll(deptRepository.findByPidIsNull());
            return deptMapper.toDto(depts);
        }
        depts.addAll(deptRepository.findByPid(deptDto.getPid()));
        return getSuperior(findById(deptDto.getPid()), depts);
    }

    @Override
    public Object buildTree(List<DeptDto> deptDtos) {
        Set<DeptDto> trees = new LinkedHashSet<>();
        Set<DeptDto> depts= new LinkedHashSet<>();
        List<String> deptNames = deptDtos.stream().map(DeptDto::getName).collect(Collectors.toList());
        boolean isChild;
        for (DeptDto deptDTO : deptDtos) {
            isChild = false;
            if (deptDTO.getPid() == null) {
                trees.add(deptDTO);
            }
            for (DeptDto it : deptDtos) {
                if (it.getPid() != null && deptDTO.getId().equals(it.getPid())) {
                    isChild = true;
                    if (deptDTO.getChildren() == null) {
                        deptDTO.setChildren(new ArrayList<>());
                    }
                    deptDTO.getChildren().add(it);
                }
            }
            if(isChild) {
                depts.add(deptDTO);
            } else if(deptDTO.getPid() != null &&  !deptNames.contains(findById(deptDTO.getPid()).getName())) {
                depts.add(deptDTO);
            }
        }

        if (CollectionUtil.isEmpty(trees)) {
            trees = depts;
        }
        Map<String,Object> map = new HashMap<>(2);
        map.put("totalElements",deptDtos.size());
        map.put("content",CollectionUtil.isEmpty(trees)? deptDtos :trees);
        return map;
    }

    @Override
    public void verification(Set<DeptDto> deptDtos) {
        Set<Long> deptIds = deptDtos.stream().map(DeptDto::getId).collect(Collectors.toSet());
        if(userRepository.countByDepts(deptIds) > 0){
            throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "所選部門存在使用者關聯，請解除后再試！");
        }
        if(roleRepository.countByDepts(deptIds) > 0){
            throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "所選部門存在角色關聯，請解除后再試！");
        }
    }

//  新增單位名稱節點 + 單位管理者群組 + 單位操作者群組
    private Dept[] createSeperateGroup(Dept resources) {
    	Dept[] newDepts = new Dept[3];
//    	新增「組織/單位名稱」節點
    	newDepts[0] = createSingleGroup(resources);
//    	新增「管理者群組」節點
    	newDepts[1] = createSingleGroup((createDept(1, newDepts[0].getId(), newDepts[0].getName() + Constants.ADMIN_G)));
//    	新增「操作者群組」節點
    	newDepts[2] = createSingleGroup((createDept(2, newDepts[0].getId(), newDepts[0].getName() + Constants.USER_G)));
    	return newDepts;
    }
    
//  建立單一群組or單一節點
    private Dept createSingleGroup(Dept resources) {
    	Dept newDept = deptRepository.saveAndFlush(resources);
    	log.info("成功於組織/單位新增: " + resources.getName());
        // 計運算元節點數目
        resources.setSubCount(0);
        // 清理快取
        updateSubCnt(resources.getPid());
        // 清理自定義角色許可權的datascope快取
        delCaches(resources.getPid());
        return newDept;
    }
    
//  組織/單位物件
    private Dept createDept(Integer sort, Long pid, String name) {
    	Dept dept = new Dept();
    	dept.setDeptSort(sort);
    	dept.setPid(pid);
    	dept.setName(name);
    	dept.setEnabled(true);
    	dept.setSubCount(0);
    	return dept;
    }
    
//  建立管理者、操作者角色
    private Role[] createSeperateRole(Dept[] newDepts) {
    	Role[] roles = new Role[2];
//    	管理者群組 角色
    	roles[0] = createSingleRole(newDepts[1], DataScopeEnum.CUSTOMIZE);
//    	操作者群組 角色
    	roles[1] = createSingleRole(newDepts[2], DataScopeEnum.THIS_LEVEL);
    	return roles;
    }
    
//  建立單一角色
    private Role createSingleRole(Dept newDept, DataScopeEnum datascope) {
    	Role role = null;
    	if (DataScopeEnum.THIS_LEVEL.equals(datascope)) {
//    		情況1: 單一角色群組，資料權限為「自己」
//    		情況2: 操作者群組，資料權限為「自己」
    		role = createRole(newDept.getName(), datascope, null);
    	} else if (DataScopeEnum.CUSTOMIZE.equals(datascope)) {
//    		管理者群組，資料權限為「上一級」(含管理者、操作者群組)
    		Set<Dept> depts = new HashSet<>();
    		depts.add(deptRepository.findById(newDept.getPid()).get());
    		role = createRole(newDept.getName(), datascope, depts);
    	}
    	Role newRole = roleRepository.saveAndFlush(role);
    	log.info("成功於群組新增: " + newDept.getName());
    	return newRole;
    }
    
//  角色物件
    private Role createRole(String name, DataScopeEnum datascope, Set<Dept> depts) {
    	Role role = new Role();
    	role.setName(name);
    	role.setLevel(3);
    	role.setDescription(name);
    	role.setDataScope(datascope.getValue());
    	role.setDepts(depts);
    	return role;
    }
    
//  建立管理、操作使用者
    private void createSeperateUser(Dept[] newDepts, Role[] newRoles) {
//    	管理者群組 使用者
    	createSingleUser(newDepts[1], newRoles[0]);
//    	操作者群組 使用者
    	createSingleUser(newDepts[2], newRoles[1]);
    }
    
//  建立單一使用者
    private void createSingleUser(Dept newDept, Role newRole) {
    	Set<Role> set = new HashSet<>();
    	set.add(newRole);
    	
    	String newName = "";
    	if (Constants.ADMIN_G.equals(newDept.getName().substring(newDept.getName().length() - 5, newDept.getName().length()))) {
    		newName = autoGenerateUsername(ADMIN_PREFIX);
    	} else {
    		newName = autoGenerateUsername(USER_PREFIX);
    	}
    	userRepository.saveAndFlush(createUser(newName, newDept, set));
    	log.info("成功於使用者新增: " + newName);
    }
    
//  使用者物件
    private User createUser(String newName, Dept newDept, Set<Role> roles) {
    	User user = new User();
    	user.setAccount(newName);
    	user.setName(newName);
    	user.setDept(newDept);
    	user.setRoles(roles);
    	user.setEnabled(true);
    	user.setIsAdmin(newName.charAt(0) == ADMIN_PREFIX ? true : false);
    	
    	String newPw = RandomString.randomPw(10);
        if (codeDetailMap.get(Constants.SYS_FUNC, Constants.LOG_PW).getIsEnabled()) {
        	log.info(String.format("新密碼 : %s", newPw));        	
        }
    	user.setPassword(passwordEncoder.encode(newPw));
    	user.setErrFlag(Constants.E0);
    	user.setErrCount(0);
    	
    	return user;
    }
    
//  管理者群組: 		   a + 民國年 + 流水號
//  使用者群組/單一群組:  u + 民國年 + 流水號
    private String autoGenerateUsername(char ch) {
    	StringBuilder sb = new StringBuilder();
    	
    	int currentYear = (LocalDateTime.now().getYear() - ROC_ERA - 1) % 100;
    	sb.append(ch).append(currentYear);
    	
    	User lastAdded = userRepository.findFirstByAccountStartsWithOrderByAccountDesc(sb.toString());
    	if (lastAdded == null) {
    		sb.append(INIT_SERIAL);
    		return sb.toString();
    	}
    	
    	String lastName = lastAdded.getAccount();
    	int no = Integer.valueOf(lastName.substring(sb.toString().length(), lastName.length()));
    	no ++;
		
		int temp = no;
		int digit = 0;
		do {
			temp /= 10;
			digit ++;
		} while (temp > 0);
		
		for (int i = 0 ; i < (3 - digit) ; i ++) {
			sb.append(0);
		}
		sb.append(no);
		
		return sb.toString();
    }
    
    private void updateSubCnt(Long deptId){
        if(deptId != null){
            int count = deptRepository.countByPid(deptId);
            deptRepository.updateSubCntById(count, deptId);
        }
    }

    private List<DeptDto> deduplication(List<DeptDto> list) {
        List<DeptDto> deptDtos = new ArrayList<>();
        for (DeptDto deptDto : list) {
            boolean flag = true;
            for (DeptDto dto : list) {
                if (dto.getId().equals(deptDto.getPid())) {
                    flag = false;
                    break;
                }
            }
            if (flag){
                deptDtos.add(deptDto);
            }
        }
        return deptDtos;
    }

    /**
     * 清理快取
     * @param id /
     */
    public void delCaches(Long id){
        List<User> users = userRepository.findByRoleDeptId(id);
        // 刪除數據許可權
        redisUtils.delByKeys(CacheKey.DATA_USER, users.stream().map(User::getId).collect(Collectors.toSet()));
        redisUtils.del(CacheKey.DEPT_ID + id);
    }
    
    public boolean isManagerOrAbove(Long operatorId, Long centerOwnerId) {
        Dept centerOwnerDept = deptRepository.findById(centerOwnerId).orElse(null);
        if (centerOwnerDept == null) {
            throw new IllegalArgumentException("Center owner not found"); //TODO 中文 完整：案件承辦人不存在》》唯讀 透過message 不是exception
        }
        // 用遞回的方式查找是否為上級主管
        Long pid = centerOwnerDept.getPid();
        while (pid != null) {
            if (operatorId.equals(pid)) {
                return true;
            }
            // 找出a.dept_id == b.Pid
            Dept parentDept = deptRepository.findById(pid).orElse(null);
            if (parentDept == null) {
                break;
            }
            //新Pid
            pid = parentDept.getPid();
        }

        return false;
    }

    /* 
     * this is the updated format of isMember, and is correct now
     */
    public boolean isMember(Long operatorDeptId, Long centerOwnerDeptId) {
        // 從資料庫取出對應的部門資訊
        Dept centerOwnerDept = deptRepository.findById(centerOwnerDeptId).orElse(null);	
        if (centerOwnerDept == null) {
            throw new IllegalArgumentException("承辦人不存在");
        }

        // 尋找承辦人的上司，如果找不到，表示承辦人本身就是頂級領導
        Dept managerDept = deptRepository.findById(centerOwnerDept.getPid()).orElse(centerOwnerDept);
        
        // 以LinkedList實現堆疊，用來實現深度優先搜尋(DFS)
        Deque<Dept> stack = new LinkedList<>();
        stack.push(managerDept);

        while (!stack.isEmpty()) {
            Dept dept = stack.pop();													// 取出堆疊頂部的部門並進行處理
            
            if (dept.getId().equals(operatorDeptId)) {									// 如果此部門就是操作者的部門，則early return真
                return true;
            }
                        
            List<Dept> subordinates = deptRepository.findByPid(dept.getId());			// 找出此部門的所有下屬並放入堆疊
            for (Dept subordinate : subordinates) {
                stack.push(subordinate);
            }
        }
        
        // 如果搜尋完畢都沒找到，則返回假：代表不屬於同member
        return false;
    }


}
