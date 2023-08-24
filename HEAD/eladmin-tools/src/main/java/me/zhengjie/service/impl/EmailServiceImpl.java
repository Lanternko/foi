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
package me.zhengjie.service.impl;

import java.io.File;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.mail.MessagingException;

import org.springframework.cache.annotation.CacheConfig;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.common.CodeDetailMap;
import com.ezcore.tools.common.Constants;
import com.ezcore.tools.common.EmailSender;

import lombok.RequiredArgsConstructor;
import me.zhengjie.domain.Attatchment;
import me.zhengjie.domain.Contacts;
import me.zhengjie.domain.Email;
import me.zhengjie.exception.BadRequestException;
import me.zhengjie.exception.handler.SysErrLev;
import me.zhengjie.repository.ContactsRepository;
import me.zhengjie.repository.EmailRepository;
import me.zhengjie.service.EmailService;
import me.zhengjie.service.dto.EmailQueryCriteria;
import me.zhengjie.utils.DateUtil;
import me.zhengjie.utils.PageUtil;
import me.zhengjie.utils.QueryHelp;
import me.zhengjie.utils.StringUtils;
/**
 * @author Zheng Jie
 * @date 2018-12-26
 */
@Service
@RequiredArgsConstructor
@CacheConfig(cacheNames = "email")
public class EmailServiceImpl implements EmailService {

	private final int CONTENT_COLUMN_LENGTH = 254;
	
    private final EmailRepository emailRepository;
    private final ContactsRepository contactsRepository;
    
    private final CodeDetailMap codeDetailMap;

    @SuppressWarnings("serial")
    Set<String> successKeywords = new HashSet<String>() {{ 
    	add("正確"); add("成功"); add("info"); add("success"); add("correct"); add("good"); add("ok");
    }};
    @SuppressWarnings("serial")
	Set<String> errKeywords = new HashSet<String>() {{
		add("錯誤"); add("失敗"); add("error"); add("err"); add("fail"); add("wrong"); add("bad");
	}};
	@SuppressWarnings("serial")
	Set<String> pendingKeywords = new HashSet<String>() {{
		add("等待"); add("待辦"); add("pend"); add("pending"); add("wait"); add("stop");
	}};
    
    @Override
    public Object queryAll(EmailQueryCriteria criteria, Pageable pageable) {
//    	依時間、使用者輸入條件查出符合的寄信紀錄
    	List<Email> list = emailRepository.findAll((root, criteriaQuery, cb) -> QueryHelp.getPredicateByUser(root, criteria, cb));

    	List<Email> result = new ArrayList<>();		// 將顯示在前端的結果集合
    	List<Email> main = new ArrayList<>();
    	Map<Long, Email> sub = new HashMap<>();
    	for (Email row : list) {
    		if (row.getChild() == null && row.getSubject() != null) {
//    			無需處理的主列
    			result.add(row);
    		} else if (row.getChild() != null && row.getSubject() != null) {
//    			需串接子列的主列
    			main.add(row);
    		} else {
//    			子列
    			sub.put(row.getId(), row);
    		}
    	}

//    	主列串接子列並加入結果集合，移除用過的子列
    	for (Email mainrow : main) {
    		result.add(findChild(mainrow.getChild(), mainrow, sub));
    	}
    	
//    	此階段若子列集合裡還有資料，表示本次查詢為內文模糊搜索  	
    	if (sub.size() > 0) {
    		Set<Email> mainSec = new HashSet<>();
//    		直接連續查出個別子列的主列物件
    		sub.forEach((k, v) -> mainSec.add(findParent(k, v)));
//    		使用主列物件向下串接子列，串接完加入結果集合
    		for (Email mainrow : mainSec) {
    			result.add(findChild(mainrow.getChild(), mainrow, sub));
    		}
    	}

    	CodeDetailDto code = CodeDetailMap.get(Constants.SYS_FUNC, Constants.FAILED_RESEND_REMAINS);
    	if (code.getIsEnabled()) {
//    		對逾期的未寄出信件作標記
    		for (Email r : result) {
    			if (r.getStatus() != null 
    					&& !r.getStatus().equals("sended")
    					&& DateUtil.dateDiff(LocalDateTime.now(), r.getCreateTime().toLocalDateTime()) >= Integer.valueOf(code.getProperty1())) {
    				r.setSubject("已逾期" + r.getSubject());
    			}
    		}
    	}
  	
//    	對最終結果排序
    	Collections.sort(result, new Comparator<Email>() {
			@Override
			public int compare(Email e1, Email e2) {
				return e2.getCreateTime().compareTo(e1.getCreateTime());
			}	
		});

//    	對最終結果分頁
    	return PageUtil.toPage(result, pageable);
    }

