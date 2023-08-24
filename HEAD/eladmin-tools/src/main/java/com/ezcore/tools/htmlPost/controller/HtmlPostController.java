package com.ezcore.tools.htmlPost.controller;

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
import com.ezcore.tools.htmlPost.dto.HtmlPostDto;
import com.ezcore.tools.htmlPost.service.impl.HtmlPostServiceImpl;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import me.zhengjie.annotation.Log;

@RestController
@Api(tags = "系統 : 公告管理")
@RequestMapping("tools/htmlPost/api/v1")
public class HtmlPostController extends BaseController{    
    static final String JOBCODE = "htmlPostController";
    @Autowired HtmlPostServiceImpl htmlPostServiceImpl;
    
    @Log("公告修改")
    @ApiOperation("公告修改")
    @PreAuthorize("@el.check('post:put')")
    @PutMapping
    public ResponseEntity<Object> put(@RequestBody HtmlPostDto dto){
        try {
            htmlPostServiceImpl.update(dto);
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
    @Log("公告新增")
    @ApiOperation("公告新增")
    @PreAuthorize("@el.check('post:post')")
    @PostMapping
    public ResponseEntity<Object> post(@RequestBody HtmlPostDto dto){
        HtmlPostDto result;
        try {
            result = htmlPostServiceImpl.insert(dto);
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

    @Log("公告刪除")
    @ApiOperation("公告刪除")
    @PreAuthorize("@el.check('post:delete')")
    @DeleteMapping
    public ResponseEntity<Object> delete(@RequestParam Long id){
        try {
            htmlPostServiceImpl.delete(id);
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
    @Log("公告總覽")
    @ApiOperation("公告總覽")
    @PreAuthorize("@el.check('post:list')")
    @GetMapping("/getAll")
    public ResponseEntity<Object> getAll(){
        List<HtmlPostDto> result;
        try {
            result = htmlPostServiceImpl.getAll();
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
    @Log("公告區域顯示")
    @ApiOperation("公告區域顯示")
//    @PreAuthorize("@el.check('post:display')")
    @GetMapping("/display")
    /**
     * 根據指定的顯示類型，獲取相關的公告內容。
     */
    public ResponseEntity<Object> getByDisplay(@RequestParam String type){
        List<HtmlPostDto> result;
        try {
            result = htmlPostServiceImpl.getByDisplayType(type);
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

    @Log("公告")
    @ApiOperation("公告")
    @PreAuthorize("@el.check('post:get')")
    @GetMapping
    public ResponseEntity<Object> get(@RequestParam Long postId){
        HtmlPostDto result;
        try {
            result = htmlPostServiceImpl.get(postId);
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
