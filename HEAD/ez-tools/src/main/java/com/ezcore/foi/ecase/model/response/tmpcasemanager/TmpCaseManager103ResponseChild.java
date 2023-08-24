package com.ezcore.foi.ecase.model.response.tmpcasemanager;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;
import lombok.AllArgsConstructor;

import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
import com.ezcore.foi.ecase.model.request.tmpcasemanager.TmpCaseManager103Request;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;

@Data
@SuperBuilder
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class TmpCaseManager103ResponseChild {
    
	@NonNull
    @ApiModelProperty(value = "案件識別值", required = true)
    private String caseMasterTid;

    @ApiModelProperty(value = "公文字號-年", required = false)
    private String docYear;

    @ApiModelProperty(value = "公文字號-字", required = false)
    private String docWord;

    @ApiModelProperty(value = "公文字號-號", required = false)
    private String docNo;

    @ApiModelProperty(value = "案號", required = false)
    private String caseNo;

//    @ApiModelProperty(value = "郵遞區號", required = false)
//    private String zipCode;
//
//    @ApiModelProperty(value = "縣市", required = false)
//    private ShowCodeBo sysCity;
//
//    @ApiModelProperty(value = "區處", required = false)
//    private ShowCodeBo sysDistrict;
    
    @NonNull
    @ApiModelProperty(value = "是否須輸入申請人地址資訊", required = true)
    private Boolean needAddress;
    
    @NonNull
    @ApiModelProperty(value = "是否可進行指派(預設true)下條件時才可能會變", required = true)
    private Boolean btnAssign;
    
    public TmpCaseManager103ResponseChild() {
    	this.caseMasterTid = "案件識別值1";
    	this.docYear = "110";
    	this.docWord = "評";
    	this.docNo = "000123";
    	this.caseNo = "1120012345";
    	this.needAddress = true;
    	this.btnAssign = true;
    }
    
    public TmpCaseManager103ResponseChild(String tid, TmpCaseManager103Request req, Boolean boolean1, Boolean boolean2) {
    	
    	this.caseMasterTid = tid;
        this.docNo = req.getDocNo();
        this.docWord = req.getDocNo();
        this.docYear = req.getDocYear();
    	this.needAddress = boolean1;
    	this.btnAssign = boolean2;
    	
    }
    
    public TmpCaseManager103ResponseChild(String tid, Boolean boolean1, Boolean boolean2) {
    	
    	this.caseMasterTid = tid;
       	this.docYear = "110";
    	this.docWord = "評";
    	this.docNo = "000123";
    	this.needAddress = boolean1;
    	this.btnAssign = boolean2;
    	
    }
    
}
