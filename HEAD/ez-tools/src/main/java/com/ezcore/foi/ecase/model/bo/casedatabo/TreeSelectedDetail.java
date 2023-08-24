package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;

import com.ezcore.foi.ecase.dao.entity.CaseTreeSearch;
import com.ezcore.tools.codedetail.dto.CodeDetailDto;
import com.ezcore.tools.common.CodeDetailMap;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class TreeSelectedDetail implements Serializable {

	private static final long serialVersionUID = 7055779593788640602L;

    @NonNull
    @ApiModelProperty(value = "階層")
    private Integer level;

    @NonNull
    @ApiModelProperty(value = "代碼識別值")
    private Long nodeCid;

    @NonNull
    @ApiModelProperty(value = "代碼名稱")
    private String nodeName;
    
    public TreeSelectedDetail(CaseTreeSearch tree) {
    	this.level = tree.getLevel();
    	CodeDetailDto code = CodeDetailMap.get(tree.getNodeCid());
    	this.nodeCid = code.getCid();
//    	this.nodeCode = code.getCode();
    	this.nodeName = code.getName();
    }
    
}
