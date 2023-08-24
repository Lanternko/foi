package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;
import java.util.List;

import com.ezcore.foi.ecase.dao.entity.CaseTree;
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
@JsonIgnoreProperties(ignoreUnknown = true)
public class TreeSelected implements Serializable {

	private static final long serialVersionUID = 7055779593788640602L;

    @NonNull
    @ApiModelProperty(value = "案件樹狀資料識別值")
    private String caseTreeTid;

    @NonNull
    @ApiModelProperty(value = "選定節點識別值")
    private Long selectedCid;

    @NonNull
    @ApiModelProperty(value = "選定節點完整名稱")
    private String selectedName;
    
//    @NonNull
//    @ApiModelProperty(value = "選定節點代碼")
//    private String selectedCode;

    @ApiModelProperty(value = "子節點列表")
    private List<TreeSelectedDetail> nodeCids;
    
    public TreeSelected(CaseTree entity) {
    	this.caseTreeTid = entity.getId();
    	this.selectedCid = entity.getNodeCid();
    	this.selectedName = "";
    }

    public TreeSelected(String caseTreeTid, Long selectedCid, String selectedName) {
    	this.caseTreeTid = caseTreeTid;
    	this.selectedCid = selectedCid;
    	this.selectedName = selectedName;
    }

}
