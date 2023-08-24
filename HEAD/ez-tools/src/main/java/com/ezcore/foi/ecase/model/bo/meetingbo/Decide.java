package com.ezcore.foi.ecase.model.bo.meetingbo;

import java.sql.Timestamp;

import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class Decide {

    @ApiModelProperty(value = "資料識別值", required = true)
    private String decideTid;

    @ApiModelProperty(value = "案件識別值", required = true)
    private String caseMasterTid;

    @ApiModelProperty(value = "會次識別值", required = true)
    private String meetingTid;

    @ApiModelProperty(value = "排序號", required = true)
    private Integer seq;

    @ApiModelProperty(value = "結案情形分類(提會結論)", required = false)
    private ShowCodeBo closeStatus;

    @ApiModelProperty(value = "結案情形1階(選會次時帶入爭議內容值)", required = false)
    private ShowCodeBo closeReason1;

    @ApiModelProperty(value = "決議結果", required = false)
    private String meetingResultDesc;

    @ApiModelProperty(value = "議事人員退回時間", required = false)
    private Timestamp cancelTime;

    // 無參數構造函數用於提供示例值
    public Decide() {
        this.decideTid = "資料識別值";
        this.caseMasterTid = "案件識別值";
        this.meetingTid = "會次識別值";
        this.seq = 0;
        this.closeStatus = new ShowCodeBo(2000L, "結案情形分類代碼", "結案情形分類顯示名稱");
        this.closeReason1 = new ShowCodeBo(2000L, "結案情形1階代碼", "結案情形1階顯示名稱");
        this.meetingResultDesc = "決議結果";
        this.cancelTime = new Timestamp(1676543210L * 1000);
    }

}
