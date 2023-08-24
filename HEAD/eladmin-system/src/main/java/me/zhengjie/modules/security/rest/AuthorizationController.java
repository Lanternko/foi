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
package me.zhengjie.modules.security.rest;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.common.CodeDetailMap;
import com.ezcore.tools.common.Constants;
import com.wf.captcha.base.Captcha;

import cn.hutool.core.util.IdUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import me.zhengjie.annotation.Log;
import me.zhengjie.annotation.rest.AnonymousDeleteMapping;
import me.zhengjie.annotation.rest.AnonymousGetMapping;
import me.zhengjie.annotation.rest.AnonymousPostMapping;
import me.zhengjie.modules.security.config.bean.LoginCodeEnum;
import me.zhengjie.modules.security.config.bean.LoginProperties;
import me.zhengjie.modules.security.config.bean.SecurityProperties;
import me.zhengjie.modules.security.security.TokenProvider;
import me.zhengjie.modules.security.service.AuthorizationService;
import me.zhengjie.modules.security.service.OnlineUserService;
import me.zhengjie.modules.security.service.dto.AuthUserDto;
import me.zhengjie.modules.security.service.dto.JwtUserDto;
import me.zhengjie.modules.system.domain.vo.AuthInfoVo;
import me.zhengjie.modules.system.domain.vo.SysCodeVo;
import me.zhengjie.modules.system.domain.vo.TwoFactorVo;
import me.zhengjie.utils.RedisUtils;
import me.zhengjie.utils.SecurityUtils;

/**
 * @author Zheng Jie
 * @date 2018-11-23
 * 授權、根據token獲取使用者詳細資訊
 */
@Slf4j
@RestController
@RequestMapping("/auth")
@RequiredArgsConstructor
@Api(tags = "系統 : 系統授權介面")
public class AuthorizationController {
	
    private final SecurityProperties properties;
    private final RedisUtils redisUtils;
    private final OnlineUserService onlineUserService;
    private final TokenProvider tokenProvider;
    private final AuthorizationService authService;
    private final CodeDetailMap codeDetailMap;
    @Resource
    private LoginProperties loginProperties;
    
    @Log("使用者登入")
    @ApiOperation("使用者登入")
    @AnonymousPostMapping(value = "/login")
    public ResponseEntity<Object> login(@Validated @RequestBody AuthUserDto authUser, HttpServletRequest request) throws Exception {    	
//      圖形檢核碼驗證
    	authService.checkVerifyCode(authUser);
    	
//    	確認登入型態
    	authService.checkLoginType(authUser);
    	
//    	確認帳號是否存在
    	authService.checkAccountExists(authUser);
    	
//      確認帳號是否為永久鎖定狀態
    	authService.checkAccountEnable();
    	
//    	確認帳號是否被暫時鎖定
    	authService.checkAccountUsable();

//      驗證使用者輸入的帳號密碼
        AuthInfoVo vo = authService.getAuth(authUser);
        SecurityContextHolder.getContext().setAuthentication(vo.getAuthentication());

//      清除使用者代理狀態
        authService.resetSubstitutes();

//      取得token
        String token = tokenProvider.createToken(vo.getAuthentication());
        final JwtUserDto jwtUserDto = (JwtUserDto) vo.getAuthentication().getPrincipal();

		Map<String, Object> authInfo = new HashMap<>(4, 1F);
        authInfo.put("token", properties.getTokenStartWith() + token);
        authInfo.put("user", jwtUserDto);
        authInfo.put("pwGenre", vo.getPwGenre());
      
//    	更新各項資訊
        authService.updateLoginInfo(token, jwtUserDto, request);
        return ResponseEntity.ok(authInfo);
    }
    
    @Log("內網登入")
    @ApiOperation("內網登入")
    @AnonymousPostMapping(value = "/accessFromEdoc")
    public ResponseEntity<Object> intraLogin(@RequestBody AuthUserDto authUser, HttpServletRequest request) {
//    	確認帳號是否存在
    	authService.checkAccountExists(authUser);
    	
//    	此處的前提為: 1.中心token驗證通過 2.案管系統存在此帳號
    	Authentication authentication = authService.getAuthByUsr();
    	SecurityContextHolder.getContext().setAuthentication(authentication);
    	
//      清除使用者代理狀態
        authService.resetSubstitutes();
        
//      取得token
        String token = tokenProvider.createToken(authentication);
        final JwtUserDto jwtUserDto = (JwtUserDto) authentication.getPrincipal();
        
		Map<String, Object> authInfo = new HashMap<>(4, 1F);
        authInfo.put("token", properties.getTokenStartWith() + token);
        authInfo.put("user", jwtUserDto);
        authInfo.put("pwGenre", "");
        
//    	更新各項資訊
        authService.updateLoginInfo(token, jwtUserDto, request);
    	return ResponseEntity.ok(authInfo);
    }

