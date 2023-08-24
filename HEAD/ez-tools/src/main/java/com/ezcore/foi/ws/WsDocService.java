package com.ezcore.foi.ws;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Component;

import com.ezcore.common.utils.VerifyInputs;
import com.ezcore.foi.ecase.dao.CaseFlowRepository;
import com.ezcore.foi.ecase.dao.CaseMasterRepository;
import com.ezcore.foi.ecase.dao.CaseProductItemRepository;
import com.ezcore.foi.ecase.dao.CodedetailRepository;
import com.ezcore.foi.ecase.dao.entity.CaseFlow;
import com.ezcore.foi.ecase.dao.entity.CaseMaster;
import com.ezcore.foi.ecase.dao.entity.Codedetail;
import com.ezcore.foi.ws.service.ProcessAction;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.common.CodeDetailMap;

import me.zhengjie.exception.BadRequestException;
import me.zhengjie.utils.StringUtils;

//@Component
public class WsDocService {

	/** 預設載入process實作 */
	private final String DEFAULT_PROCESS_ACTION = "wsDefault";
	/** key檔案路徑 */
	private final String KEY_FILE_PATH = "ws/T.txt";
	
	@Autowired
	private BeanFactory factory;
	@Autowired
	private CodedetailRepository codedetailRepository;
	@Autowired
	private CodeDetailMap codeDetailMap;
	@Autowired
	private CaseMasterRepository caseMasterRepository;
	@Autowired
	private CaseFlowRepository caseFlowRepository;
	@Autowired
	private CaseProductItemRepository caseProductItemRepository;
	
	public void complainCheck10012(String token, String[] caseNos) {
//		1.驗證token
//		2.各案號檢查以下項目:
//		  2.1.案號是否存在對應案件主檔
//		  2.2.案件進度時間合理性
//		  2.3.爭議類型是否填寫
//		  2.4.金融業者回覆之商品種類是否填寫
//		  2.5.結案情形項目是否填寫
		
		checkToken(token);
		for (String caseNo : caseNos) {
//			2.1
			CaseMaster master = caseMasterRepository.findByCaseNo(caseNo);								// 取得案件主檔
			VerifyInputs.isNull(master, String.format("查無案號%s", caseNo));	
			
//			2.2
			List<String> flowCodes1 = new ArrayList<>();
			flowCodes1.add("10003");
			flowCodes1.add("10021");
			List<CaseFlow> group1 = caseFlowRepository.findByCaseNoAndFlowCode(caseNo, flowCodes1);		// 取得群組1: 移交業者
			List<String> flowCodes2 = new ArrayList<>();
			flowCodes1.add("10004");
			flowCodes1.add("10022");
			List<CaseFlow> group2 = caseFlowRepository.findByCaseNoAndFlowCode(caseNo, flowCodes2);		// 取得群組2: 受理業者回覆
			if (group2.isEmpty()) {																		// 群組2無資料時丟出異常
				throw new BadRequestException("無案件進度「受理金融服務業回覆申訴處理」、「回覆爭議處理機構」");
			}
			
			for (CaseFlow flow2 : group2) {
				for (CaseFlow flow1 : group1) {
					if (flow2.getFlowTime().compareTo(flow1.getFlowTime()) < 0) {						// 群組1、群組2進度時間檢查
						throw new BadRequestException(String.format("[案件號]%s[進度]%s時間早於%s", caseNo, flow2.getFlowCodeCid(), flow1.getFlowCodeCid()));
					}
				}
			}
			
//			2.3
			if (master.getDisputeKindCid() == null || master.getDisputeKindCid() == 0) {				// 爭議類型是否填寫
				throw new BadRequestException("未填寫爭議類型，請回「案管系統」處理");
			}
			
//			2.4
			if (caseProductItemRepository.countByCaseMasterTid(master.getId()) == 0) {					// 商品種類是否填寫
				throw new BadRequestException("未填寫商品種類項目，請回「案管系統」處理");
			}
			
//			2.5
			if (master.getCloseReason1Cid() == null || master.getCloseReason1Cid() == 0) {				// 結案情形是否填寫
				throw new BadRequestException("未填寫結案情形項目，請回「案管系統」處理");
			}		
		}
	}
	
	public List<CaseMaster> getUserCase(String token, String userAccount) {
//		1.驗證token
//		2.查傳入帳號下未結案(is_close=false)的案件
		
		checkToken(token);
		return caseMasterRepository.findAllByCenterOwnerAccountAndIsClose(userAccount, false);
	}
	
	/**
	 * 輸入參數:<br>
	 * String[] params = {"token", "caseno", "Process", "DocNO", "SD", "ED", "dd", "Rd", "other", "ReceiceD"};<br>
	 * <br>
	 * 回傳參數:<br>
	 * String msg<br>
	 * 成功時為空字串，異常時填入異常訊息
	 */
	public String process(String[] params) {
//		1.驗證token
//		2.使用評議代號取得主代碼
//		3.確認主代碼下是否有子代碼
//		4.載入評議代碼對應實作
		
		checkToken(params[0]);
		
//		2
		CodeDetailDto code = codeDetailMap.get("ws", params[2]);												// kind=ws, code=評議代號
		if (code == null) {
			return String.format("評議代碼: %s 未設定或無須執行動作", params[2]);
		}

//		3
		if (codedetailRepository.countByParentId(code.getCid()) > 0) {											// kind=ws.評議代號, code=other
			code = codeDetailMap.get(String.format("ws.%s", params[2]), params[8]);
			if (code == null) {
				return String.format("子代碼: ws.%s, %s 未設定或無須執行動作", params[2], params[8]);
			}
		}
		
//		4																												
		String serviceName = StringUtils.isNotUsed(code.getProperty1()) ? DEFAULT_PROCESS_ACTION : code.getProperty1();		// 依名稱取得實作
		ProcessAction action = factory.getBean(serviceName, ProcessAction.class);											// 未設定實作名稱時呼叫通用實作
		action.init(params, code);
		
		return "";
	}

	public void processAppeal(String[] params) {
		
	}
	
//	驗證來自公文系統的token
	private void checkToken(String key) {
		for (int i = -5 ; i <= 5 ; i ++) {
			String s = new SimpleDateFormat("yyyyMMddHHmm").format(System.currentTimeMillis() + TimeUnit.MINUTES.toMillis(i)) + getKey();
			byte[] crypto = getSHA1(s.getBytes(StandardCharsets.UTF_8));				// 字串轉為byte[]並進行sha1加密
			String result = Base64.getEncoder().encodeToString(crypto).trim();			// 加密後的byte[]轉為base64字串
			if (key.trim().equals(result)) {											// 驗證token是否正確
				return;
			}
		}
		throw new BadRequestException("token錯誤");										// 丟出token錯誤
	}

	private String getKey() {
		StringBuilder sb = new StringBuilder();
		try (BufferedReader br = new BufferedReader(new InputStreamReader(new ClassPathResource(KEY_FILE_PATH).getInputStream()));) {
			String line = null;
			while ((line = br.readLine()) != null) {
				sb.append(line);
			}
		} catch (IOException e) {
			throw new BadRequestException("檔案讀取失敗");
		}
		return sb.toString();
	}
    
	private byte[] getSHA1(byte[] byteArr) {
		byte[] result = null;
    	try {
			MessageDigest md = MessageDigest.getInstance("SHA-1");
			md.reset();
            md.update(byteArr);
            result = md.digest();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
    	return result;
    }
	
}
