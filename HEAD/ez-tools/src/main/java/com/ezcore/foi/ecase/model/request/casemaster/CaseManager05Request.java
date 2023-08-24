package com.ezcore.foi.ecase.model.request.casemaster;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
import com.ezcore.foi.ecase.model.bo.casedatabo.DeskExt;
import com.ezcore.foi.ecase.model.bo.casedatabo.DocExt;
import com.ezcore.foi.ecase.model.bo.casedatabo.DynamicData;
import com.ezcore.foi.ecase.model.bo.casedatabo.TelExt;
import com.ezcore.foi.ecase.model.bo.casedatabo.TreeSelected;
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
public class CaseManager05Request implements Serializable {

	private static final long serialVersionUID = 3807011057287237432L;

    @NonNull
    @ApiModelProperty(value = "案件識別值")
    private String caseMasterTid;

    @NonNull
    @ApiModelProperty(value = "收件方式")
    private ShowCodeBo caseType;
    
    @ApiModelProperty(value = "進件方式")
    private ShowCodeBo inMethod;

    @ApiModelProperty(value = "專案類別/進件類別")
    private ShowCodeBo caseClass;
    
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

    @ApiModelProperty(value = "動態欄位資料(案件文號)")
    private List<DynamicData> baseDatas;
    
    @ApiModelProperty(value = "動態欄位資料(案件資訊)")
    private List<DynamicData> attributeDatas;
    
    @ApiModelProperty(value = "件別")
    private ShowCodeBo special;

    @ApiModelProperty(value = "契約號碼")
    private String contactNo;
    
    @ApiModelProperty(value = "案件標籤")
    private List<TreeSelected> tags;
    
    @ApiModelProperty(value = "公文件特有欄位")
    private DocExt docExtInfo;

    @ApiModelProperty(value = "電話件特有欄位")
    private TelExt telExtInfo;

    @ApiModelProperty(value = "臨櫃件特有欄位")
    private DeskExt deskExtInfo;
	
}
