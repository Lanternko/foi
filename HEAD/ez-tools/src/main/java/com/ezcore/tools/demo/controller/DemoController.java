package com.ezcore.tools.demo.controller;

import java.io.FileNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
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

import com.ezcore.common.controller.BaseController;
import com.ezcore.tools.demo.model.request.ApiDemo02Request;
import com.ezcore.tools.demo.model.request.ApiDemo03Request;
import com.ezcore.tools.demo.model.request.ApiDemo04Request;
import com.ezcore.tools.demo.service.DemoService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import me.zhengjie.annotation.Log;
import me.zhengjie.annotation.rest.AnonymousGetMapping;
import me.zhengjie.modules.security.config.bean.SecurityProperties;
import me.zhengjie.modules.security.security.TokenProvider;

@Slf4j												// 需手動輸出log.info()...等訊息時須於class名稱上方加註
@RestController										// 標記此class為controller
@RequiredArgsConstructor
@Api(tags = "開發範本")								// (swagger標籤)
@RequestMapping("tools/demo/api/v1")
public class DemoController extends BaseController {
		
	@Autowired
	private DemoService demoService;
	@Autowired
	private TokenProvider tokenProvider;
	@Autowired
	private SecurityProperties securityProperties;

	@Log("查詢全部測試訊息")							// api執行時自動寫入執行歷程至sys_log
	@ApiOperation("查詢全部測試訊息")					// (swagger標籤)
	@GetMapping
	@PreAuthorize("@el.check('demo:select')")		// api存取權限標示，基本格式為@PreAuthorize("@el.check('')")
    public ResponseEntity<Object> apiDemo01() {
		log.info("api01 controller");				// 需有@Slf4j標籤才可使用
		return commonResponse(demoService.selectAll());
    }
    
	@Log("新增測試訊息")
	@ApiOperation("新增測試訊息")
	@PostMapping
	@PreAuthorize("@el.check('demo:add')")
    public ResponseEntity<Object> apiDemo02(@RequestBody ApiDemo02Request req) {
		log.info("api02 controller");
		demoService.insertDemo(req);
		return commonResponse();
    }
    
	@Log("修改測試訊息")
	@ApiOperation("修改測試訊息")
	@PutMapping
	@PreAuthorize("@el.check('demo:update')")
    public ResponseEntity<Object> apiDemo03(@RequestBody ApiDemo03Request req) {
		log.info("api03 controller");
		demoService.updateDemo(req);
		return commonResponse();
    }
	
	@Log("刪除測試訊息")
	@ApiOperation("刪除測試訊息")
	@DeleteMapping
	@PreAuthorize("@el.check('demo:delete')")
    public ResponseEntity<Object> apiDemo04(@RequestBody ApiDemo04Request req) {
		demoService.deleteDemo(req);
        return commonResponse();
    }

	@Log("查詢測試訊息by id")
	@ApiOperation("查詢測試訊息by id")
	@GetMapping(value = "/selectById")
	@PreAuthorize("@el.check('demo:select')")
	public ResponseEntity<Object> apiDemo05(@RequestParam String id) {
		log.info("api05 controller");
		return commonResponse(demoService.selectById(id));
	}
	
	@Log("無須權限api測試")
	@ApiOperation("無須權限api測試")
	@AnonymousGetMapping(value = "/noAuth")			// 該功能無須驗證token時，可使用匿名標籤
	public ResponseEntity<Object> apiDemo06() throws FileNotFoundException {
		log.info("api06 controller");
		System.out.println(securityProperties.getTokenStartWith() + tokenProvider.createTokenTest());
		return commonResponse("無須權限api測試");
	}
	
	@Log("例外事件處理範例")
	@ApiOperation("例外事件處理範例")
	@AnonymousGetMapping(value = "/ex")
	public ResponseEntity<Object> apiDemo07() throws Exception {
		log.info("api07 controller");
		try {
			System.out.println(1 / 0);
		} catch (Exception e) {
			// 其他例外交由底板程式統一處理
			throw new Exception(String.format("其它例外的exception格式，此部分會由底板自行處理，無須經過開發者"));
		}
		// 不會執行到這裡
		return commonResponse();
	}
	
}
