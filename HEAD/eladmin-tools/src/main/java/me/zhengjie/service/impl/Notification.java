package me.zhengjie.service.impl;

import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.common.CodeDetailMap;
import com.ezcore.tools.common.Constants;

import me.zhengjie.exception.BadRequestException;
import me.zhengjie.service.EmailService;
import me.zhengjie.service.SpreadSheetService;

@Component
public class Notification {

	private String subject = "";
	private String content = "";
	private String to = "";
	private String cc = "";
	private String bcc = "";
	private String attachments = "";

//	@Autowired
//	private XlsxCreator xlsxCreatorTEST;
	@Autowired
	private BeanFactory factory;
	@Autowired
	private EmailService emailService;
	
	public void sendNotification(Map<String, String> params) {
		checkAndGetCode(params.get("email"), params);
		
		checkParam(params);

		if (!notValid(this.attachments)) {
			createAttachments(params);
		}
		
		Map<String, String> emailParams = new HashMap<>();
		emailParams.put("subject", this.subject);
		emailParams.put("content", this.content);
		emailParams.put("to", this.to);
		emailParams.put("cc", this.cc);
		emailParams.put("bcc", this.bcc);
		emailParams.put("attachments", this.attachments);
		
		emailService.send(emailParams);
	}

	private void checkAndGetCode(String mailCode, Map<String, String> params) {
		CodeDetailDto mailDetail = CodeDetailMap.get("email_template", mailCode);
		if (mailDetail == null) {
			throw new BadRequestException("信件樣板: " + mailCode + "不存在");
		}
		if (!mailDetail.getIsEnabled()) {
			throw new BadRequestException("信件樣板: " + mailCode + " 未啟用");
		}
		
		this.subject = notValid(mailDetail.getProperty1()) ? 
				notValid(params.get("subject")) ? "" : params.get("subject") : mailDetail.getProperty1();
		if (this.subject.isEmpty()) {
			throw new BadRequestException("缺少信件標題(subject)，請確認代碼檔設定值");
		}
		
		this.content = notValid(mailDetail.getProperty2()) ? 
				notValid(params.get("content")) ? "" : params.get("content") : mailDetail.getProperty2();		
		if (this.content.isEmpty()) {
			throw new BadRequestException("缺少信件主文(content)，請確認代碼檔設定值");
		}
		
		this.to = notValid(mailDetail.getProperty3()) ? 
				notValid(params.get("to")) ? "" : params.get("to") : mailDetail.getProperty3();
		if (this.to.isEmpty()) {
			throw new BadRequestException("缺少主要寄信人(to)，請確認代碼檔設定值");
		}
		
		this.cc = notValid(mailDetail.getProperty4()) ? 
				notValid(params.get("cc")) ? "" : params.get("cc") : mailDetail.getProperty4();

		this.bcc = notValid(mailDetail.getProperty5()) ? 
				notValid(params.get("bcc")) ? "" : params.get("bcc") : mailDetail.getProperty5();

		this.attachments = notValid(mailDetail.getProperty6()) ? 
				notValid(params.get("attachments")) ? "" : params.get("attachments") : mailDetail.getProperty6();
	}
	
//	替換subject、content內的變數，目前格式為 @變數名稱
	private void checkParam(Map<String, String> params) {		
		for (Entry<String, String> entry : params.entrySet()) {
			String key = entry.getKey();
			String value = entry.getValue();
			
			this.subject = this.subject.replace("@" + key, value);
			this.content = this.content.replace("@" + key, value);
		}
	}
	
//	確認附件檔案是否包含報表
	private void createAttachments(Map<String, String> params) {
		String[] attachArr = this.attachments.split(",");
		String[] resultArr = new String[attachArr.length];
		for (int i = 0 ; i < attachArr.length ; i ++) {		
			String current = attachArr[i].trim();
			if (!Files.isRegularFile(Paths.get(current))) {
				params.put("form", current);
//				current = xlsxCreatorTEST.createWorkbookFromTemplate(params);
				SpreadSheetService service = factory.getBean(current, SpreadSheetService.class);
				current = service.create(params);
			}
			resultArr[i] = current;
		}
		this.attachments = String.join(",", resultArr);
	}
	
	private boolean notValid(String code) {
		return code == null || code.isEmpty() || Constants.NOT_USED.equals(code);
	}
	
}
