package com.ezcore.foi.ecase.service.impl;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.sql.Timestamp;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.UUID;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.server.ResponseStatusException;

import com.ezcore.foi.ecase.dao.CaseFileRepository;
import com.ezcore.foi.ecase.dao.dto.GetCodeDto;
import com.ezcore.foi.ecase.dao.entity.CaseFile;
import com.ezcore.foi.ecase.dao.entity.CaseFileLog;
import com.ezcore.foi.ecase.model.bo.casefilebo.CaseFileBoData;
import com.ezcore.foi.ecase.model.request.CaseFile07Request;
import com.ezcore.foi.ecase.service.CaseFileService;
import com.ezcore.foi.ecase.service.CommService;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.common.CodeDetailMap;

import me.zhengjie.domain.LocalStorage;
import me.zhengjie.service.impl.LocalStorageServiceImpl;
import me.zhengjie.utils.FileUtil;
import me.zhengjie.utils.SecurityUtils;

@Service
public class CaseFileServiceImpl implements CaseFileService {

	@Autowired
	private CaseFileRepository caseFileRepository;
	@Autowired
	private CommService commService;
	@Autowired
	private LocalStorageServiceImpl localStorageServiceImpl;
	@Autowired
	private CodeDetailMap codeDetailMap;
	ZoneId taiwanZone = ZoneId.of("Asia/Taipei");
	
	/* CaseFile01 取得符合 CaseFileType 的 CaseFile 清單
	 * 1. 根據案件編號和案件檔案類型編號從 CaseFileRepository 中取得原始資料
	 * 2. 將原始資料映射為 CaseFileBoData 的 List
	 * 2.1 建立 ShowCodeBo 並設置其屬性
	 * 2.2 從原始資料中填充 CaseFileBoData 的欄位
	 * 3. 將 CaseFileBoData 加入到 caseFiles 的 List 中
	 * 4. 返回 caseFiles 的 List
	 */
	@Override
	public List<CaseFileBoData> getListByCaseFileType(String caseNo, Long caseFileTypeCid) {
		// 1. 根據 caseNo 和 caseFileTypeCid 取得 CASE_FILEs
		// 2. 將 CASE_FILEs 映射為 CaseFileBoData 的 List
		List<CaseFile> rawResults = caseFileRepository.findByCaseNoAndCaseFileTypeCid(caseNo, caseFileTypeCid);
		
		List<CaseFileBoData> caseFileBos = new ArrayList<>();
		for (CaseFile rawResult : rawResults) {
			caseFileBos.add(new CaseFileBoData(rawResult));
		}
		
		return caseFileBos;
	}


	/* CaseFile02 新增/覆蓋檔案
	 * 1. CASE_FILE取出處理： 
	 * 2. 檔案處理：呼叫 LocalStorage 的方法，儲存檔案並獲取資訊
	 * 3. CaseFile儲存：更新過的or新的 CaseFile 到 repository
	 */
	@Override
	@Transactional(rollbackFor = Exception.class)
	public void saveOrUpdateCaseFile(CaseFileBoData caseFileBoData, MultipartFile file) {
	    // 1. CASE_FILE取出處理：
	    Optional<CaseFile> caseFileOptional = caseFileRepository.findById(caseFileBoData.getCaseFileTid());             // 1.1 檢查資料庫中是否存在 caseFileTid    
	    CaseFile caseFile;
	    
	    if (caseFileOptional.isPresent()) { 																			// 1.2.1 如果 caseFileTid 存在，更新 CaseFile 實例中的檔案資訊
	        caseFile = caseFileOptional.get();
	    } else {	 		 	 	 	 	 	  	 		 	 	  		 	 	  	 		 	 	 	  	        // 1.2.2 如果 caseFileTid 不存在，創建一個新的 CaseFile 實例
	        caseFile = new CaseFile();
	        caseFile.setId(UUID.randomUUID().toString());
	        caseFile.setCaseNo(caseFileBoData.getCaseNo());
	        caseFile.setCaseFileTypeCid(caseFileBoData.getCaseFileType().getCid());                                     // 假設 getCaseFileType() 回傳一個具有 getCid() 方法的物件
	        caseFile.setSeqNo(caseFileBoData.getSeqNo());
	    }
	    
	    caseFile.setUploadBy(caseFileBoData.getLastBy());																// 1.3 根據 localStorage 和 caseFileBoData 設定 caseFile 的欄位
	    caseFile.setUploadTime(caseFileBoData.getLastTime());
	    	
		// 2. 檔案處理：呼叫 LocalStorage 的方法，儲存檔案並獲取資訊
		LocalStorage localStorage = null;
		if (file == null ) {
			localStorage = localStorageServiceImpl.create(caseFileBoData.getCaseNo(), file, caseFileBoData.getCaseNo());// TODO 將第三個參數從 caseFileBoData.getCaseNo() 改為 fromPage（前端要傳網頁資訊進來）
		}else {
			localStorage = localStorageServiceImpl.findByUuid(caseFile.getToolLocalStorageId());						
		}
	    
	    // 3. CaseFile儲存：更新過的or新的 CaseFile 到 repository
	    caseFile.setToolLocalStorageId(localStorage.getStorageUuid());
	    caseFile.setSize(localStorage.getSize());
	    caseFile.setSha2(localStorage.getSha2());
	    caseFileRepository.save(caseFile);
	}


