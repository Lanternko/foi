package com.ezcore.foi.ecase.model.response;

import java.sql.Timestamp;

import com.ezcore.foi.ecase.model.response.tmpcasemanager.TmpCaseManager107Response;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@AllArgsConstructor
@SuperBuilder
@JsonIgnoreProperties(ignoreUnknown = true)
public class TmpCaseManager108Response {
	@NonNull
    @ApiModelProperty(value = "案件識別值")
    private String caseMasterTid;

    @NonNull
    @ApiModelProperty(value = "申請人姓名")
    private String applicantName;

    @NonNull
    @ApiModelProperty(value = "案號")
    private String caseNo;

    @NonNull
    @ApiModelProperty(value = "收件日期")
    private Timestamp caseDate;

    @NonNull
    @ApiModelProperty(value = "承辦人")
    private String centerOwnerAccount;

    @ApiModelProperty(value = "結案理由")
    private String closeReason1;

    public TmpCaseManager108Response() {
        this.caseMasterTid = "案件識別值";
        this.applicantName = "林OO";
        this.caseNo = "00000111";
        this.caseDate = new Timestamp(1684160541033L);
        this.centerOwnerAccount = "admin";
        this.closeReason1 = "申請人主張有理由";
    }
}
