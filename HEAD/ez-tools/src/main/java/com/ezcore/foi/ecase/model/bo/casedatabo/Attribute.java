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
public class Attribute implements Serializable {

    private static final long serialVersionUID = 7055779593788640602L;

    @ApiModelProperty(value = "案件識別值")
    private String caseMasterTid;

    @ApiModelProperty(value = "收件方式")
    private ShowCodeBo caseType;

    @ApiModelProperty(value = "進件方式")
    private ShowCodeBo inMethod;

    @ApiModelProperty(value = "專案類別/進件類別")
    private ShowCodeBo caseClass;

    @ApiModelProperty(value = "件別")
    private ShowCodeBo special;

    @ApiModelProperty(value = "契約號碼")
    private String contactNo;

    @ApiModelProperty(value = "原申訴案號")
    private String appealCaseNo;

    @ApiModelProperty(value = "續辦否")
    private ShowCodeBo continueStatus;

    @ApiModelProperty(value = "續辦案號")
    private String preCaseNo;

    @ApiModelProperty(value = "案件標籤")
    private List<TreeSelected> tags;

    @ApiModelProperty(value = "公文件特有欄位")
    private DocExt docExtInfo;

    @ApiModelProperty(value = "電話件特有欄位")
    private TelExt telExtInfo;

    @ApiModelProperty(value = "臨櫃件特有欄位")
    private DeskExt deskExtInfo;

    @ApiModelProperty(value = "動態欄位資料")
    private List<DynamicData> dynamicDatas;

}
