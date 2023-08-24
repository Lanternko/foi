package com.ezcore.common.utils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ezcore.foi.common.FoiConstants;
import com.ezcore.foi.ecase.dao.CaseFileLogRepository;
import com.ezcore.foi.ecase.dao.CaseOwnerLogRepository;
import com.ezcore.foi.ecase.dao.DeleteLogRepository;
import com.ezcore.foi.ecase.dao.entity.CaseFileLog;
import com.ezcore.foi.ecase.dao.entity.CaseMaster;
import com.ezcore.foi.ecase.dao.entity.CaseOwnerLog;
import com.ezcore.foi.ecase.dao.entity.DeleteLog;
import com.ezcore.tools.common.CodeDetailMap;

import me.zhengjie.utils.DateUtil;
import me.zhengjie.utils.SecurityUtils;
import me.zhengjie.utils.StringUtils;

@Component
public class ModifyLogWriter {

	@Autowired
	private DeleteLogRepository deleteLogRepository;
	@Autowired
	private CaseOwnerLogRepository caseOwnerLogRepository;
//	@Autowired
//	private CodedetailRepository codedetailRepository;
	@Autowired
	private CodeDetailMap codeDetailMap;
	@Autowired
	private CaseFileLogRepository caseFileLogRepository;
	
	/**
	 * 刪除一筆業務資料時，新增一筆刪除紀錄
	 */
	public void newDeleteRecord(String tableId, String tableName) {
		DeleteLog log = new DeleteLog();
		log.setTableId(tableId);
		log.setTableName(tableName);
		log.setCreateBy(SecurityUtils.getCurrentUsername());
		log.setCreateTime(DateUtil.getSystemTime());
		
		deleteLogRepository.saveAndFlush(log);
	}
	
	/**
	 * 異動一次案件所有人時，新增一筆紀錄
	 */
	public void newCaseOwnerModifyRecord(CaseMaster caseMaster, String ownerType) {
		CaseOwnerLog log = new CaseOwnerLog();
		log.setId(StringUtils.newUuidStr());
		log.setCaseMasterTid(caseMaster.getId());
//		log.setOwnerTypeCid(codedetailRepository.findByKindAndCode(Constants.OWNER_TYPE, ownerType).getCid().intValue());
		log.setOwnerTypeCid(codeDetailMap.get(FoiConstants.OWNER_TYPE, ownerType).getCid().intValue());
		log.setOwnerAccount(caseMaster.getCenterOwnerAccount());
		log.setCreateBy(SecurityUtils.getCurrentUsername());
		log.setCreateTime(DateUtil.getSystemTime());
		
		caseOwnerLogRepository.saveAndFlush(log);
	}
	
	/*
	 * 更改案件時，新增一筆紀錄
	 */
	public void newCaseFileActivity(String caseNo, Long caseFileTypeCid, String fromTableName, String fromTableTid, 
		    int seqNo, Long toolLocalStorageId, String size, String sha2, String action) {
		    
		    CaseFileLog log = new CaseFileLog();
		    log.setCaseNo(caseNo);
		    log.setCaseFileTypeCid(caseFileTypeCid);
		    log.setFromTableName(fromTableName);
		    log.setFromTableTid(fromTableTid);
		    log.setSeqNo(seqNo);
		    log.setToolLocalStorageId(toolLocalStorageId);
		    log.setSize(size);
		    log.setSha2(sha2);
		    log.setUploadBy(SecurityUtils.getCurrentUsername());
		    log.setUploadTime(DateUtil.getSystemTime());
		    log.setAction(action);
		    
		    caseFileLogRepository.saveAndFlush(log);
	}

}
