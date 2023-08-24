package me.zhengjie.modules.system.rest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.zhengjie.annotation.Log;
import me.zhengjie.annotation.rest.AnonymousPostMapping;
import me.zhengjie.modules.system.domain.vo.ForgetVo;
import me.zhengjie.modules.system.service.impl.GenerateServiceImpl;

@RestController
@RequestMapping("/generate")
@RequiredArgsConstructor
@Api(tags = "系統：發行各種代碼")
public class GenerateController {
	
	private final GenerateServiceImpl generateService;
	
    @ApiOperation("產生並寄出臨時密碼")
    @AnonymousPostMapping("/forget")
	public ResponseEntity<Object> provideTempPw(@RequestBody ForgetVo vo) throws Exception {
    	generateService.provideTempPw(vo.getAccount(), vo.getEmail());
		return ResponseEntity.ok("success");
	}
    
    @ApiOperation("產生並寄出檢核碼")
    @AnonymousPostMapping("/verify")
	public ResponseEntity<Object> provideVerifyCode(@RequestParam String account) throws Exception {
		return ResponseEntity.ok(generateService.provideVerifyCode(account));
	}

    @Log("產生短網址")
	@GetMapping(value = "/shorturl")
    @ApiOperation("產生短網址") 
    public ResponseEntity<Object> provideShortUrl(@RequestParam String fullurl) throws Exception {
    	return new ResponseEntity<>(generateService.provideShortUrl(fullurl), HttpStatus.OK);
    }

}