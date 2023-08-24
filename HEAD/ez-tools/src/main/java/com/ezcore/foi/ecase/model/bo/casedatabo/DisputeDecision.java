package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.List;

import com.ezcore.foi.ecase.dao.entity.CaseDecide;
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
public class DisputeDecision implements Serializable {

    private static final long serialVersionUID = 7055779593788640602L;

    @ApiModelProperty(value = "案件識別值")
    @NonNull
    private String caseMasterTid;

    @ApiModelProperty(value = "資料識別值")
    @NonNull
    private String caseDescisionTid;

    @ApiModelProperty(value = "評議決定(結案情形1)")
    private ShowCodeBo closeReason1;

    @ApiModelProperty(value = "評議成立否")
    private ShowCodeBo decideResult;

    @ApiModelProperty(value = "請求標的(請決決定金額)")
    private ShowCodeBo requestType;

    @ApiModelProperty(value = "評議決定金額A")
    private BigDecimal aAmt;
    
    @ApiModelProperty(value = "評議決定金額B")
    private BigDecimal bAmt;

    @ApiModelProperty(value = "申請人評議書回執日期")
    private Timestamp applReturnDate;

    @ApiModelProperty(value = "申請人評議回函文號")
    private String applReturnReceiveNo;

    @ApiModelProperty(value = "相對人評議決定回函文號")
    private String companyReturnReceiveNo;

    @ApiModelProperty(value = "適用一定額度")
    private Long quotaStyleCid;

    @ApiModelProperty(value = "一定額度類型")
    private Long quotaTypeCid;

    @ApiModelProperty(value = "減縮至一定額度")
    private Boolean isCut;

    @ApiModelProperty(value = "承辦人附件預審檔 (kind:caseDecide)")
    private List<CaseFileBoData> files;

    @ApiModelProperty(value = "是否已有大會決議")
    @NonNull
    private Boolean haveMeetDecide;

    @ApiModelProperty(value = "動態欄位資料")
    private List<DynamicData> dynamicDatas;

    public DisputeDecision(CaseDecide caseDecide) {
    	this.caseMasterTid = caseDecide.getCaseMasterTid();
    	this.caseDescisionTid = caseDecide.getId();
    	this.closeReason1 = new ShowCodeBo(CodeDetailMap.get(caseDecide.getCloseReason1Cid()));
    	this.decideResult = new ShowCodeBo(CodeDetailMap.get(caseDecide.getDecideResultCid()));
    	this.requestType = new ShowCodeBo(CodeDetailMap.get(caseDecide.getRequestTypeCid()));
    	this.aAmt = caseDecide.getAAmt();
    	this.bAmt = caseDecide.getBAmt();
    	this.applReturnDate = caseDecide.getApplReturnDate();
    	this.applReturnReceiveNo = caseDecide.getApplReturnReceiveNo();
    	this.companyReturnReceiveNo = caseDecide.getCompanyReturnReceiveNo();
    	this.quotaStyleCid = caseDecide.getQuotaStyleCid();
    	this.quotaTypeCid = caseDecide.getQuotaTypeCid();
    	this.isCut = caseDecide.getIsCut();
    	this.haveMeetDecide = false;
    }
    

}
