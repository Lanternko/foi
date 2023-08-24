package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;
import java.sql.Timestamp;

import com.ezcore.foi.ecase.dao.entity.CaseDeskExt;
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
public class DeskExt implements Serializable {

    private static final long serialVersionUID = 7055779593788640602L;

    @NonNull
    @ApiModelProperty(value = "臨櫃件特有欄位識別值")
    private String caseDeskExtTid;

    @ApiModelProperty(value = "訪談結束時間")
    private Timestamp endTime;

    @ApiModelProperty(value = "評議申請應附身分證正、反面影本")
    private Boolean isAttachIdCopy;

    @ApiModelProperty(value = "委任代理文件")
    private Boolean isAttactAgentPaper;

    @ApiModelProperty(value = "評議申請應附受任人/代理人身分證正、反面影本")
    private Boolean isAttactAgentCopy;

    @ApiModelProperty(value = "是否曾提出民事訟訴")
    private Boolean isLaw;

    @ApiModelProperty(value = "民事訟訴內容簡述")
    private String lawRemark;

    @ApiModelProperty(value = "是否成立調處、評議、和解、調解或仲裁")
    private Boolean isMeeting;

    @ApiModelProperty(value = "調處、評議、和解、調解或仲裁-內容簡述")
    private String meetingRemark;

    @ApiModelProperty(value = "是否曾向金融服務業申訴過")
    private Boolean isCompanyAppeal;

    @ApiModelProperty(value = "申訴日期")
    private Timestamp appealDate;

    @ApiModelProperty(value = "收受金融服務業回覆日期")
    private Timestamp companyReplyDate;

    @ApiModelProperty(value = "申訴內容與本次訴求是否相符")
    private Boolean isAppealSame;

    @ApiModelProperty(value = "臨櫃-諮詢事項")
    private ShowCodeBo deskClass;

//    @Autowired
//    @JSONField(serialize = false)
//    private CodeDetailMap codeDetailMap;

    public DeskExt(CaseDeskExt entity) {
    	this.caseDeskExtTid = entity.getId();
        this.endTime = entity.getEndTime();
        this.isAttachIdCopy = entity.getIsAttachIdCopy();
        this.isAttactAgentPaper = entity.getIsAttactAgentPaper();
        this.isAttactAgentCopy = entity.getIsAttactAgentCopy();
        this.isLaw = entity.getIsLaw();
        this.lawRemark = entity.getLawRemark();
        this.isMeeting = entity.getIsMeeting();
        this.meetingRemark = entity.getMeetingRemark();
        this.isCompanyAppeal = entity.getIsCompanyAppeal();
        this.appealDate = entity.getAppealDate();
        this.companyReplyDate = entity.getCompanyReplyDate();
        this.isAppealSame = entity.getIsAppealSame();
        this.deskClass = new ShowCodeBo(CodeDetailMap.get(entity.getDeskClassCid()));
    }

}
