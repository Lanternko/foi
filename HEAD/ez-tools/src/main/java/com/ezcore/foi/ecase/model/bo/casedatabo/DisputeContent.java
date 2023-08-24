package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;
import java.util.List;

import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class DisputeContent implements Serializable {

    private static final long serialVersionUID = 7055779593788640602L;

    @ApiModelProperty(value = "案件識別值")
    private String caseMasterTid;

    @ApiModelProperty(value = "爭議產業樹")
    private TreeSelected treeIndustryCid;

    @ApiModelProperty(value = "爭議對象")
    private String companyTid;

    @ApiModelProperty(value = "爭議類型-理賠否 (保險業才有)")
    private Boolean isReparation;

    @ApiModelProperty(value = "爭議類型-選項")
    private TreeSelected disputeKind;

    @ApiModelProperty(value = "結案情形分類")
    private ShowCodeBo closeStatus;

    @ApiModelProperty(value = "結案情形1階")
    private ShowCodeBo closeReason1;

    @ApiModelProperty(value = "結案情形2階")
    private ShowCodeBo closeReason2;

    @ApiModelProperty(value = "最後承辦人")
    private String centerOwnerAccount;

    @ApiModelProperty(value = "金融服務業最後承辦人")
    private String companyOwnerAccount;

    @ApiModelProperty(value = "爭議商品/服務種類")
    private List<ProductItem> productItem;

    @ApiModelProperty(value = "動態欄位資料")
    private List<DynamicData> dynamicDatas;

    @ApiModelProperty(value = "電話件類型")
    private ShowCodeBo telType;
}

