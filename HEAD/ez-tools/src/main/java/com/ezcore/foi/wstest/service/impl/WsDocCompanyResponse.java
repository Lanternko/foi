package com.ezcore.foi.wstest.service.impl;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ezcore.common.utils.VerifyInputs;
import com.ezcore.foi.common.FoiConstants;
import com.ezcore.foi.ecase.dao.CaseFlowRepository;
import com.ezcore.foi.ecase.dao.CaseMasterRepository;
import com.ezcore.foi.ecase.dao.entity.CaseMaster;
import com.ezcore.foi.wstest.service.ProcessAction;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.common.CodeDetailMap;

import me.zhengjie.utils.StringUtils;

@Service("wsDocCompanyResponse")
public class WsDocCompanyResponse extends WsDocBaseAction {

	private final String EDOC = "1";  // 電子 (other=1)

	@Autowired
	private BeanFactory factory;
	@Autowired
	private CaseFlowRepository caseFlowRepository;
	@Autowired
	private CaseMasterRepository caseMasterRepository;
	@Autowired
	private CodeDetailMap codeDetailMap;
	
	@Override
	protected boolean preProcess() {
//		1.異動收文時間(sd)
//		2.判斷紙本(other=0)或電子(other=1)
//		  2.1 為電子時: 比較收文時間(sd)與來文日期(rd)
//		3.確認流程10035是否已存在
//		  3.1.已存在，中斷流程

//		1
		dateParams[DocDateType.RECEIVE_DATE] = compareSdToReviceD(dateParams[DocDateType.RECEIVE_DATE], dateParams[DocDateType.APPL_DATE]);
		
		if (other.equals(EDOC)) {
//			2.1
			compareSdToRd(dateParams[DocDateType.RECEIVE_DATE], dateParams[DocDateType.APPL_DATE]);
			
			setDocDateParameter(DocDateType.APPL_DATE);																		// 使用來文日期(rd)
		} else {
			setDocDateParameter(DocDateType.RECEIVE_DATE);																	// 使用收文日期(sd)
		}
		
//		3.1
		return check10035exists();
	}

	@Override
	protected void postProcess() throws Exception {		
//		1.確認案件類型
//		  C1: 受理金融服務業回覆陳述意見
//	      C2: 金融服務業回覆申訴處理結果
//	      C3: 受理金融服務業回覆處理申訴
//		2.依前置流程中決定的受理後進度參數(followedUpParam)查下一流程代碼
//		  2.1.若下一流程代碼與當前流程代碼使用同一日期參數，將下一代碼的日期加1分鐘
//		3.執行評議代碼對應實作

		CaseMaster master = VerifyInputs.checkCaseMaster(caseMasterRepository.findByCaseNo(caseNo));
		CodeDetailDto caseTypeCode = VerifyInputs.checkCode(FoiConstants.CASE_TYPE, codeDetailMap.get(master.getCaseTypeCid()));

//		1
		String followedUpParam = "";
		if (FoiConstants.C01001.equals(caseTypeCode.getCode())) {
			CodeDetailDto caseClassCode = codeDetailMap.get(master.getCaseClassCid());
			if (FoiConstants.A.equals(caseClassCode.getProperty1()) || 
					FoiConstants.B.equals(caseClassCode.getProperty1()) || 
					FoiConstants.C.equals(caseClassCode.getProperty1())) {
				followedUpParam = "C1";
			} else {
				followedUpParam = "C2";
			}
		} else {
			followedUpParam = "C3";
		}
		
//		2
		String followedUpDocAction = String.format("%s.%s", process, followedUpParam);
		CodeDetailDto followedUpDocActionCode = codeDetailMap.get(FoiConstants.WS, followedUpDocAction);
		if (followedUpDocActionCode == null || StringUtils.isNotUsed(followedUpDocActionCode.getProperty1())) {
			throw new Exception(String.format("評議代碼: %s 未設定或無須執行動作", followedUpDocAction));
		}
		
//		2.1
//		if (followedUpDocActionCode.getProperty3().equals(code.getProperty3())) {
		long insertedDate = dateParams[Integer.valueOf(code.getProperty3())].getTime();
		long nextInsertDate = dateParams[Integer.valueOf(followedUpDocActionCode.getProperty3())].getTime();
		if (insertedDate == nextInsertDate) {
			long oneMinute = 60 * 1000L;
//			dateParams[Integer.valueOf(code.getProperty3())] = new Timestamp(nextInsertDate + oneMinute);
			modOriParams(DocDateType.getOriParamsIndex(
					Integer.valueOf(followedUpDocActionCode.getProperty3())), new Timestamp(nextInsertDate + oneMinute).toString().replace("-", "/"));
		}
		
		ProcessAction followedUpAction = factory.getBean(followedUpDocActionCode.getProperty1(), ProcessAction.class);
		followedUpAction.run(getOriParams(), followedUpDocActionCode);
	}
	
//	確認收文時間(sd)與電子來文轉入日期(reviceD)是否為同日期
//	相同時回傳SD，不同時回傳「reviceD的日期+19:30:00」
	private Timestamp compareSdToReviceD(Timestamp sd, Timestamp reviceD) {
		Calendar cal = Calendar.getInstance();
		cal.setTimeInMillis(sd.getTime());
		int sdYear = cal.get(Calendar.YEAR);
		int sdMonth = cal.get(Calendar.MONTH) + 1;
		int sdDay = cal.get(Calendar.DAY_OF_MONTH);
		
		cal.setTimeInMillis(reviceD.getTime());
		int revicedYear = cal.get(Calendar.YEAR);
		int revicedMonth = cal.get(Calendar.MONTH) + 1;
		int revicedDay = cal.get(Calendar.DAY_OF_MONTH);

		return sdYear == revicedYear && sdMonth == revicedMonth && sdDay == revicedDay ? 
				sd : Timestamp.valueOf(String.format("%s-%s-%s %s:%s:%s", revicedYear, revicedMonth, revicedDay, 19, 30, 00));
	}

//	收文日期(sd)早於來文日期(rd)時，交換來文日期與收文日期
	private void compareSdToRd(Timestamp sd, Timestamp rd) {
		if (sd.compareTo(rd) < 0) {
			dateParams[DocDateType.APPL_DATE] = sd;
			dateParams[DocDateType.RECEIVE_DATE] = rd;
		}
	}
	
//	確認文號下是否已存在案管流程10035(回覆爭議處理機構)
	private boolean check10035exists() {
		List<String> flowCode = new ArrayList<>();
		flowCode.add("10035");
		return !caseFlowRepository.findByCaseNoAndFlowCode(caseNo, flowCode).isEmpty();
	}

}
