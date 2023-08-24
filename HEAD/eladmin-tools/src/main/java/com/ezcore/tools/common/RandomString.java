package com.ezcore.tools.common;

import java.security.SecureRandom;
import java.util.HashMap;
import java.util.Map;

/**
 * 用來產生無序但有規則的隨機字串，目前用於: <br>
 * 1.密碼 <br>
 * 2.檢核碼
 */
public class RandomString {

	private final static chars[] charsArr = chars.values();
	private static SecureRandom sr = new SecureRandom();
	
	/**
	 * 新增亂數字元種類時，請於列舉處新增一行，例如:<br>
	 * TEST("=-:<;>?|#@$%");<br>
	 * 產生字串時會自動帶入使用
	 */
	private static enum chars {
		AU("ABCDEFGHIJKLMNOPQRSTUVWXYZ"), 
		AD("abcdefghijklmnopqrstuvwxyz"),
		N("0123456789");

		private String str;

		private chars(String str) {
			this.str = str;
		}
	}
	
	/**
	 * 隨機產生檢核用的字串<br>
	 * 產生長度預設為4，小於時以4作產生<br>
	 * *本方法不保證所有列舉值都會用到
	 * @param length 產生字串長度
	 * @return 隨機字串
	 */
	public static String randomVerifyCode(int length) {
		if (length < 4)
			length = 4;
		
		StringBuilder sb = new StringBuilder();
		for (int i = 0 ; i < length ; i ++) {
			sb.append(randomGenAndChar());
		}
		return sb.toString();
	}
	
	/**
	 * 隨機產生符合複雜度的密碼<br>
	 * 產生長度應大於列舉數量，小於時以列舉數量作產生<br>
	 * *本方法保證所有列舉值都會在隨機位置用到至少一次
	 * @param length 產生字串長度
	 * @return 隨機字串
	 */
	public static String randomPw(int length) {
		if (length < charsArr.length) {
			length = charsArr.length;			
		}

		Map<Integer, Character> used = new HashMap<Integer, Character>(charsArr.length, 1);
		for (int i = 0 ; i < charsArr.length ; i ++) {
			int pos = sr.nextInt(length);
			if (!used.containsKey(pos)) {
				used.put(pos, randomGenAndChar(i));
			} else {
				i --;				
			}
		}
		
		StringBuilder sb = new StringBuilder();
		for (int i = 0 ; i < length ; i ++) {
			if (!used.containsKey(i)) {
				sb.append(randomGenAndChar());				
			} else {
				sb.append(used.get(i));				
			}
		}
		return sb.toString();
	}
	
	private static char randomGenAndChar(int... specific) {
		String currentType = "";
		if (specific.length > 0) {
			currentType = charsArr[specific[0]].str;			
		} else {
			currentType = charsArr[sr.nextInt(charsArr.length)].str;						
		}
		return currentType.charAt(sr.nextInt(currentType.length()));
	}
	
}
