package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;

import com.ezcore.foi.ecase.dao.entity.CaseTelExt;
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
public class TelExt implements Serializable {

    private static final long serialVersionUID = 7055779593788640602L;

    @NonNull
    @ApiModelProperty(value = "電話件特有欄位識別值")
    private String caseTelExtTid;

    @NonNull
    @ApiModelProperty(value = "本次是否曾向業者申訴")
    private ShowCodeBo appealType;

    @NonNull
    @ApiModelProperty(value = "本次是否曾由本人或他人向本中心申訴")
    private ShowCodeBo appealClass;
    
    @ApiModelProperty(value = "金保法第13條第2項規定.第1項")
    private Boolean isCheck132_1;

    @NonNull
    @ApiModelProperty(value = "金保法第13條第2項規定.第2項")
    private Boolean isCheck132_2;

    @NonNull
    @ApiModelProperty(value = "金保法第13條第2項規定.第3項")
    private Boolean isCheck132_3;

    @NonNull
    @ApiModelProperty(value = "金保法第13條第2項規定.第4項")
    private Boolean isCheck132_4;

    @NonNull
    @ApiModelProperty(value = "金保法第13條第2項規定.第5項")
    private Boolean isCheck132_5;

    
    public TelExt(CaseTelExt entity) {
    	this.caseTelExtTid = entity.getId();
    	this.appealType = new ShowCodeBo(entity.getAppealTypeCid());
    	this.appealClass = new ShowCodeBo(entity.getAppealClassCid());
    	this.isCheck132_1 = entity.getIsCheck1321();
    	this.isCheck132_2 = entity.getIsCheck1322();
    	this.isCheck132_3 = entity.getIsCheck1323();
    	this.isCheck132_4 = entity.getIsCheck1324();
    	this.isCheck132_5 = entity.getIsCheck1325();
    }

}
