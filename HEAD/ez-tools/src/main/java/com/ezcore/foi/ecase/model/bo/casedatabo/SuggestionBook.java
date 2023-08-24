package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;
import java.util.List;

import com.ezcore.foi.ecase.dao.entity.CaseSuggestionBook;
import com.ezcore.foi.ecase.model.bo.casefilebo.CaseFileBoData;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;
import me.zhengjie.utils.StringUtils;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class SuggestionBook implements Serializable {

	private static final long serialVersionUID = -1258388196636849010L;

	@ApiModelProperty(value = "案件評議建議書識別值")
    private String caseSuggestionBookTid;

    @ApiModelProperty(value = "序號")
    private Integer seqNo;

    @ApiModelProperty(value = "案由描述")
    private String suggestionBookDesc;
	
    public SuggestionBook(CaseSuggestionBook suggestionBook) {
    	this.caseSuggestionBookTid = suggestionBook.getCaseSuggestionTid();
    	this.seqNo = suggestionBook.getSeqNo();
    	this.suggestionBookDesc = suggestionBook.getSuggestionBookDesc();
    }
    
    public CaseSuggestionBook toEntity() {
    	CaseSuggestionBook entity = new CaseSuggestionBook();
    	entity.setId(StringUtils.newUuidStr());
    	entity.setCaseSuggestionTid(this.caseSuggestionBookTid);
    	entity.setSeqNo(this.seqNo);
    	
    	if (this.suggestionBookDesc.charAt(2) == '-') {							// 去除預審類別文字(ex: 甲案-)
    		this.suggestionBookDesc = this.suggestionBookDesc.substring(3);
    	}
    	entity.setSuggestionBookDesc(this.suggestionBookDesc);
    	return entity;
    }
    
}
