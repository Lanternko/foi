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
package me.zhengjie.exception;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import me.zhengjie.utils.StringUtils;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;

/**
 * 使用者相關異常處理
 */
@Slf4j
@EqualsAndHashCode(callSuper=false)
@Data
@NoArgsConstructor
@JsonInclude(JsonInclude.Include.NON_NULL)
@JsonIgnoreProperties(ignoreUnknown = true)
public class BadRequestException extends RuntimeException {

	private final Integer DEFAULT_CODE = -1;
	private final String DEFAULT_TITLE = "終止執行";
	private final String DEFAULT_TYPE = "error";
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	private String sql = "select property1 as type, property2 as title, property3 as content "
			+ "from codedetail where kind = 'sys.res_state' and code = '@var'";
	
	private Integer code;
	private String title;
	private String type;
	private String content;
	private String controllerMethod = getJobCode();

// 	開發者丟出的異常(通常為user資料、操作問題)預設以-1處理
// 	若有需要比較高等級可使用第二個自己填code的
	public BadRequestException(String title){
        this.code = DEFAULT_CODE;
        this.title = StringUtils.isEmptyOrNull(title) ? DEFAULT_TITLE : title;
        this.content = StringUtils.isEmptyOrNull(title) ? DEFAULT_TITLE : title;
        this.type = DEFAULT_TYPE;
    }
	
	public BadRequestException(Integer code){
		List<Map<String, Object>> rowDatas = getSysResCode(code);
		this.code = rowDatas == null ? DEFAULT_CODE : code;
		this.title = StringUtils.isEmptyOrNull((String) rowDatas.get(0).get("title")) ? DEFAULT_TITLE : (String) rowDatas.get(0).get("title");
		this.content = StringUtils.isEmptyOrNull((String) rowDatas.get(0).get("content")) ? DEFAULT_TITLE : (String) rowDatas.get(0).get("content");
		this.type = StringUtils.isEmptyOrNull((String) rowDatas.get(0).get("type")) ? DEFAULT_TYPE : (String) rowDatas.get(0).get("type");
	}
	
	public BadRequestException(Integer code, String title){
		this.code = code == null ? DEFAULT_CODE : code;
		this.title = StringUtils.isEmptyOrNull(title) ? DEFAULT_TITLE : title;
		this.content = StringUtils.isEmptyOrNull(title) ? DEFAULT_TITLE : title;
		this.type = DEFAULT_TYPE;
	}

	public BadRequestException(Integer code, String title, String type){
		this.code = code == null ? DEFAULT_CODE : code;
		this.title = StringUtils.isEmptyOrNull(title) ? DEFAULT_TITLE : title;
		this.content = StringUtils.isEmptyOrNull(title) ? DEFAULT_TITLE : title;
		this.type = StringUtils.isEmptyOrNull(type) ? DEFAULT_TYPE : type;
	}

//  找同thread下第一個進入的方法
    private String getJobCode() {
  		StackTraceElement[] current = Thread.currentThread().getStackTrace();
		for (int i = 0 ; i < current.length ; i ++) {
			if (current[i].getMethodName().equals("invoke")) { 
				return current[i - 1].getMethodName();
			}
		}
		return "";   	
    }
    
    private List<Map<String, Object>> getSysResCode(Integer code) {
    	this.sql = this.sql.replace("@var", code.toString());
    	
    	List<Map<String, Object>> rowDatas = null;
		try {
			rowDatas = jdbcTemplate.queryForList(this.sql);			
		} catch (DataAccessException e) {
			log.warn(String.format("代碼檔中未定義此代碼(code=%s)，使用預設代碼(code=-1)", code));
		}
		return rowDatas;
    }

}