    @SuppressWarnings("serial")
	@Override
    @Transactional(rollbackFor = Exception.class)
    public void send(Map<String, String> params) {
    	String status = "";
    	Timestamp sendedTime = null;
    	Timestamp failedTime = null;
    	if (params.containsKey("scheduled") && "true".equals(params.get("scheduled"))) {
    		status = "pending";
    	} else {
    		try {
    			CodeDetailDto code = getMailServerConfig();
    			params.put("host", code.getProperty1());
    			params.put("port", code.getProperty2());
    			params.put("user", code.getProperty3());
    			params.put("pw", code.getProperty4());
    			params.put("from", "system");
//    			寄出信件
    			EmailSender.sendEmulate(params);
    			sendedTime = DateUtil.getSystemTime();
    			status = "sended";
    		} catch (MessagingException e) {
    			e.printStackTrace();
    			failedTime = DateUtil.getSystemTime();
    			status = "failed";
    		}    		
    	}
    	
//    	信件本文超出上限長度時進行切分
    	String[] contents = StringUtils.splitStringByLength(CONTENT_COLUMN_LENGTH, params.get("content"));
    	Long childId = null;
    	Timestamp createTime = DateUtil.getSystemTime();
    	for (int i = contents.length - 1 ; i >= 0 ; i --) {
    		Email email = new Email();
    		if (i > 0) {
//    			為切分資料時填入parent id、切分字串，其他內容留空
    			email.setChild(childId);
    			email.setContent(contents[i]);
    		} else {
    			email.setChild(childId);
    			email.setStatus(status);
    			email.setSubject(params.get("subject"));
    			email.setContent(contents[i]);
    			email.setFromApi(params.get("fromapi"));
    			email.setTo(new HashSet<Contacts>() {{
    				for (String to : params.get("to").split(",")) {
    					if (!to.isEmpty()) {
    						Contacts con = contactsRepository.findByAddress(to);
    						add(con == null ? new Contacts(to) : con);
    					}    					
    				}
    			}});
    			email.setCc(new HashSet<Contacts>() {{
    				for (String cc : params.get("cc").split(",")) {
    					if (!cc.isEmpty()) {
    						Contacts con = contactsRepository.findByAddress(cc);
    						add(con == null ? new Contacts(cc) : con);    						
    					}    						
    				}
    			}});
    			email.setBcc(new HashSet<Contacts>() {{
    				for (String bcc : params.get("bcc").split(",")) {
    					if (!bcc.isEmpty()) {
    						Contacts con = contactsRepository.findByAddress(bcc);
    						add(con == null ? new Contacts(bcc) : con);    						
    					}    						
    				}
    			}});
    			email.setAttachments(new HashSet<Attatchment>() {{
    				for (String att : params.get("attachments").split(",")) {
    					if (!att.isEmpty()) {
    						add(new Attatchment(att.substring(att.lastIndexOf(File.separator) + 1), att));    					
    					}
    				}
    			}});
    			email.setCreateBy("system");
    			email.setCreateTime(createTime);
    			email.setSendedTime(sendedTime);
    			email.setFailedReportTime(failedTime);
    		}
//    		子列先寫入，取得回傳id後填進上一層，重複至主列寫入
    		childId = emailRepository.saveAndFlush(email).getId();
    	}
    }
    
