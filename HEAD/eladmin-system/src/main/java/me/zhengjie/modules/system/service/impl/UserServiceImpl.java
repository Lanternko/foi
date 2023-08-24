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

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletResponse;
import javax.validation.constraints.NotBlank;

import org.springframework.cache.annotation.CacheConfig;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.common.CodeDetailMap;
import com.ezcore.tools.common.Constants;

import lombok.RequiredArgsConstructor;
import me.zhengjie.config.FileProperties;
import me.zhengjie.exception.BadRequestException;
import me.zhengjie.exception.EntityExistException;
import me.zhengjie.exception.EntityNotFoundException;
import me.zhengjie.exception.handler.SysErrLev;
import me.zhengjie.modules.security.service.OnlineUserService;
import me.zhengjie.modules.security.service.UserCacheManager;
import me.zhengjie.modules.security.service.dto.AuthUserDto;
import me.zhengjie.modules.system.domain.User;
import me.zhengjie.modules.system.domain.UserLog;
import me.zhengjie.modules.system.repository.UserLogRepository;
import me.zhengjie.modules.system.repository.UserRepository;
import me.zhengjie.modules.system.service.SubstituteService;
import me.zhengjie.modules.system.service.UserService;
import me.zhengjie.modules.system.service.dto.JobSmallDto;
import me.zhengjie.modules.system.service.dto.RoleSmallDto;
import me.zhengjie.modules.system.service.dto.UserDto;
import me.zhengjie.modules.system.service.dto.UserLoginDto;
import me.zhengjie.modules.system.service.dto.UserQueryCriteria;
import me.zhengjie.modules.system.service.mapstruct.UserLoginMapper;
import me.zhengjie.modules.system.service.mapstruct.UserMapper;
import me.zhengjie.utils.CacheKey;
import me.zhengjie.utils.FileUtil;
import me.zhengjie.utils.PageUtil;
import me.zhengjie.utils.QueryHelp;
import me.zhengjie.utils.RedisUtils;
import me.zhengjie.utils.SecurityUtils;
import me.zhengjie.utils.StringUtils;
import me.zhengjie.utils.ValidationUtil;

/**
 * @author Zheng Jie
 * @date 2018-11-23
 */
@Service
@RequiredArgsConstructor
@CacheConfig(cacheNames = "user")
public class UserServiceImpl implements UserService {

	private final SubstituteService substituteService;
	private final PasswordEncoder passwordEncoder;
    private final UserRepository userRepository;
    private final UserLogRepository userLogRepository;
    private final UserMapper userMapper;
    private final FileProperties properties;
    private final RedisUtils redisUtils;
    private final UserCacheManager userCacheManager;
    private final OnlineUserService onlineUserService;
    private final UserLoginMapper userLoginMapper;
    
    private final CodeDetailMap codeDetailMap;
    
