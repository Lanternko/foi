package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

import com.ezcore.foi.ecase.dao.entity.CaseMediate;
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
public class Mediate implements Serializable {

    private static final long serialVersionUID = 7055779593788640602L;

    @ApiModelProperty(value = "案件識別值")
    @NonNull
    private String caseMasterTid;

    @ApiModelProperty(value = "資料識別值")
    @NonNull
    private String caseMediateTid;

    @ApiModelProperty(value = "調處成立否")
    private ShowCodeBo mediateType;

    @ApiModelProperty(value = "調處成立金額")
    private Integer mediateAmt;

    @ApiModelProperty(value = "調處人員")
    private String mediateUser;

    @ApiModelProperty(value = "拒絕調處日期")
    private Timestamp mediateRejectDate;

    @ApiModelProperty(value = "拒絕調處通知當事人日期")
    private Timestamp rejectNoticeDate;

    @ApiModelProperty(value = "調處情形概述")
    private String mediateDesc;

    @ApiModelProperty(value = "聯繫紀錄")
    private List<MediateContact> contacts;

    @ApiModelProperty(value = "動態欄位資料")
    private List<DynamicData> dynamicDatas;

    public Mediate(CaseMediate entity) {
    	this.caseMasterTid = entity.getCaseMasterTid();
    	this.caseMediateTid = entity.getId();
    	this.mediateType = new ShowCodeBo(CodeDetailMap.get(entity.getMediateTypeCid()));
    	this.mediateAmt = entity.getMediateAmt();
    	this.mediateUser = entity.getMediateUser();
    	this.mediateRejectDate = entity.getMediateRejectDate();
    	this.rejectNoticeDate = entity.getRejectNoticeDate();
    	this.mediateDesc = entity.getMediateDesc();
    }
    
}
