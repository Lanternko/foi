package com.ezcore.foi.ecase.model.request;

import java.sql.Timestamp;

import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class TmpMember121Request {

    @NonNull
    @ApiModelProperty(value = "委員類別")
    private Long memberTypeCid;

    @NonNull
    @ApiModelProperty(value = "報表類型")
    private ShowCodeBo reportType;

    @ApiModelProperty(value = "屆次")
    private Integer session;

    @ApiModelProperty(value = "會次")
    private Integer meetNo;

    @ApiModelProperty(value = "製表類型")
    private ShowCodeBo reportMethod;

    @ApiModelProperty(value = "起始日期")
    private Timestamp beginDate;

    @ApiModelProperty(value = "結束日期")
    private Timestamp endDate;
    
    public TmpMember121Request() {
        this.memberTypeCid = 2368L;
        this.session = 1;
        this.meetNo = 12;
        this.reportType = new ShowCodeBo("代碼", "代碼名稱", 12L);
        this.reportMethod = new ShowCodeBo("代碼", "代碼名稱", 12L);
        this.beginDate = new Timestamp(1683912780000L);
        this.endDate = new Timestamp(1683912780000L);
    }
}
