package com.ezcore.foi.ecase.model.request;

import java.sql.Timestamp;

import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class TmpMember122Request {

    @NonNull
    @ApiModelProperty(value = "委員類別")
    private Long memberTypeCid;

    @NonNull
    @ApiModelProperty(value = "報表類型")
    private ShowCodeBo reportType;

    @ApiModelProperty(value = "起始日期")
    private Timestamp beginDate;

    @ApiModelProperty(value = "結束日期")
    private Timestamp endDate;

    public TmpMember122Request() {
        this.memberTypeCid = 2000L; 
        this.reportType = new ShowCodeBo("代碼", "代碼名稱", 12L);
        this.beginDate = new Timestamp(1683912780000L);
        this.endDate = new Timestamp(1683912780000L);
    }
}
