package com.ezcore.foi.ecase.service;

import java.io.IOException;
import java.util.List;

import com.ezcore.foi.ecase.dao.entity.CaseFile;
import com.ezcore.foi.ecase.dao.entity.CaseFileLog;
import com.ezcore.foi.ecase.model.bo.casefilebo.CaseFileBoData;
import com.ezcore.foi.ecase.model.request.CaseFile07Request;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.core.io.Resource;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;

public interface CaseFileService {

	/* 取得案件指定類型下檔案清單*/
	List<CaseFileBoData> getListByCaseFileType(String caseNo, Long caseFileTypeCid);
	
	void saveOrUpdateCaseFile(CaseFileBoData caseFileBoData, MultipartFile files);
	
	void deleteCaseFile(String caseNo, String caseFileTid);
	
	public ResponseEntity<Resource> downloadSingleFile(String caseFileTid);
	
	ResponseEntity<Resource> downloadFilesAsZip(String caseNo, Long caseFileTypeCid);
	
	public List<String> getTodaysCaseNos(Long fileTypeCid);
	
	public List<CaseFileLog> getLogData(CaseFile07Request request);
	
	void moveFile(String unitShareFolderCode, String caseNo, Long caseFileTypeCid, String fileName) throws IOException;
}
