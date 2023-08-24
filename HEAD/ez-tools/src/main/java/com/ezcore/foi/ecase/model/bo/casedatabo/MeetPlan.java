package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

import com.ezcore.foi.ecase.dao.entity.CaseMeetPlan;
import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
import com.ezcore.foi.ecase.model.bo.casefilebo.CaseFileBoData;
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
public class MeetPlan implements Serializable {

    private static final long serialVersionUID = 7055779593788640602L;

    @ApiModelProperty(value = "案件識別值")
    @NonNull
    private String caseMasterTid;

    @ApiModelProperty(value = "資料識別值")
    @NonNull
    private String caseMeetPlanTid;

    @ApiModelProperty(value = "會議識別值")
    private String meetingTid;

    @ApiModelProperty(value = "提會類型")
    private ShowCodeBo planType;

    @ApiModelProperty(value = "結案情形分類")
    private ShowCodeBo closeStatus;

    @ApiModelProperty(value = "結案情形1階")
    private ShowCodeBo closeReason1;

    @ApiModelProperty(value = "結案情形2階")
    private ShowCodeBo closeReason2;

    @ApiModelProperty(value = "提會時間")
    private Timestamp submitTime;

    @ApiModelProperty(value = "提案取消時間")
    private Timestamp cancelTime;

    @ApiModelProperty(value = "公文同一評議書多案訊息")
    private String mutiDocMessge;

    @ApiModelProperty(value = "提供草本上傳")
    private List<CaseFileBoData> files;

    @ApiModelProperty(value = "關聯件")
    private List<MeetPlanRefDoc> refDocs;

    @ApiModelProperty(value = "動態欄位資料")
    private List<DynamicData> dynamicDatas;
    
    public MeetPlan(CaseMeetPlan entity) {
    	this.caseMasterTid = entity.getCaseMasterTid();
    	this.caseMeetPlanTid = entity.getId();
    	this.meetingTid = entity.getMeetingTid();
    	this.planType = new ShowCodeBo(CodeDetailMap.get(entity.getPlanTypeCid()));
    	this.closeStatus = new ShowCodeBo(CodeDetailMap.get(entity.getCloseStatusCid()));
    	this.closeReason1 = new ShowCodeBo(CodeDetailMap.get(entity.getCloseReason1Cid()));
    	this.submitTime = entity.getSubmitTime();
    	this.cancelTime = entity.getCancelTime();
    }

}
