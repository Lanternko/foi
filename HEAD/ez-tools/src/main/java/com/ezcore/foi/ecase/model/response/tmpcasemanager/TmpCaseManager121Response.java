package com.ezcore.foi.ecase.model.response.tmpcasemanager;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;
import io.swagger.annotations.ApiModelProperty;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
import com.ezcore.foi.ecase.model.bo.casefilebo.CaseFileBoData;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Data
@SuperBuilder
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class TmpCaseManager121Response {

    @ApiModelProperty(value = "案件識別值", required = true)
    @NonNull
    private String caseMasterTid;

    @ApiModelProperty(value = "資料識別值", required = true)
    @NonNull
    private String caseMediateContractTid;

    @ApiModelProperty(value = "聯繫日期", required = false)
    private Timestamp contactTime;

    @ApiModelProperty(value = "建檔者", required = true)
    @NonNull
    private String createBy;

    @ApiModelProperty(value = "公文年度", required = true)
    @NonNull
    private String docYear;

    @ApiModelProperty(value = "公文字", required = true)
    @NonNull
    private String docWord;

    @ApiModelProperty(value = "公文號", required = true)
    @NonNull
    private String docNo;

    @ApiModelProperty(value = "聯繫對象", required = true)
    @NonNull
    private List<String> contactUsers;

    @ApiModelProperty(value = "聯繫目的", required = true)
    @NonNull
    private ShowCodeBo contactType;

    @ApiModelProperty(value = "調處方式", required = true)
    @NonNull
    private ShowCodeBo contactMethod;

    @ApiModelProperty(value = "調處情形概述", required = false)
    private String meidateDesc;

    @ApiModelProperty(value = "調處結果", required = true)
    @NonNull
    private String meidateResult;

    @ApiModelProperty(value = "長官審核時間", required = false)
    private Long signTime;

    @ApiModelProperty(value = "長官批示結果", required = false)
    private ShowCodeBo signStatus;

    @ApiModelProperty(value = "備註", required = false)
    private String remark;

    @ApiModelProperty(value = "附加檔案", required = false)
    private List<CaseFileBoData> files;

    public TmpCaseManager121Response() {
        this.caseMasterTid = "案件識別值";
        this.caseMediateContractTid = "資料識別值";
        this.contactTime = new Timestamp(1683912780000L);
        this.createBy = "建檔者";
        this.docYear = "112";
        this.docWord = "評";
        this.docNo = "000123";
        this.contactUsers = Arrays.asList("user", "boss");
        this.contactType = new ShowCodeBo();
        this.contactMethod = new ShowCodeBo();
        this.meidateResult = "調處結果";
        this.meidateDesc = "調處情形概述";
        this.signTime = 1683912780000L;
        this.signStatus = null;
        this.remark = "備註";
        this.files = new ArrayList<>(); // 留空的文件列表
    }

}
