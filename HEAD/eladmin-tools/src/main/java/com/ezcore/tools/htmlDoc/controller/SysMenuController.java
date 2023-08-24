package com.ezcore.tools.htmlDoc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ezcore.tools.codedetail.model.response.BaseStateResponse;
import com.ezcore.tools.codedetail.model.response.CommResponse;
import com.ezcore.tools.htmlDoc.dto.ParentMenuDto;
import com.ezcore.tools.htmlDoc.dto.SysMenuDto;
import com.ezcore.tools.htmlDoc.service.impl.SysMenuServiceImpl;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import me.zhengjie.annotation.Log;

@RestController
@Api(tags = "系統 : 系統目錄管理")
@RequestMapping("tools/codedetail/api/v1/sysMenu")
public class SysMenuController {
    private static final String JOBCODE = "sysMenu";

    @Autowired 
    SysMenuServiceImpl sysMenuServiceImpl;

    @Log("系統目錄總覽")
    @ApiOperation("系統目錄總覽")
    @PreAuthorize("@el.check('menu:list')")
    @GetMapping("/getAll")
    /**
     * 取得所有系統目錄資訊。
     */
    public ResponseEntity<Object> getAll(){
        List<SysMenuDto> result;
        try {
            result = sysMenuServiceImpl.getAll();
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
    @Log("type目錄")
    @ApiOperation("type目錄")
    @PreAuthorize("@el.check('menu:type')")
    @GetMapping("/getByType")
    /**
     * 根據類型取得對應的系統目錄資訊。
     */
    public ResponseEntity<Object> getByType(@RequestParam int type){
        List<SysMenuDto> result;
        try {
            result = sysMenuServiceImpl.getByType(type);
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
    
    @Log("get by name")
    @ApiOperation("get by name")
    @PreAuthorize("@el.check('menu:name')")
    @GetMapping("/name")
    /**
     * 根據名稱取得特定的系統目錄資訊。
     */
    public ResponseEntity<Object> getByName(@RequestParam String name){
        SysMenuDto result;
        try {
            result = sysMenuServiceImpl.getByName(name);
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
//    @Log("getPath")
    @ApiOperation("getPath")
//    @PreAuthorize("@el.check('menu:path')")
    @GetMapping("/path")
    /**
     * 根據名稱取得特定系統目錄的路徑。
     */
    public ResponseEntity<Object> getPath(@RequestParam String name){
        String result;
        try {
            result = sysMenuServiceImpl.getPath(name);
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
    @Log("get")
    @ApiOperation("get")
    @PreAuthorize("@el.check('menu:get')")
    @GetMapping()
    /**
     * 根據ID取得特定的系統目錄資訊。
     */
    public ResponseEntity<Object> get(@RequestParam Long id){
        SysMenuDto result;
        try {
            result = sysMenuServiceImpl.getById(id);
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
    
    @Log("getParentMenu")
    @ApiOperation("get parent menu")
    @PreAuthorize("@el.check('menu:getParent')")
    @GetMapping("/getParent")
    /**
     * 取得包含父目錄的系統目錄列表。
     */
    public ResponseEntity<Object> getParent(){
        List<ParentMenuDto> result;
        try {
            result = sysMenuServiceImpl.menuWithParent();
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
