package com.ezcore.tools.codedetail.model;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Component;

import com.ezcore.tools.codedetail.model.exception.ResponseDataException;

import me.zhengjie.utils.DateUtil;
@Component
public class Tool {
	private Tool(){
		
	}
	public static void checkCarrierCode(String carrierCode,String jobCode, String matchString) throws ResponseDataException {
		if(!carrierCode.matches(matchString)) 
			throw new ResponseDataException(-3,"","輸入錯誤","不正確的載體編號",jobCode);
		}
	
	public static String getGuiNoNum(String guiNo) {
		Pattern pattern = Pattern.compile("[0-9]{5}");
		Matcher matcher = pattern.matcher(guiNo);
		matcher.find();
		return matcher.group();
	}
	
	public static long timeToDay(Long time) {
		return time/(24 * 60 * 60 * 1000);
	}
	
	public static Date now() {
		return Date.from(LocalDateTime.now().atZone(ZoneId.systemDefault()).toInstant());
	}
}
