package me.zhengjie.modules.system.service.impl;

import java.security.SecureRandom;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.common.CodeDetailMap;
import com.ezcore.tools.common.Constants;
import com.ezcore.tools.common.CustomIntegerRepresents;
import com.ezcore.tools.common.RandomString;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import me.zhengjie.exception.BadRequestException;
import me.zhengjie.exception.handler.SysErrLev;
import me.zhengjie.modules.system.domain.UrlMapping;
import me.zhengjie.modules.system.domain.User;
import me.zhengjie.modules.system.domain.UserLog;
import me.zhengjie.modules.system.repository.UrlMappingRepository;
import me.zhengjie.modules.system.repository.UserLogRepository;
import me.zhengjie.modules.system.repository.UserRepository;
import me.zhengjie.modules.system.service.GenerateService;
import me.zhengjie.service.EmailService;
import me.zhengjie.utils.DateUtil;

@Slf4j
@Service
@RequiredArgsConstructor
public class GenerateServiceImpl implements GenerateService {

	private final UserRepository userRepository;
	private final UserLogRepository userLogRepository;
	private final PasswordEncoder passwordEncoder;
	private final EmailService emailServiceImpl;
	private final UrlMappingRepository urlMappingRepository;
	
	private final CodeDetailMap codeDetailMap;
	private SecureRandom sr = new SecureRandom();

	@Override
	/**
	 * 提供暫時性密碼
	 * 檢查使用者輸入的帳戶和電郵是否符合，並產生暫時性密碼寄發給使用者
	 * 寫入一筆發行暫時性密碼的紀錄
	 * @param account 使用者帳戶
	 * @param usermail 使用者電郵
	 */
	public void provideTempPw(String account, String usermail) throws Exception {
		if (account.isEmpty() || usermail.isEmpty()) {
    		throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "輸入不可為空白");
    	}
    	
    	User user = userRepository.findByAccount(account);
    	if (user == null || !usermail.equals(user.getEmail())) {
    		throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "帳號與留存電子信箱資訊不一致，請再檢查一遍");
    	}

    	String tempPw = RandomString.randomPw(10);
    	if (codeDetailMap.get(Constants.SYS_FUNC, Constants.LOG_PW).getIsEnabled()) {
    		log.info(String.format("臨時密碼 : %s", tempPw));    		
    	}

    	CodeDetailDto code = codeDetailMap.get(Constants.EMAIL_TEMPLATE, Constants.SEND_TEMP_PW);
    	Map<String, String> params = createMailContents(code, usermail, "provideTempPw");
    	params.put("content", String.format(params.get("content"), tempPw));
    	emailServiceImpl.send(params);
    	
