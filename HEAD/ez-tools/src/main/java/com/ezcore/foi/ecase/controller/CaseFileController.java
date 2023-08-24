package com.ezcore.foi.ecase.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.databind.ObjectMapper;

import com.ezcore.common.controller.BaseController;
import com.ezcore.foi.ecase.dao.entity.Codedetail;
import com.ezcore.foi.ecase.model.bo.casefilebo.CaseFileBoData;
import com.ezcore.foi.ecase.model.request.CaseFile07Request;
import com.ezcore.foi.ecase.service.CaseFileService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.zhengjie.annotation.Log;
import me.zhengjie.annotation.rest.AnonymousGetMapping;

@RequiredArgsConstructor
@Api(tags = "案件檔案")
@RestController
@RequestMapping("/api/v1/caseFile")
public class CaseFileController extends BaseController {
	
	@Autowired
	private CaseFileService caseFileService;
	
	/*
	 * CaseFile01 
	 * 完成時間：07-12
	 * 狀態：調整完成
	 */
    @AnonymousGetMapping("/list/{caseNo}/{caseFileTypeCid}")
    @ApiOperation("取得案件指定類型下檔案清單")
//    @PreAuthorize("@el.check('')")
    @Log("取得案件指定類型下檔案清單")
    public ResponseEntity<Object> CaseFile01(@PathVariable String caseNo, @PathVariable Long caseFileTypeCid) {
    	return commonResponse(caseFileService.getListByCaseFileType(caseNo, caseFileTypeCid), "CaseFile01");
    }

    @PostMapping("/")
    @ApiOperation("新增/複蓋檔案")
    @PreAuthorize("@el.check('casefile:write')")
    @Log("新增/複蓋檔案")
    public ResponseEntity<Object> saveOrUpdateCaseFile(@RequestBody CaseFileBoData caseFileBoData, @RequestParam("fileObj") MultipartFile files) {
        caseFileService.saveOrUpdateCaseFile(caseFileBoData, files);
        return commonResponse("CaseFile02");
    }

    @DeleteMapping("/{caseNo}/{caseFileTid}")
    @ApiOperation("刪除檔案")
    @PreAuthorize("@el.check('casefile:delete')")
    @Log("刪除檔案")
    public ResponseEntity<Object> deleteCaseFile(
            @PathVariable("caseNo") String caseNo, 
            @PathVariable("caseFileTid") String caseFileTid) {
        
        caseFileService.deleteCaseFile(caseNo, caseFileTid);
        return commonResponse("CaseFile03");
    }
    
    /*
     * CaseFile04
     * 開工：7/17
     * 竣工：尚未測試
     */
    @GetMapping("/downladFile/{caseFileTid}")
    @ApiOperation("單一檔案下載")
    @PreAuthorize("@el.check('')")
    @Log("單一檔案下載")
    public ResponseEntity<Object> CaseFile04(@PathVariable String caseFileTid) {
        return commonResponse(caseFileService.downloadSingleFile(caseFileTid), "CaseFile04");
    }
    
    /*
     * CaseFile05
     * 開工：7/17
     * 竣工：尚未整併
     */
    @ApiOperation("同區塊檔案下載")
    @PreAuthorize("@el.check('')")
    @Log("同區塊檔案下載")
    @GetMapping("/downloadZip/{caseNo}/{caseFileTypeCid}")
    public ResponseEntity<Object> downloadFilesAsZip(@PathVariable String caseNo, @PathVariable Long caseFileTypeCid) {
        return commonResponse(caseFileService.downloadFilesAsZip(caseNo, caseFileTypeCid), "CaseFile05");
    }


    /*
     * CaseFile06
     * 開工：7/18
     */
    @GetMapping("/logList/web030201/{caseFileTypeCid}")
    @ApiOperation("取得本日案號異動紀錄")
    @PreAuthorize("@el.check('')")
    @Log("取得本日案號異動紀錄")
    public ResponseEntity<Object> CaseFile06(@PathVariable Long caseFileTypeCid) {
        return commonResponse(caseFileService.getTodaysCaseNos(caseFileTypeCid), "CaseFile06");
    }

    @PostMapping("/logList/")
    @ApiOperation("取得檔案異動紀錄")
    @PreAuthorize("@el.check('')")
    @Log("取得檔案異動紀錄")
    public ResponseEntity<Object> CaseFile07(@RequestBody CaseFile07Request request) {
        return commonResponse(caseFileService.getLogData(request), "CaseFile07");
    }

    @PostMapping("/move/")
    @ApiOperation("搬移共享區檔案")
    @PreAuthorize("@el.check('')")
    @Log("搬移共享區檔案")
    public ResponseEntity<Void> CaseFile08(
            @RequestParam("unitShareFolderCode") String unitShareFolderCode,
            @RequestParam("caseNo") String caseNo,
            @RequestParam("caseFileTypeCid") Long caseFileTypeCid,
            @RequestParam("fileName") String fileName
        ) throws IOException {
        caseFileService.moveFile(unitShareFolderCode, caseNo, caseFileTypeCid, fileName);
        
        return ResponseEntity.ok().build();
    }
	
    
}