    @Override
    public Object queryAll(UserQueryCriteria criteria, Pageable pageable) {
        Page<User> page = userRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicateByUserAndSubs(root, criteria, criteriaBuilder, substituteService.getSubsUserDatascope()), pageable);
        return PageUtil.toPage(page.map(userMapper::toDto));
    }

    @Override
    public List<UserDto> queryAll(UserQueryCriteria criteria) {
        List<User> users = userRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicateByUserAndSubs(root, criteria, criteriaBuilder, substituteService.getSubsUserDatascope()));
        return userMapper.toDto(users);
    }

    @Override
    @Cacheable(key = "'id:' + #p0")
    @Transactional(rollbackFor = Exception.class)
    public UserDto findById(long id) {
        User user = userRepository.findById(id).orElseGet(User::new);
        ValidationUtil.isNull(user.getId(), "User", "id", id);
        return userMapper.toDto(user);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void create(User resources) {
        if (userRepository.findByAccount(resources.getAccount()) != null) {
            throw new EntityExistException(User.class, "account", resources.getAccount());
        }
        if (userRepository.findByEmail(resources.getEmail()) != null) {
            throw new EntityExistException(User.class, "email", resources.getEmail());
        }
        if (userRepository.findByPhone(resources.getPhone()) != null) {
            throw new EntityExistException(User.class, "phone", resources.getPhone());
        }
        userRepository.save(resources);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(User resources) throws Exception {    	
    	User user = userRepository.findById(resources.getId()).orElseGet(User::new);    		
        ValidationUtil.isNull(user.getId(), "User", "id", resources.getId());
        User user1 = userRepository.findByAccount(resources.getAccount());
        User user2 = userRepository.findByEmail(resources.getEmail());
        User user3 = userRepository.findByPhone(resources.getPhone());
        if (user1 != null && !user.getId().equals(user1.getId())) {
            throw new EntityExistException(User.class, "account", resources.getAccount());
        }
        if (user2 != null && !user.getId().equals(user2.getId())) {
            throw new EntityExistException(User.class, "email", resources.getEmail());
        }
        if (user3 != null && !user.getId().equals(user3.getId())) {
            throw new EntityExistException(User.class, "phone", resources.getPhone());
        }
        // 如果使用者的角色改變
        if (!resources.getRoles().equals(user.getRoles())) {
            redisUtils.del(CacheKey.DATA_USER + resources.getId());
            redisUtils.del(CacheKey.MENU_USER + resources.getId());
            redisUtils.del(CacheKey.ROLE_AUTH + resources.getId());
        }
        // 修改組織/單位會影響 資料許可權
        if (!Objects.equals(resources.getDept(),user.getDept())) {
            redisUtils.del(CacheKey.DATA_USER + resources.getId());
        }
        // 如果使用者被禁用，則清除使用者登錄資訊
        if(Boolean.FALSE.equals(resources.getEnabled())){
            onlineUserService.kickOutForUsername(resources.getAccount());
        }
        user.setAccount(resources.getAccount());
        user.setEmail(resources.getEmail());
        user.setEnabled(resources.getEnabled());
        user.setRoles(resources.getRoles());
        user.setDept(resources.getDept());
        user.setJobs(resources.getJobs());
        user.setPhone(resources.getPhone());
        user.setName(resources.getName());
        user.setGender(resources.getGender());
        userRepository.save(user);
        // 清除快取
        delCaches(user.getId(), user.getAccount());
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void updateLatestLoginTime(String currentUserName, Date loginTime) {
    	User user = userRepository.findByAccount(currentUserName);
    	user.setLatestLoginTime(loginTime);
    	userRepository.save(user);
    	delCaches(user.getId(), user.getAccount());
    }
    
    @Override
    @Transactional(rollbackFor = Exception.class)
    public void updateCenter(User resources) {
        User user = userRepository.findById(resources.getId()).orElseGet(User::new);
        User user1 = userRepository.findByPhone(resources.getPhone());
        if (user1 != null && !user.getId().equals(user1.getId())) {
            throw new EntityExistException(User.class, "phone", resources.getPhone());
        }
        user.setName(resources.getName());
        user.setPhone(resources.getPhone());
        user.setGender(resources.getGender());
        user.setNickname(resources.getNickname());
        userRepository.save(user);
        // 清理快取
        delCaches(user.getId(), user.getAccount());
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void delete(Set<Long> ids) {
        for (Long id : ids) {
            // 清理快取
            UserDto user = findById(id);
            delCaches(user.getId(), user.getAccount());
        }
        userRepository.deleteAllByIdIn(ids);
    }

    @Override
    public UserDto findByName(String userName) {
        User user = userRepository.findByAccount(userName);
        if (user == null) {
            throw new EntityNotFoundException(User.class, "name", userName);
        } else {
            return userMapper.toDto(user);
        }
    }

    @Override
    public UserLoginDto getLoginData(String userName) {
        User user = userRepository.findByAccount(userName);
        if (user == null) {
            throw new EntityNotFoundException(User.class, "name", userName);
        } else {
            return userLoginMapper.toDto(user);
        }
    }
    
    @Override
    @Transactional(rollbackFor = Exception.class)
	public void updatePass(String oldPass, String newPass, UserDto user) throws Exception {
    	if (!oldPass.equals(user.getPassword())) {
    		if (!passwordEncoder.matches(oldPass, user.getPassword())) {
    			throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "當前密碼輸入錯誤");
    		}    		
    	}

		CodeDetailDto pwMatchRegexCode = codeDetailMap.get(Constants.SYS_FUNC, Constants.PW_MATCH_REGEX);
		if (Boolean.TRUE.equals(pwMatchRegexCode.getIsEnabled()) && !newPass.matches(pwMatchRegexCode.getProperty1())) {
// 			代碼開啟時，後端確認新密碼複雜度
			throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, pwMatchRegexCode.getDescription());
		}
		
		CodeDetailDto keepPrevPwCode = codeDetailMap.get(Constants.SYS_FUNC, Constants.KEEP_PREV_PW);
		Integer currentCnt = 0;
//		代碼開啟時，進行新密碼是否與前N次相同的判斷
		if (Boolean.TRUE.equals(keepPrevPwCode.getIsEnabled())) {
			Integer keepPrevPw = Integer.valueOf(keepPrevPwCode.getProperty1());
			if (keepPrevPw <= 0) {
//				保留代數輸入為0或小於時以1做處理
				keepPrevPw = 1;
			}
			
			String errMsg = codeDetailMap.get(Constants.ERR_FLAG, Constants.E5).getProperty1();			
			if (passwordEncoder.matches(newPass, user.getPassword())) {
//				新密碼不能與前%s次使用過的相同
				throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, String.format(errMsg, keepPrevPw));
			}
			
//			依代碼sys.func >> keep_prev_pw查出使用者更改密碼的紀錄
			List<UserLog> records = null;
			if (keepPrevPw == 1) {
//				最少也會取一列，用來看sort值是多少
				records = userLogRepository.findByAccountAndUsrOp(user.getAccount(), Constants.OP3, PageRequest.of(0, 1, Sort.by("prevPwSort").descending()));				
			} else {
				records = userLogRepository.findByAccountAndUsrOp(user.getAccount(), Constants.OP3, PageRequest.of(0, keepPrevPw - 1, Sort.by("prevPwSort").descending()));
			}
			
			if (!records.isEmpty()) {
				currentCnt = records.get(0).getPrevPwSort();
			}

			for (UserLog log : records) {
				if (passwordEncoder.matches(newPass, log.getPrevPw())) {
//					新密碼不能與前%s次使用過的相同
					throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, String.format(errMsg, keepPrevPw));
				}
			}
		} else {
			UserLog usrLog = userLogRepository.findFirstByAccountAndUsrOpOrderByPrevPwSortDesc(user.getAccount(), Constants.OP3);
			if (usrLog != null) {
				currentCnt = usrLog.getPrevPwSort();
			}
		}
		
//		更新使用者密碼
		userRepository.updatePass(user.getAccount(), passwordEncoder.encode(newPass));
		
//		新增一筆密碼修改紀錄
		UserLog usrLog = new UserLog();
		usrLog.setAccount(user.getAccount());
		usrLog.setUsrOp(Constants.OP3);
		usrLog.setPrevPw(user.getPassword());
		usrLog.setPrevPwSort(++ currentCnt);
		userLogRepository.save(usrLog);
		
		flushCache(user.getAccount());			
	}

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Map<String, String> updateAvatar(MultipartFile multipartFile) {
        // 檔案大小驗證
        FileUtil.checkSize(properties.getAvatarMaxSize(), multipartFile.getSize());
        // 驗證檔案上傳的格式
        String image = "gif jpg png jpeg";
        String fileType = FileUtil.getExtensionName(multipartFile.getOriginalFilename());
        if(fileType != null && !image.contains(fileType)){
            throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "檔案格式錯誤！, 僅支援 " + image +" 格式");
        }
        User user = userRepository.findByAccount(SecurityUtils.getCurrentUsername());
        String oldPath = user.getAvatarPath();
        File file = FileUtil.upload(multipartFile, properties.getPath().getAvatar());
        user.setAvatarPath(Objects.requireNonNull(file).getPath());
        user.setAvatarName(file.getName());
        userRepository.save(user);
        if (StringUtils.isNotBlank(oldPath)) {
            FileUtil.del(oldPath);
        }
        @NotBlank String username = user.getAccount();
        flushCache(username);
        Map<String, String> rtn = new HashMap<>(1);
        rtn.put("avatar", file.getName());
        return rtn;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void updateEmail(String username, String email) {
        userRepository.updateEmail(username, email);
        flushCache(username);
    }

    @Override
    public void download(List<UserDto> queryAll, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (UserDto userDTO : queryAll) {
            List<String> roles = userDTO.getRoles().stream().map(RoleSmallDto::getName).collect(Collectors.toList());
            Map<String, Object> map = new LinkedHashMap<>();
            map.put("使用者名稱", userDTO.getAccount());
            map.put("角色", roles);
            map.put("組織/單位", userDTO.getDept().getName());
            map.put("職務", userDTO.getJobs().stream().map(JobSmallDto::getName).collect(Collectors.toList()));
            map.put("電子信箱", userDTO.getEmail());
            map.put("狀態", Boolean.TRUE.equals(userDTO.getEnabled()) ? "啟用" : "禁用");
            map.put("手機號碼", userDTO.getPhone());
            map.put("建立日期", userDTO.getCreateTime());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }

    /**
     * 清理快取
     *
     * @param id /
     */
    public void delCaches(Long id, String username) {
        redisUtils.del(CacheKey.USER_ID + id);
        flushCache(username);
    }

    @Override
    public void resetFailedAuth(AuthUserDto authUser) {
    	// TODO Auto-generated method stub
    	
    }

    /**
     * 清理 登陸時 使用者快取資訊
     *
     * @param username /
     */
    private void flushCache(String username) {
        userCacheManager.cleanUserCache(username);
    }

}