//    	寫入一筆發行臨時密碼紀錄
    	UserLog usrLog = new UserLog();
    	usrLog.setAccount(account);
    	usrLog.setUsrOp(Constants.OP2);
    	usrLog.setUsed(0);
    	usrLog.setTempPw(passwordEncoder.encode(tempPw));
    	usrLog.setCreateBy(Constants.SYSTEM);
		usrLog.setUpdateBy(Constants.SYSTEM);
    	userLogRepository.save(usrLog);
	}

	@Override
	/**
	 * 提供驗證碼
	 * 檢查使用者帳戶是否存在並取得使用者電郵，產生驗證碼並寄發給使用者
	 * 寫入一筆發行驗證碼的紀錄
	 * @param account 使用者帳戶
	 * @return 是否為首次登入且無電子信箱的帳號
	 */
	public Boolean provideVerifyCode(String account) {
		User user = userRepository.findByAccount(account);
		String userMail = user.getEmail();
		if (userMail == null || userMail.isEmpty()) {
//			首次登入且無電子信箱的帳號
			return true;
		}

		String verifyCode = RandomString.randomVerifyCode(4);
		if (codeDetailMap.get(Constants.SYS_FUNC, Constants.LOG_PW).getIsEnabled()) {
			log.info(String.format("檢核碼 : %s", verifyCode));
		}
		
//		寄出檢核碼信件
		CodeDetailDto code = codeDetailMap.get(Constants.EMAIL_TEMPLATE, Constants.SEND_VERIFY_CODE);
    	Map<String, String> params = createMailContents(code, userMail ,"provideVerifyCode");
    	params.put("content", String.format(params.get("content"), verifyCode));
    	emailServiceImpl.send(params);
		
//		寫入一筆發行檢核碼紀錄
		UserLog usrLog = new UserLog();
		usrLog.setAccount(account);
		usrLog.setUsrOp(Constants.OP4);
		usrLog.setVerify(verifyCode);
		usrLog.setUsed(0);
		usrLog.setCreateBy(Constants.SYSTEM);
		usrLog.setUpdateBy(Constants.SYSTEM);
		userLogRepository.save(usrLog);
		
		return false;
	}
	
	@SuppressWarnings("serial")
	private Map<String, String> createMailContents(CodeDetailDto template, String usermail, String apiName) {
		if (template == null) {
			throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "未找到或未設定信件內容範本");
		}
		
		return new HashMap<String, String>() {{
			put("subject", template.getProperty1());
			put("content", template.getProperty2());
//			put("to", usermail);
			put("to", "andy.song@ezcore.tw");
			put("cc", "");
			put("bcc", "");
			put("attachments", "");
			put("fromapi", apiName);
			put("scheduled", "false");
		}};
	}

	@Override
	/**
	 * 提供短網址
	 * 檢查系統是否開啟產生短網址的功能並檢查輸入的全網址是否包含保留字串，並產生短網址
	 * 寫入一筆短網址的紀錄
	 * @param fullurl 全網址
	 * @return 短網址
	 */
	public String provideShortUrl(String fullurl) {
    	CodeDetailDto code = codeDetailMap.get(Constants.SYS_FUNC, Constants.URL_SHORTEN_RULE);
    	if (!code.getIsEnabled()) {
    		throw new BadRequestException(SysErrLev.SYSTEM_CONFIGURATION_ERROR, "未開啟產生縮網址功能");
    	}
    	
    	if (fullurl.contains("/ez.ln/")) {
    		throw new BadRequestException("「/ez.ln/」為功能保留字串，請勿使用");
    	}
    	
    	if (!CustomIntegerRepresents.checkRule(code.getProperty1())) {
    		throw new BadRequestException(SysErrLev.SYSTEM_CONFIGURATION_ERROR, "短網址產生規則有誤，請修正");
    	}
    	
//    	在integer範圍內產生一個隨機數字作為id
    	int index = sr.nextInt(Integer.MAX_VALUE) + 1;
    	while (urlMappingRepository.checkExists(index) != null) {
    		UrlMapping mapping = urlMappingRepository.findById(index).get();
    		if (Integer.valueOf(code.getProperty2()) <= DateUtil.dateDiff(DateUtil.toLocalDateTime(mapping.getCreateTime()), LocalDateTime.now())) {
//    			若index已過期，進行刪除
    			urlMappingRepository.delete(mapping);
    			break;
        	} else {
        		index = sr.nextInt(Integer.MAX_VALUE) + 1;        		
        	}
    	}
   	
    	String ezurl = CustomIntegerRepresents.encode(code.getProperty1(), index);
    	
    	UrlMapping mapping = new UrlMapping();
    	mapping.setId(index);
    	mapping.setFullUrl(fullurl);
    	
    	urlMappingRepository.saveAndFlush(mapping);
    	
    	CodeDetailDto domain = codeDetailMap.get(Constants.SYS_FUNC, Constants.DOMAIN);
    	ezurl = domain.getProperty1() + "/ez.ln/" + ezurl;
    	log.info("縮網址: " + ezurl);
    	return ezurl;
	}
	
}
