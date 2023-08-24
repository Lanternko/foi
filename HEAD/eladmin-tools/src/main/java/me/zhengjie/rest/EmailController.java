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
import me.zhengjie.service.EmailService;
import me.zhengjie.service.dto.EmailQueryCriteria;
import me.zhengjie.service.impl.Notification;

import java.io.FileNotFoundException;
import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

@RestController
@RequiredArgsConstructor
@RequestMapping("api/email")
@Api(tags = "系統 : 寄信歷程管理")
public class EmailController {

    private final EmailService emailService;
	private final Notification notification;
    
    @Log("調閱寄件歷程")
    @GetMapping(value = "/getByCondition")
    @ApiOperation("取得寄件歷程")
    public ResponseEntity<Object> getEmail(EmailQueryCriteria criteria, Pageable pageable) {
    	if (criteria.getCreateTime() == null) {
    		return new ResponseEntity<>("請填入查詢條件", HttpStatus.OK);
    	}
    	return new ResponseEntity<>(emailService.queryAll(emailService.processSearchKeywords(criteria), pageable), HttpStatus.OK);
    }
    /**
     * 根據指定的查詢條件和分頁信息，獲取寄件歷程。
     */


    @Log("寄出信件")
    @PostMapping(value = "/send")
    @ApiOperation("寄出信件")
    /**
     * 根據輸入的參數，寄出一封電子郵件。
     */
    public ResponseEntity<Object> sendEmail(@Validated @RequestBody Map<String, String> params) {
    	emailService.send(params);
    	return new ResponseEntity<>(HttpStatus.OK);
    }

    @Log("人工寄出信件")
    @PostMapping(value = "/resend")
    @ApiOperation("人工寄出信件")
    /**
     * 根據輸入的ID列表，重新寄出對應的電子郵件。
     */
    public ResponseEntity<Object> reSendEmail(@Validated @RequestBody List<Long> ids) {
    	emailService.resend(ids);
    	return new ResponseEntity<>(HttpStatus.OK);
    }

	@Log("寄出通知信")
	@ApiOperation("寄出通知信")
	@GetMapping(value = "/notify")
    /**
     * 根據輸入的參數，寄出一封通知信。
     * 如果寄件過程中發生FileNotFoundException，將丟出該異常；否則寄件成功後，將回傳200狀態碼。
     */
	public ResponseEntity<Object> sendNotification(@RequestParam Map<String, String> params) throws FileNotFoundException  {
		notification.sendNotification(params);
		return new ResponseEntity<>(HttpStatus.OK);
	}

}