	/*
	 * CaseFile03
	 */
	@Override
	public void deleteCaseFile(String caseNo, String caseFileTid) {
	    // 步驟1: 根據 caseFileTid 尋找對應的案件檔案
	    CaseFile caseFile = caseFileRepository.findById(caseFileTid)
	            .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "找不到 ID 為 " + caseFileTid + " 的案件檔案"));

	    // 步驟2: 驗證案件編號是否符合
	    if (!caseFile.getCaseNo().equals(caseNo)) { // 若案件編號不符合，則回傳 400
	        throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "案件編號與 ID 為 " + caseFileTid + " 的案件檔案不符");
	    }

	    // 步驟3: 更新修改者和日期欄位
	    caseFile.setUploadBy(SecurityUtils.getCurrentUsername());
	    caseFile.setUploadTime(new Timestamp(System.currentTimeMillis()));

	    // 步驟4: 將更新後的案件檔案儲存到資料庫
	    caseFileRepository.save(caseFile);

	    // 步驟5: 最後，刪除檔案
	    FileUtil.delete(caseFile.getCaseNo(), SecurityUtils.getCurrentUsername());
	}


	/*
	 * CaseFile04
	 * TODO git 有
	 */
	@Override
	// 大步驟1：下載單個文件
	public ResponseEntity<Resource> downloadSingleFile(String caseFileTid) {
	    // 1.1：通過其ID查找CaseFile對象                                                 
	    CaseFile caseFile = caseFileRepository.findById(caseFileTid)
	        .orElseThrow(() -> new ResponseStatusException(HttpStatus.NOT_FOUND, "CaseFile with id " + caseFileTid + " not found")); //找不到該ID的CaseFile，拋出異常
	    
	    // 1.2：從本地存儲中檢索相關文件                                                 
	    LocalStorage localStorage = localStorageServiceImpl.findByUuid(caseFile.getToolLocalStorageId()); 				// 1.2 根據CaseFile的ToolLocalStorageId找到相對應的本地存儲
                                           
	    if (localStorage == null) {																						// 1.3：檢查本地存儲中是否存在該文件                   
	        throw new ResponseStatusException(HttpStatus.NOT_FOUND, "File associated with CaseFile " + caseFileTid + " not found"); //找不到與CaseFile關聯的文件，拋出異常
	    }
                                           
	    Resource file = localStorageServiceImpl.load(localStorage.getName()); 											// 1.4：從本地存儲中檢索實際文件      

	    // 大步驟2：將文件包裝在ResponseEntity中並返回
	    return ResponseEntity.ok()
	        .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + file.getFilename() + "\"") 			// 為下載的文件設置HTTP響應頭
	        .body(file); 																								// 將文件放在HTTP體中並返回
	}

    
    /* CaseFile05
     * 1. 檢索與給定案件編號和文件類型相關的所有案件文件
     * 2. 將檔案COPY至系統TEMP目錄下
     * 3. 創建一個zip文件在TEMP目錄下，並將所有文件寫入其中
     * 4. 返回包含zip文件的ResponseEntity
     */
    @Override
    public ResponseEntity<Resource> downloadFilesAsZip(String caseNo, Long caseFileTypeCid) {
        // 1. 檢索與給定案件編號和文件類型相關的所有案件文件
        List<CaseFileBoData> caseFilesBoData = getListByCaseFileType(caseNo, caseFileTypeCid);                          // 1.1. 使用 getListByCaseFileType 獲取相關檔案


//        String tempFolderPath = codedetailRepository.findByKindAndCode("file_path", "temp_folder").getProperty2(); 
        String tempFolderPath = codeDetailMap.get("file_path", "temp_folder").getProperty2();							// 1.2. 獲取 TEMP 目錄路徑
        
        String tempDirName = tempFolderPath + "/case-file-zip/";                                                        // 1.3. 設定 zip 目錄名稱
        new File(tempDirName).mkdirs();                                                                                 // 1.4. 創建 zip 目錄

        String dateTimeFolder = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMddHHmmss")) + "/";
        new File(tempDirName + dateTimeFolder).mkdirs();                                                                // 1.5. 創建當前時間的目錄

        // 2. 創建一個臨時 ZIP 文件
        String tempFileName = caseNo + "_" + caseFileTypeCid + "_" + LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMddHHmmss")) + ".zip";
        File tempFile = new File(tempDirName + dateTimeFolder + tempFileName);                                          // 2.1. 創建 ZIP 文件

        try (ZipOutputStream zipOut = new ZipOutputStream(new FileOutputStream(tempFile))) {
            for (CaseFileBoData caseFileBoData : caseFilesBoData) {                                                     // 2.2. 對每個 CaseFileBoData，從 localStorage 獲取文件並寫入 zip
                LocalStorage localStorage = localStorageServiceImpl.findByUuid(caseFileBoData.getToolLocalStorageId());
                if (localStorage == null) {
                    throw new ResponseStatusException(HttpStatus.NOT_FOUND, "找不到與 CaseFile " + caseFileBoData.getCaseFileTid() + " 相關聯的文件");
                }
                InputStream fileInputStream = localStorageServiceImpl.loadAsInputStream(localStorage.getName());        // 2.3. 從 localStorage 獲取檔案的 InputStream
                ZipEntry zipEntry = new ZipEntry(localStorage.getRealName());                                           // 2.4. 創建一個新的 ZipEntry
                zipOut.putNextEntry(zipEntry);                                                                          // 2.5. 將 ZipEntry 加入到 zip 文件中

                byte[] bytes = new byte[1024];
                int length;
                while ((length = fileInputStream.read(bytes)) >= 0) {                                                   // 2.6. 讀取並寫入檔案的內容
                    zipOut.write(bytes, 0, length);
                }
                fileInputStream.close();                                                                                // 2.7. 關閉 InputStream
            }
        } catch (IOException e) {
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, "創建 ZIP 文件時出現錯誤: " + e.getMessage());
        }

        // 3. 將臨時 ZIP 文件保存到 localStorage
        LocalStorage localStorageZip;
        try {
            localStorageZip = localStorageServiceImpl.save(tempFileName, tempFile.getPath());                           // 3.1. 保存 ZIP 文件到 localStorage
        } catch(IOException e) {
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, "將 ZIP 文件保存到 localStorage 時出現錯誤: " + e.getMessage());
        }
        
        Resource zipFileResource;
        zipFileResource = localStorageServiceImpl.load(localStorageZip.getName());                                      // 3.2. 從 localStorage 加載 ZIP 文件

        // 4. 返回包含 ZIP 文件的 ResponseEntity
        return ResponseEntity.ok()                                                                                      // 4.1. 創建並返回 ResponseEntity
            .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"" + zipFileResource.getFilename() + "\"")
            .body(zipFileResource);
    }


    /*
     * CaseFile06
     * 取得當日的異動記錄
     */
    @Override
    public List<String> getTodaysCaseNos(Long fileTypeCid) {
        // 1. 獲取當前日期
    	LocalDateTime startOfDay = LocalDate.now(taiwanZone).atStartOfDay();								// 00:00:00（台北時區）
        LocalDateTime endOfDay = startOfDay.plusDays(1).minusNanos(1);                               					// 23:59:59
        
        // 2. 根據日期和文件類型從 repository 獲取案件編號
        return caseFileRepository.findCaseNosByDateAndFileType(startOfDay, endOfDay, fileTypeCid);                             
    }

    /*
     * CaseFile 07
     * 獲取日誌數據
     */
    @Override
    public List<CaseFileLog> getLogData(CaseFile07Request request) {
    	// 1. Convert start and end dates from epoch milliseconds to LocalDateTime in Taiwan's time zone
        LocalDateTime beginDate = Instant.ofEpochMilli(request.getBeginDate())
                                         .atZone(taiwanZone)
                                         .toLocalDateTime();
        LocalDateTime endDate = Instant.ofEpochMilli(request.getEndDate())
                                       .atZone(taiwanZone)
                                       .toLocalDateTime().plusDays(1).minusNanos(1);									// minus 1 nanosecond:23:59:59.999999999

        // 2. Get log data from repository with request parameters
        return caseFileRepository.findLogData(Long.valueOf(request.getCaseFileTypeCid()), beginDate, endDate, request.getCaseNo(), request.getFileName());
    }



    
    /*
     * CaseFile 08
     * 移動檔案至指定目錄	
     */
    @Override
    public void moveFile(String unitShareFolderCode, String caseNo, Long caseFileTypeCid, String fileName) throws IOException {
    	// 1. 獲取源目錄路徑																							
//    	Codedetail codeDetail = commService.getCodes(new GetCodeDto("unitShareFolder", unitShareFolderCode));
    	CodeDetailDto codeDetail = commService.getCodes(new GetCodeDto("unitShareFolder", unitShareFolderCode));  			// findByKindAndCode
    	String sourcePath = codeDetail.getProperty1();                                                         
        
        // 2. 構建目標目錄路徑
        String targetPath = "case_file_directory/" + caseNo + "/" + caseFileTypeCid;                                  	// TODO 主機檔案存放目錄須包含日期,以利每日實體檔案差異備份
        new File(targetPath).mkdirs();                                                                               	// 2.1. 創建目標目錄

        // 3. 移動檔案
        File sourceFile = new File(sourcePath + File.separator + fileName);                                             // 3.1. 定義源文件
        File targetFile = new File(targetPath + File.separator + fileName);												// 3.2. 定義目標文件
        Files.move(sourceFile.toPath(), targetFile.toPath(), StandardCopyOption.REPLACE_EXISTING);                    	// 3.3. 移動文件
        
        // 4. Find or create CaseFile
        Optional<CaseFile> caseFileOptional = caseFileRepository.findById(caseNo);
        CaseFile caseFile;

        if (caseFileOptional.isPresent()) {  													// If CaseFile exists, update its information
            caseFile = caseFileOptional.get();
        } else { 																				// If CaseFile doesn't exist, create a new instance
            caseFile = new CaseFile();
            caseFile.setId(UUID.randomUUID().toString());
            caseFile.setCaseNo(caseNo);
            caseFile.setCaseFileTypeCid(caseFileTypeCid);
            caseFile.setSeqNo(1);  																// TODO: Replace with appropriate sequence number 最大號+1 count筆數
        }

        // 5. Process file: Call LocalStorage method, save the file and get information
        LocalStorage localStorage = localStorageServiceImpl.create(caseFile.getCaseNo(), targetFile, caseNo);

        // 6. CaseFile save: save updated or new CaseFile to repository
        caseFile.setToolLocalStorageId(localStorage.getStorageUuid());
        caseFile.setSize(localStorage.getSize());
        caseFile.setSha2(localStorage.getSha2());
        caseFileRepository.save(caseFile);
    }


}
