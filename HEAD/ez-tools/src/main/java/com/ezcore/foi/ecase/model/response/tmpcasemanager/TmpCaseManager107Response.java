package com.ezcore.foi.ecase.model.response.tmpcasemanager;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@AllArgsConstructor
@SuperBuilder
@JsonIgnoreProperties(ignoreUnknown = true)
public class TmpCaseManager107Response {
    @ApiModelProperty(value = "案件識別值", required = true)
    @NonNull
    private String caseMasterTid;

    @ApiModelProperty(value = "申請人姓名", required = true)
    @NonNull
    private String applicantName;

    @ApiModelProperty(value = "股別", required = true)
    @NonNull
    private String nickName;

    @ApiModelProperty(value = "公文字號-年", required = true)
    @NonNull
    private String docYear;

    @ApiModelProperty(value = "公文字號-字", required = true)
    @NonNull
    private String docWord;

    @ApiModelProperty(value = "公文字號-號", required = true)
    @NonNull
    private String docNo;

    @ApiModelProperty(value = "相對人", required = true)
    @NonNull
    private String companyName;

    @ApiModelProperty(value = "審查狀態", required = true)
    @NonNull
    private String examStatus;

    @ApiModelProperty(value = "備註", required = false)
    private String memo;
    
    @ApiModelProperty(value = "案號", required = true)
    @NonNull
    private String caseNo;
    
    
    public TmpCaseManager107Response() {
        this.caseMasterTid = "案件識別值";
        this.applicantName = "申請人姓名1";
        this.companyName = "富幫人壽";
        this.docYear = "110";
        this.docWord = "評";
        this.docNo = "000123";
        this.nickName = "恭股";
        this.examStatus = "已審查";
        this.memo = "備註";
        this.caseNo = "1120012345";
    }
}
