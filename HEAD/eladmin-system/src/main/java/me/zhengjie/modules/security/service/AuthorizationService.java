package me.zhengjie.modules.security.service;

import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.common.CodeDetailMap;
import com.ezcore.tools.common.Constants;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import me.zhengjie.config.RsaProperties;
import me.zhengjie.exception.BadCredentialsException;
import me.zhengjie.exception.handler.SysErrLev;
import me.zhengjie.modules.security.config.bean.LoginProperties;
import me.zhengjie.modules.security.service.dto.AuthUserDto;
import me.zhengjie.modules.security.service.dto.JwtUserDto;
import me.zhengjie.modules.system.domain.User;
import me.zhengjie.modules.system.domain.UserLog;
import me.zhengjie.modules.system.domain.vo.AuthInfoVo;
import me.zhengjie.modules.system.domain.vo.PwExpiredVo;
import me.zhengjie.modules.system.repository.UserLogRepository;
import me.zhengjie.modules.system.repository.UserRepository;
import me.zhengjie.modules.system.service.SubstituteService;
import me.zhengjie.modules.system.service.UserService;
import me.zhengjie.utils.DateUtil;
import me.zhengjie.utils.RedisUtils;
import me.zhengjie.utils.RsaUtils;
import me.zhengjie.utils.StringUtils;

@Slf4j
@Service
@RequiredArgsConstructor
public class AuthorizationService {
	
	private final String PRESET_PW = "preset";
	private final String REGULAR_PW = "regular";
	private final String TEMP_PW = "temp";
	
	private final String EMAIL_REGEX = "^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$";
	
	private final SubstituteService substituteService;
	private final RedisUtils redisUtils;
	private final PasswordEncoder passwordEncoder;
	private final AuthenticationManagerBuilder authenticationManagerBuilder;
	private final UserService userService;
	private final UserDetailsService userDetailsService;
	private final OnlineUserService onlineUserService;
	private final CodeDetailMap codeDetailMap;	
	private final UserRepository userRepository;
	private final UserLogRepository userLogRepository;	
	@Resource
    private LoginProperties loginProperties;
	
	private boolean isEmail = false;
	private User user = null;
	
	/** 圖形檢核碼驗證 
	 * @return */
	public void checkVerifyCode(AuthUserDto authUser) {
		CodeDetailDto code = codeDetailMap.get(Constants.SYS_FUNC, Constants.USE_CAPTCHA);
		if (Boolean.TRUE.equals(code.getIsEnabled())) {
			String vvid = (String) redisUtils.get(authUser.getUuid());
			if (StringUtils.isEmptyOrNull(vvid)) {
				throw new BadCredentialsException(SysErrLev.CAPTCHA_ERROR, "驗證碼不存在或已過期");
			}
			if (StringUtils.isEmptyOrNull(authUser.getCode()) || !authUser.getCode().equalsIgnoreCase(vvid)) {
				throw new BadCredentialsException(SysErrLev.CAPTCHA_ERROR, "驗證碼錯誤");
			}
		}		
        redisUtils.del(authUser.getUuid());
	}
	
	/** 確認登入型態
	 * @return */
	public void checkLoginType(AuthUserDto authUser) {
		isEmail = authUser.getAccount().matches(EMAIL_REGEX);
	}
	
	/** 確認帳號是否存在 
	 * @return */
	public void checkAccountExists(AuthUserDto authUser) {
//		依登入方式取得使用者資料列
		if (isEmail) {
			user = userRepository.findByEmail(authUser.getAccount());
		} else {
			user = userRepository.findByAccount(authUser.getAccount());			
		}

		if (user == null) {
//			使用者名稱或密碼不正確
			throw new BadCredentialsException(SysErrLev.USER_INPUT_ERROR, codeDetailMap.get(Constants.ERR_FLAG, Constants.E4).getProperty1());
		}
	}
	
	/** 確認帳號是否為永久鎖定狀態 
	 * @return */
	public void checkAccountEnable() {
		if (!user.getEnabled()) {
//			是，則確認鎖定原因
			String errFlag = user.getErrFlag();
        	switch (errFlag) {
			case Constants.E2 :
				String lockAccountPermanently = codeDetailMap.get(Constants.ERR_FLAG, Constants.E2).getProperty1();
//				帳號已鎖定，請洽系統管理者
				throw new BadCredentialsException(SysErrLev.ACCOUNT_LOCKED, lockAccountPermanently);
			case Constants.E3 :
				String accountUnused = codeDetailMap.get(Constants.ERR_FLAG, Constants.E3).getProperty1();
				Integer diffDays = DateUtil.dateDiff(DateUtil.toLocalDateTime(user.getLatestLoginTime()), LocalDateTime.now());
//				帳號因連續%s天未使用而鎖定，請洽系統管理者
				throw new BadCredentialsException(SysErrLev.ACCOUNT_LOCKED, String.format(accountUnused, diffDays));
			default:
				break;
			}
		}
	}
	
