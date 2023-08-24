package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.ezcore.foi.ecase.dao.entity.CaseMediateContact;
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
public class MediateContact implements Serializable {

    private static final long serialVersionUID = 7055779593788640602L;

    @ApiModelProperty(value = "調處紀錄識別值")
    @NonNull
    private String caseMediateTid;

    @ApiModelProperty(value = "資料識別值")
    @NonNull
    private String caseMediateContractTid;

    @ApiModelProperty(value = "聯繫對象")
    @NonNull
    private List<String> contactUsers;

    @ApiModelProperty(value = "聯繫目的")
    @NonNull
    private ShowCodeBo contactType;

    @ApiModelProperty(value = "聯繫方式")
    @NonNull
    private ShowCodeBo contactMethod;
    
    @ApiModelProperty(value = "聯繫日期")
    @NonNull
    private Timestamp contactDate;

    @ApiModelProperty(value = "調處情形摘要")
    @NonNull
    private String remark;

    @ApiModelProperty(value = "須通知長官調處情形")
    @NonNull
    private Boolean needMail;

    @ApiModelProperty(value = "通知信發送時間")
    private Timestamp mailTime;

    @ApiModelProperty(value = "長官審核時間")
    private Timestamp signTime;

    @ApiModelProperty(value = "長官批示結果")
    private ShowCodeBo signStatus;

    @ApiModelProperty(value = "長官批核")
    private String signMemo;

    @ApiModelProperty(value = "建檔者")
    @NonNull
    private String createBy;

    @ApiModelProperty(value = "排入通知長官時間")
    @NonNull
    private Timestamp createTime;

    @ApiModelProperty(value = "附加檔案")
    private List<CaseFileBoData> files;
    
    public MediateContact(CaseMediateContact entity) {
    	this.caseMediateTid = entity.getCaseMediateTid();
    	this.caseMediateContractTid = entity.getId();
    	this.contactUsers = Arrays.asList(entity.getContactUserText().split("\t"));
    	this.contactType = new ShowCodeBo(CodeDetailMap.get(entity.getContactTypeCid()));
    	this.contactMethod = new ShowCodeBo(CodeDetailMap.get(entity.getContactMethodCid()));
    	this.contactDate = entity.getContactDate();
    	this.remark = entity.getRemark();
    	this.needMail = entity.getNeedMail();
    	this.mailTime = entity.getMailTime();
    	this.signTime = entity.getSignTime();
    	this.signStatus = new ShowCodeBo(CodeDetailMap.get(entity.getSignStatusCid()));
    	this.signMemo = entity.getSignMemo();
    	this.createBy = entity.getCreateBy();
    	this.createTime = entity.getCreateTime();
    }

}
