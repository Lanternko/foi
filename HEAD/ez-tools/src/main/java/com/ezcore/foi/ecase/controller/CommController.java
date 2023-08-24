package com.ezcore.foi.ecase.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ezcore.common.controller.BaseController;
import com.ezcore.foi.ecase.dao.dto.ChildKindListDto;
import com.ezcore.foi.ecase.dao.dto.GetCodeDto;
import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
import com.ezcore.foi.ecase.model.response.comm.Comm03Response;
import com.ezcore.foi.ecase.service.CommService;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import me.zhengjie.annotation.Log;
import me.zhengjie.annotation.rest.AnonymousGetMapping;
import me.zhengjie.utils.StringUtils;

@RestController
@RequiredArgsConstructor
@Api(tags = "代碼資料")
@RequestMapping("api/v1/comm")
@Slf4j
public class CommController extends BaseController {

	@Autowired
	private CommService commService;
	
	/*
	 * 取得共用代碼檔資料
	 */
	@Log("取得共用代碼檔資料")
	@ApiOperation("取得共用代碼檔資料")
	@PostMapping(value = "/getCodes")
//	@PreAuthorize("@el.check('')")	
	public ResponseEntity<Object> Comm01(@RequestBody GetCodeDto req) {
		if (StringUtils.isEmptyOrNull(req.getCode())) {
			return commonResponse(commService.findByKind(req.getKind()), "Comm01");
		}
		return commonResponse(commService.getCodes(req), "Comm01");
	}

	@Log("取得共用代碼檔資料(簡短)")
	@ApiOperation("取得共用代碼檔資料(簡短)")
	@PostMapping(value = "/getShowCodes")
//	@PreAuthorize("@el.check('')")	
	public ResponseEntity<Object> Comm01ShowCode(@RequestBody GetCodeDto req) {
		if (StringUtils.isEmptyOrNull(req.getCode())) {
			List<ShowCodeBo> rtn = new ArrayList<>();
			commService.findByKind(req.getKind()).forEach(c -> rtn.add(new ShowCodeBo(c)));
			return commonResponse(rtn, "Comm01ShowCode");
		}
		return commonResponse(new ShowCodeBo(commService.getCodes(req)), "Comm01ShowCode");
	}
	
	/*
	 * 透過ChildId取得次階代碼關係表
	 * @author: 柯子捷
	 * 完成時間：23-07-12
	 * 狀態：未測試
	 * 修改：request type, common response
	 */ 
	@AnonymousGetMapping(value = "/getChildList/{parentKind}/{parentCode}/{childKind}")
    @ApiOperation("取得下拉子項")
//    @PreAuthorize("@el.check('')")
    @Log("取得下拉子項")
	public ResponseEntity<Object> Comm03(@PathVariable String parentKind, @PathVariable String parentCode,
			@PathVariable String childKind) {

		// define the variables to null, if the input is "null"
		parentKind = StringUtils.isEmptyOrNull(parentKind) ? null : parentKind;
		parentCode = StringUtils.isEmptyOrNull(parentCode) ? null : parentCode;
		childKind = StringUtils.isEmptyOrNull(childKind) ? null : childKind;

		return commonResponse(commService.getChildList(parentKind, parentCode, childKind), "Comm03");
	}
	
	@AnonymousGetMapping(value = "/getChildListShowCode/{parentKind}/{parentCode}/{childKind}")
	@ApiOperation("取得下拉子項(簡短)")
//    @PreAuthorize("@el.check('')")
	@Log("取得下拉子項(簡短)")
	public ResponseEntity<Object> Comm03ShowCode(@PathVariable String parentKind, @PathVariable String parentCode,
			@PathVariable String childKind) {
		parentKind = StringUtils.isEmptyOrNull(parentKind) ? null : parentKind;
		parentCode = StringUtils.isEmptyOrNull(parentCode) ? null : parentCode;
		childKind = StringUtils.isEmptyOrNull(childKind) ? null : childKind;
		
		List<ShowCodeBo> rtn = new ArrayList<>();
		
		List<ChildKindListDto> comm03List = commService.getChildList(parentKind, parentCode, childKind);
		comm03List.forEach(c -> rtn.add(new ShowCodeBo(c)));
		
		return commonResponse(rtn, "Comm03ShowCode");
	}

	
	/* 
	 * 取得工作群組下使用者
	 */
	@Log("取得工作群組下使用者")
	@ApiOperation("取得工作群組下使用者")
	@AnonymousGetMapping(value = "/workGroup/{workGroupCode}")
//	@PreAuthorize("@el.check('')")	
	public ResponseEntity<Object> Comm04(@PathVariable String workGroupCode) {
		return commonResponse(commService.getWorkGroupUsers(workGroupCode), "Comm04"); 
	}
	
	/*
	 * 是否為系統管理者帳號
	 * 完成狀態：尚未測試
	 * 完成時間：23-06-06 16:07
	 * 測試狀態：401 unAuthorized
	 */
	@Log("操作者為系統管理者帳號")
	@ApiOperation("操作者為系統管理者帳號")
	@AnonymousGetMapping(value = "/user/isAdmin")
//	@PreAuthorize("@el.check('')")	
	public ResponseEntity<Object> Comm05 () {
	    boolean isAdmin = commService.isCurrentUserAdmin();
	    return commonResponse(isAdmin ? 1 : 0, "Comm05");
	}
	
	@Log("取得主管身分代碼")
	@ApiOperation("取得主管身分代碼")
	@AnonymousGetMapping(value = "/user/getManagerCode")
//	@PreAuthorize("@el.check('')")	
	public ResponseEntity<Object> Comm08() {
	    return commonResponse(commService.getManagerUser(), "Comm08");
	}
	
    @Log("取得當前登入者角色")
    @ApiOperation("取得當前登入者角色")
    @GetMapping(value = "/getCurrentWorkGroups")
    public ResponseEntity<Object> getCurrentUserWorkGroups(){
        return commonResponse(commService.getCurrentUserWorkGroups(), "getCurrentUserWorkGroups");
    }
}

