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
package me.zhengjie.config;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Service;

import me.zhengjie.modules.system.service.SubstituteService;
import me.zhengjie.utils.SecurityUtils;

/**
 * @author Zheng Jie
 */
@Service(value = "el")
public class ElPermissionConfig {
	
	@Autowired
	private SubstituteService substituteService;
	
    public Boolean check(String ...permissions){    
////    	自己的權限
//    	Set<String> elPermissions = SecurityUtils.getCurrentUser().getAuthorities().stream().map(GrantedAuthority::getAuthority).collect(Collectors.toSet());
////    	代理對象的權限
//    	elPermissions.addAll(substituteService.getSubsUserPermissions());	
// 		判斷登入者的許可權(含代理對象)是否包含介面上定義的許可權        
//        return elPermissions.contains("admin") || Arrays.stream(permissions).anyMatch(elPermissions::contains);
    	
    	Set<String> ownPermissions = new HashSet<>();
    	
    	Set<String> subsPermission = substituteService.getSubsUserPermissions();
    	if (subsPermission.isEmpty()) {
//    		無代理對象時，使用自身許可權
    		ownPermissions = SecurityUtils.getCurrentUser().getAuthorities().stream().map(GrantedAuthority::getAuthority).collect(Collectors.toSet());
    	}
    	ownPermissions.addAll(subsPermission);
        return ownPermissions.contains("admin") || Arrays.stream(permissions).anyMatch(ownPermissions::contains);
    }
}
