package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.fastjson.annotation.JSONField;
import com.ezcore.foi.common.FoiConstants;
import com.ezcore.foi.ecase.dao.CaseFileRepository;
import com.ezcore.foi.ecase.dao.entity.CaseExaminer;
import com.ezcore.foi.ecase.dao.entity.CaseFile;
import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
import com.ezcore.foi.ecase.model.bo.casefilebo.CaseFileBoData;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class Examiner{


    @ApiModelProperty(value = "案件識別值")
    private String caseMasterTid;

    @ApiModelProperty(value = "資料識別值")
    private String caseSuggestionTid;

    @ApiModelProperty(value = "預審委員識別值")
    private String memberTid;

    @ApiModelProperty(value = "顯示次序")
    private Integer seqNo;

    @ApiModelProperty(value = "姓名")
    private String name;

    @ApiModelProperty(value = "首次通知日期")
    private Timestamp firstMailDate;

    @ApiModelProperty(value = "最後通知日期")
    private Timestamp latestMailDate;

    @ApiModelProperty(value = "審查狀態")
    private ShowCodeBo examStatus;

    @ApiModelProperty(value = "審查回覆日")
    private Timestamp replayDate;

    @ApiModelProperty(value = "判斷結論(因為可選其他,無法用uuid)")
    private String resultCaseSuggestionBookTid;

    @ApiModelProperty(value = "其他-判斷結論")
    private String resultDesc;

    @ApiModelProperty(value = "判斷結論(因為可選其他,無法用uuid)")
    private String reasonCaseSuggestionBookTid;

    @ApiModelProperty(value = "其他-理由")
    private String reasionDesc;

    @ApiModelProperty(value = "委員附件預審檔")
    private List<CaseFileBoData> files;

//    @Autowired
//    @JSONField(serialize = false)
//    private CodeDetailMap codeDetailMap;
//    
    @Autowired
    @JSONField(serialize = false)
    private CaseFileRepository caseFileRepository;
    
    public Examiner(CaseExaminer caseExaminer) {
    	this.caseMasterTid = caseExaminer.getCaseMasterTid();
    	this.memberTid = caseExaminer.getMemberTid();
    	this.seqNo = caseExaminer.getSeqNo();
    	this.name = caseExaminer.getName();
    	this.firstMailDate = caseExaminer.getFirstMailDate();
    	this.latestMailDate = caseExaminer.getLatestMailDate();
    	this.examStatus = new ShowCodeBo(caseExaminer.getExamStatusCid());
    	this.replayDate = caseExaminer.getReplayDate();
    	this.resultCaseSuggestionBookTid = caseExaminer.getResultCaseSuggestionBookTid();
    	this.resultDesc = caseExaminer.getResultDesc();
    	this.reasonCaseSuggestionBookTid = caseExaminer.getReasonCaseSuggestionBookTid();
    	this.reasionDesc = caseExaminer.getReasionDesc();
    	this.files = new ArrayList<>();
    	for (CaseFile entity : caseFileRepository.findAllByFromTableNameAndFromTableTid(FoiConstants.CASE_EXAMINER, caseExaminer.getId())) {
    		this.files.add(new CaseFileBoData(entity));
    	}
    }

}
