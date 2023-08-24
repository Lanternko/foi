package com.ezcore.foi.ecase.model.response.tmpcasemanager;

import java.sql.Timestamp;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class TmpCaseManager104ResponseChild {
	    
	    @NonNull
	    @ApiModelProperty(value = "案件識別值")
	    private String caseMasterTid;
	
	    @ApiModelProperty(value = "公文字號-年")
	    private String docYear;
	
	    @ApiModelProperty(value = "公文字號-字")
	    private String docWord;
	
	    @ApiModelProperty(value = "公文字號-號")
	    private String docNo;
	
	    @ApiModelProperty(value = "案號")
	    private String caseNo;
	
	    @NonNull
	    @ApiModelProperty(value = "承辦人")
	    private String centerOwnerAccount;
	
	    @NonNull
	    @ApiModelProperty(value = "結案情形")
	    private String latestCaseFlow;
	
	    @NonNull
	    @ApiModelProperty(value = "申訴人")
	    private String applicantName;
	
	    @NonNull
	    @ApiModelProperty(value = "受理天數")
	    private Integer acceptDays;
	    
	    @NonNull
	    @ApiModelProperty(value = "收件日期")
	    private Timestamp caseDate;
	    
	    public TmpCaseManager104ResponseChild() {
	        this.caseMasterTid = "案件識別值";
	        this.docYear = "112";
	        this.docWord = "評";
	        this.docNo = "000012";
	        this.caseNo = "112";
	        this.centerOwnerAccount = "小叮噹";
	        this.latestCaseFlow = "撤件和解";
	        this.applicantName = "林oo";
	        this.acceptDays = 30;
	        this.caseDate = new Timestamp(System.currentTimeMillis());
	    }
}