    @ApiOperation("更新最新成功登入時間")
    @GetMapping(value = "/updateLatestLogin")
    public ResponseEntity<Object> updateLatestLogin() throws Exception {
    	authService.updateLatestLogin();
    	return ResponseEntity.ok("ok");
    }
    
    @ApiOperation("密碼逾期確認")
    @PostMapping(value = "/verify")
    public ResponseEntity<Object> checkPwExpired(@Validated @RequestBody AuthUserDto user, HttpServletRequest request) {
    	return ResponseEntity.ok(authService.checkPwExpired(user.getAccount()));
    }
    
    @ApiOperation("取得使用者資訊")
    @GetMapping(value = "/info")
    public ResponseEntity<Object> getUserInfo() {
        return ResponseEntity.ok(SecurityUtils.getCurrentUser());
    }

    @ApiOperation("取得圖形驗證碼")
    @AnonymousGetMapping(value = "/code")
    public ResponseEntity<Object> getCode() {
//    	CodeDetailDto code = codeDetailMap.get(Constants.SYS_FUNC, Constants.USE_CAPTCHA);
    	CodeDetailDto code = CodeDetailMap.get(Constants.SYS_FUNC, Constants.USE_CAPTCHA);
    	if (Boolean.FALSE.equals(code.getIsEnabled())) {
			log.info(String.format(Constants.CODE_DISABLED, code.getName()));
    		return ResponseEntity.ok(Constants.UNUSED);
    	}
    				
        // 獲取運算的結果
        Captcha captcha = loginProperties.getCaptcha();
        String uuid = properties.getCodeKey() + IdUtil.simpleUUID();
        //當驗證碼型別為 arithmetic時且長度 >= 2 時，captcha.text()的結果有機率為浮點型
        String captchaValue = captcha.text();
        if (captcha.getCharType() - 1 == LoginCodeEnum.ARITHMETIC.ordinal() && captchaValue.contains(".")) {
            captchaValue = captchaValue.split("\\.")[0];
        }
        // 儲存
        redisUtils.set(uuid, captchaValue, loginProperties.getLoginCode().getExpiration(), TimeUnit.MINUTES);
        // 驗證碼資訊
		Map<String, Object> imgResult = new HashMap<>(3, 1F);
        imgResult.put("img", captcha.toBase64());
        imgResult.put("uuid", uuid);
        return ResponseEntity.ok(imgResult);
    }

    @Log("登出")
    @ApiOperation("登出")
    @AnonymousDeleteMapping(value = "/logout")
    public ResponseEntity<Object> logout(HttpServletRequest request) {
        onlineUserService.logout(tokenProvider.getToken(request));
        return new ResponseEntity<>(HttpStatus.OK);
    }
    
    @ApiOperation("兩段驗證檢核碼檢查")
    @AnonymousPostMapping(value = "/twoFactor")
    public ResponseEntity<Object> twoFactorBehavier(@Validated @RequestBody TwoFactorVo vo, HttpServletRequest request) {
		return ResponseEntity.ok(authService.checkVerifyCodeUsable(vo.getCurrentUser(), vo.getVerifyCode()));
    }
    
//  登入階段提供前端取驗證用系統代碼
    @AnonymousPostMapping(value = "/func")
    public ResponseEntity<Object> getSysFuncCode(@Validated @RequestBody SysCodeVo vo) {
    	CodeDetailDto dto = codeDetailMap.get(Constants.SYS_FUNC, vo.getRequestCode());
    	SysCodeVo code = new SysCodeVo();
    	code.setIsEnabled(dto.getIsEnabled());
    	code.setDescription(dto.getDescription());
    	code.setProperty1(dto.getProperty1());
    	return ResponseEntity.ok(code);
    }
}
