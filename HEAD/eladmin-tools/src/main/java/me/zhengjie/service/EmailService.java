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
package me.zhengjie.service;

import me.zhengjie.service.dto.EmailQueryCriteria;

import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Pageable;

/**
 * @author Zheng Jie
 * @date 2018-12-26
 */
public interface EmailService {
	
	/**
	 * 寄出電子信件
	 */
	void send(Map<String, String> params);

	void resend(List<Long> id);

	/**
     * 寄件歷程查詢
     */
    Object queryAll(EmailQueryCriteria criteria, Pageable pageable);
    
    EmailQueryCriteria processSearchKeywords(EmailQueryCriteria criteria);

}