	/** 確認帳號是否被暫時鎖定 
	 * @return void */
	public void checkAccountUsable() {	
//		檢查使用者是否被暫時鎖定
		if (Constants.E1.equals(user.getErrFlag())) {
			UserLog usrLog = userLogRepository.findFirstByAccountAndUsrOpOrderByLogIdDesc(user.getAccount(), Constants.OP1);
			Integer secdiff = DateUtil.secDiff(DateUtil.toLocalDateTime(new Date(usrLog.getCreateTime().getTime())), LocalDateTime.now());
			Integer periodInSec = Integer.valueOf(codeDetailMap.get(Constants.SYS_FUNC, Constants.LOCK_ACCOUNT_REMAINS).getProperty1()) * 60;
//			是，則繼續確認是否過期
			if (secdiff <= periodInSec) {
//				取最新一筆紀錄的時間計算鎖定還有多長時間
				CodeDetailDto lockAccountTemp = codeDetailMap.get(Constants.ERR_FLAG, Constants.E1);
				String result = (periodInSec - secdiff) / 60 == 0 ? 
						(periodInSec - secdiff) + Constants.SECOND : (periodInSec - secdiff) / 60 + Constants.MINUTE;
//				連續錯誤已達%s次，請隔%s後再作登入
				throw new BadCredentialsException(SysErrLev.ACCOUNT_LOCKED_TEMPORARY, String.format(lockAccountTemp.getProperty1(), user.getErrCount(), result));
			}
//			若逾期則清除鎖定標計
			user.setErrCount(0);
			user.setErrFlag(Constants.E0);
			userRepository.save(user);
		}
	}
	
	/** 驗證帳號密碼 
	 * @return Authentication */
	public AuthInfoVo getAuth(AuthUserDto authUser) throws Exception {    
        Authentication authentication = null;
        String password = RsaUtils.decryptByPrivateKey(RsaProperties.privateKey, authUser.getPassword());
        String pwType = checkPwType(user, password);
        AuthInfoVo vo = new AuthInfoVo();
        vo.setPwGenre(pwType);
//		密碼種類回傳為null時為密碼打錯
        if (pwType == null) {
//			user_log新增一筆錯誤紀錄
			UserLog usrLog = new UserLog();
			usrLog.setAccount(user.getAccount());
			usrLog.setUsrOp(Constants.OP1);
			userLogRepository.save(usrLog);
			
			Integer currentErrCnt = user.getErrCount() == null ? 0 : user.getErrCount();
			Integer wrongPwCount = Integer.valueOf(codeDetailMap.get(Constants.SYS_FUNC, Constants.AUTH_FAILED_CNT).getProperty1());
//			先加1後的錯誤次數若大於代碼sys.func >> auth_failed_cnt，對帳號上暫時鎖定狀態，並丟出相應例外
			if (++ currentErrCnt >= wrongPwCount) {
				Integer period = Integer.valueOf(codeDetailMap.get(Constants.SYS_FUNC, Constants.LOCK_ACCOUNT_REMAINS).getProperty1());
				CodeDetailDto lockAccountTemp = codeDetailMap.get(Constants.ERR_FLAG, Constants.E1);
				user.setErrCount(currentErrCnt);
				user.setErrFlag(Constants.E1);
				userRepository.save(user);
//				連續錯誤已達%s次，請隔%s分鐘後再作登入
				throw new BadCredentialsException(SysErrLev.ACCOUNT_LOCKED_TEMPORARY, String.format(lockAccountTemp.getProperty1(), currentErrCnt, period  + Constants.MINUTE));
			}
			user.setErrCount(currentErrCnt);
			userRepository.save(user);
//			未達鎖定次數時丟出一般例外
//			使用者名稱或密碼不正確
			throw new BadCredentialsException(SysErrLev.USER_INPUT_ERROR, codeDetailMap.get(Constants.ERR_FLAG, Constants.E4).getProperty1());
        }
        
        if (TEMP_PW.equals(pwType)) {
//        	使用有效臨時密碼時繞過原始密碼取得授權
        	authentication = getAuthByUsr();
        } else {
//        	使用預設密碼、一般密碼時使用密碼取得授權
        	authentication = getAuthByUsrAndPw(password);
        }
//		密碼驗證成功時清除錯誤次數
        if (user.getErrCount() == null || user.getErrCount() > 0) {
        	user.setErrCount(0);
        	userRepository.save(user);
        }
        vo.setAuthentication(authentication);
        return vo;
	}	