	@SuppressWarnings("serial")
	@Override
    public void resend(List<Long> ids) {
		List<Email> list = new ArrayList<>();
		emailRepository.findAllById(ids).forEach(email -> list.add(findChild(email.getChild(), email, Collections.emptyMap())));

		list.forEach(e -> {
			String status = "";
			Timestamp sendedTime = null;
			Timestamp failedTime = null;
			try {
				CodeDetailDto code = getMailServerConfig();
				EmailSender.sendEmulate(new HashMap<String, String>() {{
					put("host", code.getProperty1());
					put("port", code.getProperty2());
					put("user", code.getProperty3());
					put("pw", code.getProperty4());
					put("from", "system");
					put("subject", e.getSubject());
					put("content", e.getContent());
					put("to", String.join(",", new ArrayList<String>() {{
						e.getTo().forEach(t -> add(t.getAddress()));
					}}));
					put("cc", String.join(",", new ArrayList<String>() {{
						e.getCc().forEach(c -> add(c.getAddress()));
					}}));
					put("bcc", String.join(",", new ArrayList<String>() {{
						e.getCc().forEach(b -> add(b.getAddress()));
					}}));
					put("attachments", String.join(",", new ArrayList<String>() {{
						e.getAttachments().forEach(a -> add(a.getFilePath()));
					}}));
					put("fromapi", e.getFromApi());
				}});
				sendedTime = DateUtil.getSystemTime();
    			status = "sended";
			} catch (MessagingException e1) {
    			e1.printStackTrace();
    			failedTime = DateUtil.getSystemTime();
    			status = "failed";
			}
			
			Email current = emailRepository.findById(e.getId()).get();
			current.setStatus(status);
			current.setSendedTime(sendedTime);
			current.setFailedReportTime(failedTime);
			emailRepository.save(current);
		});
    }

    @Override
    public EmailQueryCriteria processSearchKeywords(EmailQueryCriteria criteria) {
    	if (criteria.getBlurry() == null) {
    		return criteria;
    	}
    	
    	String[] options = null;
//    	切分多條件
    	if (criteria.getBlurry().indexOf(',') > -1) {
    		options = criteria.getBlurry().split(",");
    	} else {
    		options = new String[1];
    		options[0] = criteria.getBlurry();
    	}
    	
    	Set<String> set = new HashSet<>(4, 1);
    	for (int i = 0 ; i < options.length ; i ++) {
    		String temp = options[i].trim();
//    		識別輸入是否為email格式
    		if (temp.matches("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\\\.[a-zA-Z]{2,}$")) { //原判別式：^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$，已修改
    			criteria.setId(getReceiver(temp));
    		} else if (successKeywords.contains(temp.toLowerCase())) {
    			set.add("sended");
    		} else if (errKeywords.contains(temp.toLowerCase())) {
    			set.add("failed");
    		} else if (pendingKeywords.contains(temp.toLowerCase())) {
    			set.add("pending");
    		} else {
    			continue;
    		}
    		options[i] = null;
    	}
    	criteria.setStatus(set);
    	
    	criteria.setBlurry(null);
    	for (String op : options) {
    		if (op != null) {
    			criteria.setBlurry(op);    			    				
    		}
    	}
    	return criteria;
    }
    
    @SuppressWarnings("serial")
	private Set<Long> getReceiver(String str) {
    	Set<Contacts> set = contactsRepository.findByAddressContaining(str);
    	if (set.size() > 0) {
//    		有查到相同的email就直接回傳
    		return new HashSet<Long>() {{ set.forEach(c -> c.getTo().forEach(e -> add(e.getId()))); }};
    	}
//    	查「@」前字串
    	Set<Contacts> setFront = contactsRepository.findByAddressContaining(str.substring(0, str.indexOf('@')));
//    	查「@」後字串，不含「.」與之後部分
    	Set<Contacts> setBack = contactsRepository.findByAddressContaining(str.substring(str.indexOf('@') + 1, 
    			str.lastIndexOf('.') > -1 ? str.lastIndexOf('.') : str.length()));
//    	取聯集
    	setFront.addAll(setBack);
    	return new HashSet<Long>() {{ setFront.forEach(c -> c.getTo().forEach(e -> add(e.getId()))); }};
    }
    
    private CodeDetailDto getMailServerConfig() {
    	CodeDetailDto code = CodeDetailMap.get(Constants.SYS_FUNC, Constants.MAILSERVER_TEST);
		if (code == null) {
			throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "未找到或未設定信件伺服器");
		}
		return code;
    }
    
//  任意資料列串接子列物件
    private Email findChild(Long childId, Email parent, Map<Long, Email> sub) {
    	if (childId == null) {
    		return parent;
    	}
    	
    	Email child = null;
    	if (sub.containsKey(childId)) {
    		child = sub.get(childId);
    		sub.remove(childId);
    	} else {
    		child = emailRepository.findById(childId).get();
    	}
    	parent.setContent(parent.getContent() + child.getContent());
    	return findChild(child.getChild(), parent, sub);
    }
 
//  查任意子列的主列物件
    private Email findParent(Long id, Email current) {
    	Email parent = emailRepository.findByChild(id);
    	if (parent == null) {
    		return current;
    	}
    	return findParent(parent.getId(), parent);
    }
    
}
