package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;
import java.sql.Timestamp;

import com.ezcore.foi.ecase.dao.entity.CaseDocExt;
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
public class DocExt implements Serializable {

    private static final long serialVersionUID = 7055779593788640602L;

    @NonNull
    @ApiModelProperty(value = "公文件特有欄位識別值")
    private String caseDocExtTid;

    @ApiModelProperty(value = "公文字號-年")
    private String docYear;

    @ApiModelProperty(value = "公文字號-字")
    private String docWord;

    @ApiModelProperty(value = "公文字號-號")
    private String docNo;

    @ApiModelProperty(value = "來文態樣")
    private ShowCodeBo communicationClass;

    @ApiModelProperty(value = "身分類型")
    private ShowCodeBo identifyType;

    @ApiModelProperty(value = "申訴轉評議簽收日")
    private Timestamp reviewSignDate;

    @ApiModelProperty(value = "合意停止日(地院轉介案)")
    private Timestamp agreeStopDate;

    @ApiModelProperty(value = "是否簽延長")
    private Boolean isSpecialExtent;

    @ApiModelProperty(value = "議事行政-簽核日期")
    private Timestamp issueSignDate;

    @ApiModelProperty(value = "議事行政-簽核類型")
    private ShowCodeBo issueSignKind;

    @ApiModelProperty(value = "議事行政-撤件日期")
    private Timestamp issueCancelDate;

    @ApiModelProperty(value = "議事行政-評議成立簽核日")
    private Timestamp issueSureDate;

    @ApiModelProperty(value = "議事行政-結案流水號")
    private String issueReceiveNo;

//    @Autowired
//    @JSONField(serialize = false)
//    private CodeDetailMap codeDetailMap;
    
    public DocExt(CaseDocExt entity) {
    	this.caseDocExtTid = entity.getId();
        this.docYear = entity.getDocYear();
        this.docWord = entity.getDocWord();
        this.docNo = entity.getDocNo();
        this.communicationClass = new ShowCodeBo(entity.getCommunicationClassCid());
        this.identifyType = new ShowCodeBo(entity.getIdentifyTypeCid());
        this.reviewSignDate = entity.getReviewSignDate();
        this.agreeStopDate = entity.getAgreeStopDate();
        this.isSpecialExtent = entity.getIsSpecialExtent();
        this.issueSignDate = entity.getIssueSignDate();
        this.issueSignKind = new ShowCodeBo(entity.getIssueSignKindCid());
        this.issueCancelDate = entity.getIssueCancelDate();
        this.issueSureDate = entity.getIssueSureDate();
        this.issueReceiveNo = entity.getIssueReceiveNo();
    }

}
