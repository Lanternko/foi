package com.ezcore.tools.common;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 * 依所給規則字串將10進制正整數轉為對應N進制的字串，目前用於:<br>
 * 1.縮網址產生<br>
 * (說明請見me.zhengjie.modules.security.service.GenerateService的provideShortUrl方法)
 */
public class CustomIntegerRepresents {

	/**
	 * 選用: 確認規格字串正確性<br>
	 * 規則字串內的字元不應重複
	 * @param rule 規則
	 * @return boolean
	 */
	public static boolean checkRule(String rule) {
		Set<Character> set = new HashSet<>();
		for (int i = 0 ; i < rule.length() ; i ++) {
			if (set.contains(rule.charAt(i))) {
				return false;
			}
			set.add(rule.charAt(i));
		}
		return true;
	}
	
	/**
	 * 依規則轉換數字為字串
	 * @param rule 規則
	 * @param index 數字
	 * @return string
	 */
	public static String encode(String rule, int index) {
		int length = rule.length();
		
		StringBuilder rtn = new StringBuilder();
		while (index >= length) {
			rtn.append(rule.charAt((index % length) - 1));
			index /= length;
		}
		rtn.append(rule.charAt(index - 1));
		return rtn.toString();
	}
	
	/**
	 * 依規則還原字串為數字
	 * @param rule 規則
	 * @param str 字串
	 * @return int
	 */
	public static int decode(String rule, String str) {
		int length = rule.length();

		Map<Character, Integer> map = new HashMap<>();
		for (int i = 0 ; i < length ; i ++) {
			map.put(rule.charAt(i), i + 1);
		}
		int times = 0;
		double rtn = 0;
		for (int i = 0 ; i < str.length() ; i ++) {
			rtn += map.get(str.charAt(i)) * Math.pow(length, times++);
		}
		return (int) rtn;
	}
	
	private CustomIntegerRepresents() {
	}
	
}