package com.ezcore.tools.htmlHelper.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ezcore.tools.codedetail.controller.BaseController;
import com.ezcore.tools.codedetail.model.response.BaseStateResponse;
import com.ezcore.tools.codedetail.model.response.CommResponse;
import com.ezcore.tools.htmlHelper.dto.HelperContentDto;
import com.ezcore.tools.htmlHelper.service.impl.HtmlHelperServiceImpl;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import me.zhengjie.annotation.Log;

@RestController
@Api(tags = "系統 : 小幫手管理")
@RequestMapping("tools/htmlHelper/api/v1")
public class HtmlHelperController extends BaseController{
    static final String JOBCODE = "htmlHelperController";

    @Autowired HtmlHelperServiceImpl htmlDocServeicImpl;

    @Log("小幫手修改")
    @ApiOperation("小幫手修改")
    @PreAuthorize("@el.check('helper:put')")
    @PutMapping
    /**
     * 根據輸入的DTO數據，更新小幫手內容。
     * 如果更新過程中發生錯誤，則回傳400錯誤狀態碼；否則回傳更新的小幫手內容與200狀態碼。
     */
    public ResponseEntity<Object> put(@RequestBody HelperContentDto dto){
        try {
            htmlDocServeicImpl.update(dto);
        } catch (Exception e) {
            return new ResponseEntity<>(e, HttpStatus.BAD_REQUEST);
        }
        CommResponse response = CommResponse.builder() 
        .respTime(System.currentTimeMillis())
        .respState(BaseStateResponse.builder().code(0).build())
        .jobCode(JOBCODE)
        .build();
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @Log("小幫手新增")
    @ApiOperation("小幫手新增")
    @PreAuthorize("@el.check('helper:post')")
    @PostMapping
    /**
     * 根據輸入的DTO數據，新增一個小幫手內容。
     * 回傳400錯誤狀態碼；或200成功狀態碼。
     */
    public ResponseEntity<Object> post(@RequestBody HelperContentDto dto){
        HelperContentDto result;
        try {
            result = htmlDocServeicImpl.insert(dto);
        } catch (Exception e) {
            return new ResponseEntity<>(e, HttpStatus.BAD_REQUEST);
        }
        CommResponse response = CommResponse.builder() 
        .respTime(System.currentTimeMillis())
        .respState(BaseStateResponse.builder().code(0).build())
        .jobCode(JOBCODE)
        .content(result)
        .build();
        return new ResponseEntity<>(response, HttpStatus.OK);
    }
    
    @Log("小幫手刪除")
    @ApiOperation("小幫手刪除")
    @PreAuthorize("@el.check('helper:delete')")
    @DeleteMapping
    /**
     * 根據提供的ID，刪除指定的小幫手內容。
     * 如果刪除過程中發生錯誤，則回傳400錯誤狀態碼；否則回傳200狀態碼。
     */
    public ResponseEntity<Object> delete(@RequestParam Long id){
        try {
            htmlDocServeicImpl.delete(id);
        } catch (Exception e) {
            return new ResponseEntity<>(e, HttpStatus.BAD_REQUEST);
        }
        CommResponse response = CommResponse.builder() 
        .respTime(System.currentTimeMillis())
        .respState(BaseStateResponse.builder().code(0).build())
        .jobCode(JOBCODE)
        .build();
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

    @Log("小幫手總覽")
    @ApiOperation("小幫手總覽")
//    @PreAuthorize("@el.check('helper:list')")
    @GetMapping("/getAll")
    /**
     * 獲取所有小幫手的內容。
     * 如果獲取過程中發生錯誤，則回傳400錯誤狀態碼；否則回傳所有小幫手的內容與200狀態碼。
     */
    public ResponseEntity<Object> getAll(){
        List<HelperContentDto> result;
        try {
            result = htmlDocServeicImpl.getAll();
        } catch (Exception e) {
            return new ResponseEntity<>(e, HttpStatus.BAD_REQUEST);
        }
        CommResponse response = CommResponse.builder() 
        .respTime(System.currentTimeMillis())
        .respState(BaseStateResponse.builder().code(0).build())
        .jobCode(JOBCODE)
        .content(result)
        .build();
        return new ResponseEntity<>(response, HttpStatus.OK);
    }
    @Log("指定系統目錄的小幫手總覽")
    @ApiOperation("指定系統目錄的小幫手總覽")
    @PreAuthorize("@el.check('helper:getByMenu')")
    @GetMapping("/getByMenu")
    /**
     * 根據指定的系統目錄名稱，獲取相關的小幫手內容。
     * 如果獲取過程中發生錯誤，則回傳400錯誤狀態碼；否則回傳指定系統目錄的小幫手內容與200狀態碼。
     */
    public ResponseEntity<Object> getByMenu(@RequestParam String name){
        HelperContentDto result;
        try {
            result = htmlDocServeicImpl.getByMenuCode(name);
        } catch (Exception e) {
            return new ResponseEntity<>(e, HttpStatus.BAD_REQUEST);
        }
        CommResponse response = CommResponse.builder() 
        .respTime(System.currentTimeMillis())
        .respState(BaseStateResponse.builder().code(0).build())
        .jobCode(JOBCODE)
        .content(result)
        .build();
        return new ResponseEntity<>(response, HttpStatus.OK);
    }

}
