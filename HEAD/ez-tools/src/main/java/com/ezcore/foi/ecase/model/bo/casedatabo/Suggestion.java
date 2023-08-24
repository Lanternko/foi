package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.fastjson.annotation.JSONField;
import com.ezcore.foi.ecase.dao.CaseSuggestionBookRepository;
import com.ezcore.foi.ecase.dao.entity.CaseSuggestion;
import com.ezcore.foi.ecase.dao.entity.CaseSuggestionBook;
import com.ezcore.foi.ecase.model.bo.casefilebo.CaseFileBoData;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class Suggestion implements Serializable {

    private static final long serialVersionUID = 7055779593788640602L;

    @ApiModelProperty(value = "案件識別值")
    private String caseMasterTid;

    @ApiModelProperty(value = "資料識別值")
    private String caseSuggestionTid;

    @ApiModelProperty(value = "案由")
    private String caseReasonDesc;

    @ApiModelProperty(value = "請求標的")
    private String requestDesc;

    @ApiModelProperty(value = "郵件註記")
    private String mailMessage;

    @ApiModelProperty(value = "判斷書")
    private List<SuggestionBook> suggestionBooks;

    @ApiModelProperty(value = "承辦人附件預審檔(caseFileTypeCode:suggestion)")
    private List<CaseFileBoData> files;

    @ApiModelProperty(value = "發信記錄")
    private List<String> mailLogs;

    @ApiModelProperty(value = "動態欄位資料")
    private List<DynamicData> dynamicDatas;
    
    @Autowired
    @JSONField(serialize = false)
    private CaseSuggestionBookRepository caseSuggestionBookRepository;
    
    public Suggestion(CaseSuggestion suggestion) {
    	this.caseMasterTid = suggestion.getCaseMasterTid();
    	this.caseSuggestionTid = suggestion.getId();
    	this.caseReasonDesc = suggestion.getCaseReasonDesc();
    	this.requestDesc = suggestion.getRequestDesc();
    	this.mailMessage = suggestion.getMailMessage();
    	this.suggestionBooks = new ArrayList<>();
    	for (CaseSuggestionBook entity : caseSuggestionBookRepository.findAllByCaseSuggestionTidOrderBySeqNo(caseSuggestionTid)) {
    		this.suggestionBooks.add(new SuggestionBook(entity));
    	}
    }

}
