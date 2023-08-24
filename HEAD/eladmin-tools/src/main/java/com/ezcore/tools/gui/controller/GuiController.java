package com.ezcore.tools.gui.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ezcore.tools.codedetail.controller.BaseController;
import com.ezcore.tools.gui.service.impl.GuiServiceImpl;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import me.zhengjie.annotation.Log;
import me.zhengjie.annotation.rest.AnonymousGetMapping;

@RestController
@Api(tags = "工具:gui管理")
@RequestMapping("tools/gui/api/v1")
public class GuiController extends BaseController{
    @Autowired GuiServiceImpl guiServiceImpl;
    @AnonymousGetMapping("/guiYear")
    public List<String> getGuiYear() {
        return guiServiceImpl.getGuiYear();
    }
    
    @Log("共用代碼api測試")
    @ApiOperation("共用代碼api測試")
    @AnonymousGetMapping("/test")
    public ResponseEntity<Object> getPeriod(@RequestParam String year){
        List<String> result;
        try {
           result = guiServiceImpl.getPeriodByYear(year);
        } catch (Exception e) {
            return new ResponseEntity<>(e,HttpStatus.BAD_REQUEST);
        }
        return  new ResponseEntity<>(result,HttpStatus.OK);
    }
}
