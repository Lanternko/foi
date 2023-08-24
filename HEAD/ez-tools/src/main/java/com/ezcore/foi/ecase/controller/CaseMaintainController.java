package com.ezcore.foi.ecase.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ezcore.common.controller.BaseController;
import com.ezcore.foi.ecase.model.request.caseeflow.CaseMaintain01Request;
import com.ezcore.foi.ecase.service.CaseMaintainService;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.zhengjie.annotation.Log;

@RequiredArgsConstructor
@Api(tags = "案件維護")
@RestController
@RequestMapping("/api/v1/caseMaintain")
public class CaseMaintainController extends BaseController {
	@Autowired
	private CaseMaintainService caseMaintainService;

	@PostMapping("/continueState")
	@Log("變更續辦否結果")
	@ApiOperation("變更續辦否結果")
	public ResponseEntity<Object> caseMaintain01(@RequestBody CaseMaintain01Request req, Authentication authentication) {
	    String username = authentication.getName(); // TODO why and what is the user name
	    caseMaintainService.maintainCase(req, username);
	    return new ResponseEntity<>(HttpStatus.OK);
	}

    @GetMapping("/continueState/list")
    @ApiOperation("續辦否歷史清單")
    @PreAuthorize("@el.check('')")
    @Log("續辦否歷史清單")
    public ResponseEntity<Object> CaseMaintain02() {
        return commonResponse("CaseMaintain02");
    }

    @GetMapping("/ownerLog/{ownerType}/{caseMasterTid}")
    @ApiOperation("取得案件承辦人歷史")
    @PreAuthorize("@el.check('')")
    @Log("取得案件承辦人歷史")
    public ResponseEntity<Object> CaseMaintain03(@PathVariable String ownerType, @PathVariable String caseMasterTid) {
        return commonResponse("CaseMaintain03");
    }


}