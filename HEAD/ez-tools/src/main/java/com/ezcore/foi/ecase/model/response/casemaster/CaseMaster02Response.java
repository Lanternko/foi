package com.ezcore.foi.ecase.model.response.casemaster;

import java.util.List;

import com.ezcore.foi.ecase.model.bo.casedatabo.Attribute;
import com.ezcore.foi.ecase.model.bo.casedatabo.Base;
import com.ezcore.foi.ecase.model.bo.casedatabo.CompanyResponse;
import com.ezcore.foi.ecase.model.bo.casedatabo.Consultant;
import com.ezcore.foi.ecase.model.bo.casedatabo.DisputeContent;
import com.ezcore.foi.ecase.model.bo.casedatabo.DisputeDecision;
import com.ezcore.foi.ecase.model.bo.casedatabo.Examiner;
import com.ezcore.foi.ecase.model.bo.casedatabo.Mediate;
import com.ezcore.foi.ecase.model.bo.casedatabo.MeetPlan;
import com.ezcore.foi.ecase.model.bo.casedatabo.Memo;
import com.ezcore.foi.ecase.model.bo.casedatabo.ReceiveAppl;
import com.ezcore.foi.ecase.model.bo.casedatabo.ReceiveOther;
import com.ezcore.foi.ecase.model.bo.casedatabo.ReferUser;
import com.ezcore.foi.ecase.model.bo.casedatabo.Suggestion;
import com.ezcore.foi.ecase.model.bo.casedatabo.User;
import com.ezcore.foi.ecase.model.bo.caseflowbo.QueryData;
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
public class CaseMaster02Response {
	
    @NonNull
    @ApiModelProperty(value = "案件文號")
    private Base base;

    @NonNull
    @ApiModelProperty(value = "基本資料")
    private Attribute attribute;

    @NonNull
    @ApiModelProperty(value = "人名資料-申請人")
    private User user;

    @NonNull
    @ApiModelProperty(value = "契約關係人")
    private List<ReferUser> referUsers;

    @NonNull
    @ApiModelProperty(value = "爭議內容")
    private DisputeContent disputeContent;

    @NonNull
    @ApiModelProperty(value = "案件進度")
    private List<QueryData> flows;

    @ApiModelProperty(value = "調處程序")
    private Mediate mediate;

    @ApiModelProperty(value = "諮詢顧問")
    private List<Consultant> consultant;

    @ApiModelProperty(value = "預審-預審資訊")
    private Suggestion suggestionExam;

    @ApiModelProperty(value = "預審-預審委員")
    private List<Examiner> examiners;

    @ApiModelProperty(value = "提會")
    private MeetPlan meet;

    @ApiModelProperty(value = "評議決定")
    private DisputeDecision disputeDecision;

    @ApiModelProperty(value = "金融服務業回覆")
    private CompanyResponse companyResponse;

    @ApiModelProperty(value = "案情摘要")
    private Memo annotation;

    @ApiModelProperty(value = "案件備註")
    private CaseMaster28Response memo;

    @ApiModelProperty(value = "案關文號")
    private List<ReceiveAppl> receiveAppl;

    @ApiModelProperty(value = "立委關切")
    private List<ReceiveOther> receiveOther1;

    @ApiModelProperty(value = "法院核可")
    private List<ReceiveOther> receiveOther2;

}
