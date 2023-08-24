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

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.zhengjie.annotation.Log;
import me.zhengjie.service.LogService;
import me.zhengjie.service.dto.LogQueryCriteria;
import me.zhengjie.utils.SecurityUtils;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author Zheng Jie
 * @date 2018-11-24
 */
@RestController
@RequiredArgsConstructor
@RequestMapping("/api/logs")
@Api(tags = "系統 : 日誌管理")
public class LogController {

    private final LogService logService;

    @Log("匯出日誌")
    @ApiOperation("匯出日誌")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check()")
    public void exportLog(HttpServletResponse response, LogQueryCriteria criteria) throws IOException {
//        criteria.setLogType("INFO");
        logService.download(logService.queryAll(logService.processSearchKeywords(criteria)), response);
    }

//    @Log("導出錯誤數據")
//    @ApiOperation("匯出異常日誌")
//    @GetMapping(value = "/error/download")
//    @PreAuthorize("@el.check()")
//    public void exportErrorLog(HttpServletResponse response, LogQueryCriteria criteria) throws IOException {
//        criteria.setLogType("ERROR");
//        logService.download(logService.queryAll(criteria), response);
//    }
    
    @ApiOperation("查詢日誌")
    @GetMapping
    @PreAuthorize("@el.check('log:list')")
    public ResponseEntity<Object> queryLog(LogQueryCriteria criteria, Pageable pageable) {
    	if (criteria.getCreateTime() == null) {
    		return new ResponseEntity<>("請填入查詢條件", HttpStatus.OK);
    	}
        return new ResponseEntity<>(logService.queryAll(logService.processSearchKeywords(criteria), pageable), HttpStatus.OK);
    }

    @GetMapping(value = "/user")
    @ApiOperation("使用者日誌查詢")
//    @PreAuthorize("@el.check('log:list')")
    public ResponseEntity<Object> queryUserLog(LogQueryCriteria criteria, Pageable pageable) {
        criteria.setLogType("INFO");
        criteria.setAccount(SecurityUtils.getCurrentUsername());
        return new ResponseEntity<>(logService.queryAllByUser(criteria,pageable), HttpStatus.OK);
    }

//    @GetMapping(value = "/error")
//    @ApiOperation("錯誤日誌查詢")
//    @PreAuthorize("@el.check('log:list')")
//    public ResponseEntity<Object> queryErrorLog(LogQueryCriteria criteria, Pageable pageable){
//        criteria.setLogType("ERROR");
//        return new ResponseEntity<>(logService.queryAll(criteria,pageable), HttpStatus.OK);
//    }

    @ApiOperation("日誌異常詳情查詢")
    @GetMapping(value = "/error/{id}")
    @PreAuthorize("@el.check()")
    public ResponseEntity<Object> queryErrorLogDetail(@PathVariable Long id){
        return new ResponseEntity<>(logService.findByErrDetail(id), HttpStatus.OK);
    }
    
//    @DeleteMapping(value = "/del/error")
//    @Log("刪除所有ERROR日誌")
//    @ApiOperation("刪除所有ERROR日誌")
//    @PreAuthorize("@el.check()")
//    public ResponseEntity<Object> delAllErrorLog(){
//        logService.delAllByError();
//        return new ResponseEntity<>(HttpStatus.OK);
//    }

//    @DeleteMapping(value = "/del/info")
//    @Log("刪除所有INFO日誌")
//    @ApiOperation("刪除所有INFO日誌")
//    @PreAuthorize("@el.check()")
//    public ResponseEntity<Object> delAllInfoLog(){
//        logService.delAllByInfo();
//        return new ResponseEntity<>(HttpStatus.OK);
//    }
}
