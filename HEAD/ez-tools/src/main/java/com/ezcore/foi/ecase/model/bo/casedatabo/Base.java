package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
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
public class Base implements Serializable {

    private static final long serialVersionUID = 7055779593788640602L;

    @NonNull
    @ApiModelProperty(value = "案件識別值")
    private String caseMasterTid;

    @NonNull
    @ApiModelProperty(value = "收件方式")
    private ShowCodeBo caseType;

    @NonNull
    @ApiModelProperty(value = "案號")
    private String caseNo;

    @NonNull
    @ApiModelProperty(value = "日期/時間")
    private Timestamp caseDate;

    @NonNull
    @ApiModelProperty(value = "建立者")
    private String createBy;

    @ApiModelProperty(value = "主旨")
    private String subject;

    @ApiModelProperty(value = "來文者")
    private String receiveName;
    
    @ApiModelProperty(value = "動態欄位資料")
    private List<DynamicData> dynamicDatas;

}
