package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;

import com.ezcore.foi.ecase.dao.entity.CaseProductItem;
import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
import com.ezcore.tools.common.CodeDetailMap;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class ProductItem implements Serializable {

    private static final long serialVersionUID = 7055779593788640602L;

    @ApiModelProperty(value = "識別值")
    @NonNull
    private String caseProductItemTid;

    @ApiModelProperty(value = "父層識別值")
    @NonNull
    private String caseMasterTid;

    @ApiModelProperty(value = "爭議商品中分類")
    private ShowCodeBo itemType;

    @ApiModelProperty(value = "爭議商品小分類")
    @NonNull
    private ShowCodeBo itemKind;

    @ApiModelProperty(value = "商議爭品名稱")
    private String itemName;

    public ProductItem(CaseProductItem entity) {
    	this.caseProductItemTid = entity.getId();
    	this.caseMasterTid = entity.getCaseMasterTid();
    	this.itemType = new ShowCodeBo(CodeDetailMap.get(entity.getItemTypeCid()));
    	this.itemKind = new ShowCodeBo(CodeDetailMap.get(entity.getItemKindCid()));
    	this.itemName = entity.getItemName();
    }
    
}
