package com.ezcore.foi.ws;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ezcore.common.controller.BaseController;

import io.swagger.annotations.ApiOperation;
import me.zhengjie.annotation.Log;

//@RestController
//@RequestMapping("/wsdoc")
public class TestWsController extends BaseController {

	@Autowired
	private WsDocService test;
	
	@GetMapping
    @ApiOperation("取得公文基本資料")
//    @PreAuthorize("@el.check('')")
    @Log("取得公文基本資料")
    public ResponseEntity<Object> wsTest() {
		String[] params = {"iAmToken", "T11201203", "10002", "1127041234", "112/07/15 14:23:25", 
						   "112/07/18 10:25:00", "112/07/19 12:00:25", "112/07/14", "F001", "112/07/14"};
		System.out.println(test.process(params));
        return commonResponse("wsTest");
    }
}