	/** 更新各項資訊 
	 * @return void */
	public void updateLoginInfo(String token, JwtUserDto jwtUserDto, HttpServletRequest request) {
//		儲存線上資訊
		onlineUserService.save(jwtUserDto, token, request, new Date());
		if (loginProperties.isSingleLogin()) {
//			踢掉之前已經登錄的token
			onlineUserService.checkLoginOnUser(user.getAccount(), token);
		}
	}
	
	/** 
	 * 更新最新成功登入時間
	 * @return void 
	 * @throws Exception */
	public void updateLatestLogin() throws Exception {
		userService.updateLatestLoginTime(user.getAccount(), new Date());
	}
	
	/**
	 * 清除登入者代理狀態 
	 * @return void */
	public void resetSubstitutes() {
		substituteService.resetSubstitutes(user);
	}
	
	/** 使用使用者名稱、密碼獲取授權 
	 * @return Authentication */
	private Authentication getAuthByUsrAndPw(String password) {
		UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(user.getAccount(), password);
		return authenticationManagerBuilder.getObject().authenticate(authenticationToken);
	}
	
	/** 只使用使用者名稱獲取授權<br>
	 * ***請注意 : 使用者合法性需自行判斷
	 * @return Authentication */
	public Authentication getAuthByUsr() {
         UserDetails userDetails = userDetailsService.loadUserByUsername(user.getAccount());
         return new UsernamePasswordAuthenticationToken(userDetails, null, userDetails.getAuthorities());
	}
	
	/** 區分密碼種類 
	 * @return String */
	private String checkPwType(User user, String password) {
		if (passwordEncoder.matches(password, user.getPassword())) {
			if (user.getLatestLoginTime() == null) {
//				使用預設密碼
				return PRESET_PW;
			} else {
//				使用一般密碼
				return REGULAR_PW;			
			}			
		}
		
		Integer tempPwRemains = Integer.valueOf(codeDetailMap.get(Constants.SYS_FUNC, Constants.TEMP_PW_REMAINS).getProperty1());
//		查出對應使用者有效的臨時密碼
		List<UserLog> tempPwList = userLogRepository.findByAccountAndUsrOpAndUsedAndCreateTimeGreaterThan(
				user.getAccount(), Constants.OP2, 0, new Date(System.currentTimeMillis() - tempPwRemains * 60 * 1000));
		for (UserLog usrLog : tempPwList) {
			if (passwordEncoder.matches(password, usrLog.getTempPw())) {
//				臨時密碼配對成功時，將其設定為已使用
				usrLog.setUsed(1);
				userLogRepository.save(usrLog);
//				使用臨時密碼
				return TEMP_PW;
			}
		}
		return null;
	}

	/** 確認密碼是否已逾期 
	 * @return boolean */
	public PwExpiredVo checkPwExpired(String username) {
		PwExpiredVo vo = new PwExpiredVo();
		CodeDetailDto forceChangePwCode = codeDetailMap.get(Constants.SYS_FUNC, Constants.FORCE_CHANGE_PW);
		if (Boolean.FALSE.equals(forceChangePwCode.getIsEnabled())) {
			log.info(String.format(Constants.CODE_DISABLED, forceChangePwCode.getName()));
			return vo;
		}
		
		Integer period = Integer.valueOf(forceChangePwCode.getProperty1());
		if (period < 1) {
//			最小間隔為一天
			period = 1;
		}
//		查出使用者最近一次變更密碼的紀錄
		UserLog usrLog = userLogRepository.findFirstByAccountAndUsrOpOrderByPrevPwSortDesc(username, Constants.OP3);
		if (usrLog == null) {
//			使用者尚無修改密碼紀錄
			return vo;
		}
		
		Integer dateDiff = DateUtil.dateDiff(DateUtil.toLocalDateTime(usrLog.getCreateTime()), LocalDateTime.now());
		if (dateDiff <= period) {
//			使用者當前密碼尚未逾期
			return vo;
		}
//		密碼逾期處理
		vo.setExpired(true);
		vo.setMsg(dateDiff - period);
		return vo;
	}
	
	/** 確認檢核碼是否可用 
	 * @return boolean */
	public boolean checkVerifyCodeUsable(String username, String verifyCode) {
		Integer tempVerifyCodeRemains = Integer.valueOf(codeDetailMap.get(Constants.SYS_FUNC, Constants.USE_TWO_FACTOR_AUTH).getProperty1());
		List<UserLog> verifyCodeList = userLogRepository.findByAccountAndUsrOpAndUsedAndCreateTimeGreaterThan(
				username, Constants.OP4, 0, new Date(System.currentTimeMillis() - tempVerifyCodeRemains * 60 * 1000));
		for (UserLog usrLog : verifyCodeList) {
			if (usrLog.getVerify().equals(verifyCode)) {
//				檢核碼配對成功時，將其設定為已使用
				usrLog.setUsed(1);
				userLogRepository.save(usrLog);
				return true;
			}
		}
		return false;
	}
	
}
