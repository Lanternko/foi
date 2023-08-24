package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;

import com.ezcore.foi.ecase.dao.entity.CaseMeetPlanRefDoc;
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
public class MeetPlanRefDoc implements Serializable {

    private static final long serialVersionUID = 7055779593788640602L;

    @ApiModelProperty(value = "案件識別值")
    @NonNull
    private String caseMeetPlanTid;

    @ApiModelProperty(value = "資料識別值")
    @NonNull
    private String caseMeetPlanRefDocTid;

    @ApiModelProperty(value = "公文-年")
    @NonNull
    private String docYear;

    @ApiModelProperty(value = "公文-字")
    @NonNull
    private String docWord;

    @ApiModelProperty(value = "公文-號")
    @NonNull
    private String docNo;

   public MeetPlanRefDoc(CaseMeetPlanRefDoc entity) {
	   this.caseMeetPlanTid = entity.getCaseMeetPlanTid();
	   this.caseMeetPlanRefDocTid = entity.getId();
	   this.docYear = entity.getDocYear();
	   this.docWord = entity.getDocWord();
	   this.docNo = entity.getDocNo();
   }

}
