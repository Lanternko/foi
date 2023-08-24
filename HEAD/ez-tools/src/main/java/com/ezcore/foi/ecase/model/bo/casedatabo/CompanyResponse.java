package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;
import java.util.List;

import com.ezcore.foi.ecase.dao.entity.CaseCompanyReply;
import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
import com.ezcore.foi.ecase.model.bo.casedatabo.TreeSelected;
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
public class CompanyResponse implements Serializable {

    private static final long serialVersionUID = 7055779593788640602L;

    @ApiModelProperty(value = "識別值")
    @NonNull
    private String caseCompanyReplyTid;

    @ApiModelProperty(value = "父層識別值")
    @NonNull
    private String caseMasterTid;

    @ApiModelProperty(value = "回覆處理結果")
    private ShowCodeBo replyResultType;

    @ApiModelProperty(value = "回覆概述")
    private String resultText;

    @ApiModelProperty(value = "回覆中心之流程代碼")
    private ShowCodeBo replayFlowCode;

    @ApiModelProperty(value = "爭議類型")
    private TreeSelected disputeKind;

    @ApiModelProperty(value = "主要爭議商品名稱")
    private List<TreeSelected> productItems;

    @ApiModelProperty(value = "銷售通路")
    private String salesChannel;

    @ApiModelProperty(value = "銷售機構")
    private String salesCompanyName;

    @ApiModelProperty(value = "保單掛名業務員")
    private String salesName;
    
    @ApiModelProperty(value = "動態欄位資料")
    private List<DynamicData> dynamicDatas;

    public CompanyResponse(CaseCompanyReply entity) {
    	this.caseCompanyReplyTid = entity.getId();
    	this.caseMasterTid = entity.getCaseMasterTid();
    	this.replyResultType = new ShowCodeBo(CodeDetailMap.get(entity.getReplyResultTypeCid()));
    	this.resultText = entity.getResultText();
    	this.replayFlowCode = new ShowCodeBo(CodeDetailMap.get(entity.getReplayFlowCodeCid()));
    	this.salesChannel = entity.getSalesChannel();
    	this.salesCompanyName = entity.getSalesCompanyName();
    	this.salesName = entity.getSalesName();
    }

}
