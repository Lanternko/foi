package me.zhengjie.modules.system.rest;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.zhengjie.annotation.Log;
import me.zhengjie.modules.system.domain.User;
import me.zhengjie.modules.system.repository.UserRepository;
import me.zhengjie.modules.system.service.SubstituteService;
import me.zhengjie.utils.SecurityUtils;

@Api(tags = "系統 : 職務代理作業")
@RestController
@RequestMapping("/api/subs")
@RequiredArgsConstructor
public class SubstituteController {
	
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private SubstituteService substituteService;

	@Log("查詢代理人")
	@ApiOperation("查詢代理人")
	@GetMapping
	/**
	 * 查詢代理人
	 * 獲取當前用戶並返回其有效代理人資訊
	 * @return ResponseEntity，包含有效代理人資訊並返回HTTP狀態碼200
	 */
	public ResponseEntity<Object> selectValidSubstitute() {
		User currentUser = userRepository.findByAccount(SecurityUtils.getCurrentUsername());
		return new ResponseEntity<>(substituteService.selectValidSubstitute(currentUser), HttpStatus.OK);
	}
	
	@Log("更新代理對象")
	@ApiOperation("更新代理對象")
	@PostMapping
	/**
	 * 更新代理對象
	 * 獲取當前用戶並更新其指定的代理人的狀態
	 * @param newId 代理人的ID
	 * @param action 代理狀態（例如：啟用、禁用）
	 * @return ResponseEntity，返回HTTP狀態碼200
	 */
	public ResponseEntity<Object> updateActiveStatus(@RequestParam Long newId, @RequestParam Integer action) {
		User currentUser = userRepository.findByAccount(SecurityUtils.getCurrentUsername());
		substituteService.updateSubstituteStatus(currentUser, newId, action);
		return new ResponseEntity<>(HttpStatus.OK);
	}
	
	@Log("可選代理人清單")
	@ApiOperation("可選代理人清單")
	@GetMapping(value = "/selectable")
	/**
	 * 可選代理人清單
	 * 獲取當前用戶並返回他們可以選擇的代理人列表
	 * @return ResponseEntity，包含可選代理人列表並返回HTTP狀態碼200
	 */
	public ResponseEntity<Object> selectableSubs() {
		User currentUser = userRepository.findByAccount(SecurityUtils.getCurrentUsername());
		return new ResponseEntity<>(substituteService.getSelectableUsers(currentUser), HttpStatus.OK);	
	}
	
	@Log("指定代理人")
	@ApiOperation("指定代理人")
	@PostMapping(value = "/addnew")
	/**
	 * 指定代理人
	 * 根據輸入的參數，添加新的代理人
	 * @param params 包含代理人帳號，代理開始時間，代理結束時間的Map
	 * @return ResponseEntity，返回HTTP狀態碼200
	 */
	public ResponseEntity<Object> addNewSubstitute(@RequestParam Map<String, String> params) {
		substituteService.addNewSubstitute(params.get("account"), params.get("begin"), params.get("end"));
		return new ResponseEntity<>(HttpStatus.OK);
	}
	
	@Log("代理紀錄查詢")
	@ApiOperation("代理紀錄查詢")
	@PostMapping(value = "/query")
	/**
	 * 代理紀錄查詢
	 * 根據查詢類型，返回相應的代理紀錄
	 * @param queryType 查詢類型
	 * @return ResponseEntity，包含代理紀錄並返回HTTP狀態碼200
	 */
	public ResponseEntity<Object> queryRecords(@RequestParam Integer queryType) {
		return new ResponseEntity<>(substituteService.queryRecords(queryType), HttpStatus.OK);
	}
	
}
