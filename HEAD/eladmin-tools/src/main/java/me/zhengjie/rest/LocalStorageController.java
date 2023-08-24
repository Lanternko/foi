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
package me.zhengjie.rest;

import lombok.RequiredArgsConstructor;
import me.zhengjie.annotation.Log;
import me.zhengjie.domain.LocalStorage;
import me.zhengjie.exception.BadRequestException;
import me.zhengjie.exception.handler.SysErrLev;
import me.zhengjie.service.LocalStorageService;
import me.zhengjie.service.dto.LocalStorageQueryCriteria;
import me.zhengjie.utils.FileUtil;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import io.swagger.annotations.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;

/**
* @author Zheng Jie
* @date 2019-09-05
*/
@RestController
@RequiredArgsConstructor
@Api(tags = "系統 : 檔案管理")
@RequestMapping("/api/localStorage")
public class LocalStorageController {

    private final LocalStorageService localStorageService;
	
    @GetMapping
    @ApiOperation("查詢檔案")
    @PreAuthorize("@el.check('storage:list')")
    public ResponseEntity<Object> queryFile(LocalStorageQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(localStorageService.queryAll(criteria,pageable), HttpStatus.OK);
    }

    @ApiOperation("匯出表單")
    @GetMapping(value = "/export")
    @PreAuthorize("@el.check('storage:list')")
    public void exportExcel(HttpServletResponse response, LocalStorageQueryCriteria criteria) throws IOException {
        localStorageService.exportExcel(localStorageService.queryAll(criteria), response);
    }
    
    @ApiOperation("下載檔案")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('storage:list')")
    public void exportFile(HttpServletResponse response, String fileGuid) throws IOException {
    	FileUtil.downloadFile(response, localStorageService.downloadFile(fileGuid), false);
    }

    @PostMapping
    @ApiOperation("上傳檔案")
    @PreAuthorize("@el.check('storage:add')")
    public ResponseEntity<Object> createFile(@RequestParam String name, @RequestParam("file") MultipartFile file, @RequestParam String frompage){
        localStorageService.create(name, file, frompage);
        return new ResponseEntity<>(HttpStatus.CREATED);
    }

    @ApiOperation("上傳圖片")
    @PostMapping("/pictures")
    public ResponseEntity<Object> uploadPicture(@RequestParam MultipartFile file){
        // 判斷檔案是否為圖片
    	String suffix = FileUtil.getExtensionName(file.getOriginalFilename());
    	if (!FileUtil.IMAGE.equals(FileUtil.getFileType(suffix))){
    		throw new BadRequestException(SysErrLev.FUNCTION_PARAMETER_ERROR, "只能上傳圖片");
        }
        LocalStorage localStorage = localStorageService.create(null, file, "uploadPicture");

        return new ResponseEntity<>(localStorage, HttpStatus.OK);
    }

    @PutMapping
    @Log("修改檔案")
    @ApiOperation("修改檔案")
    @PreAuthorize("@el.check('storage:edit')")
    public ResponseEntity<Object> updateFile(@Validated @RequestBody LocalStorage resources){
        localStorageService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("刪除檔案")
    @DeleteMapping
    @ApiOperation("多選刪除")
    public ResponseEntity<Object> deleteFile(@RequestBody Long[] ids) {
        localStorageService.deleteAll(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }


}