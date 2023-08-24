package com.ezcore.foi.ecase.model.bo.meetingbo;

import java.io.Serializable;

import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@JsonIgnoreProperties(ignoreUnknown = true)
public class MeetingCase implements Serializable {

	private static final long serialVersionUID = -783383586557097949L;

	@ApiModelProperty(value = "資料識別值")
    @NonNull
    private String decideTid;

    @ApiModelProperty(value = "案件識別值")
    @NonNull
    private String caseMasterTid;

    @ApiModelProperty(value = "會次識別值")
    @NonNull
    private String meetingTid;

    @ApiModelProperty(value = "序號")
    @NonNull
    private Integer seq;

    @ApiModelProperty(value = "公文年度")
    @NonNull
    private String docYear;

    @ApiModelProperty(value = "公文字")
    @NonNull
    private String docWord;

    @ApiModelProperty(value = "公文號")
    @NonNull
    private String docNo;

    @ApiModelProperty(value = "案由")
    @NonNull
    private String caseDesc;

    @ApiModelProperty(value = "承辦人(股別)")
    @NonNull
    private String centerOwnerAccount;

    @ApiModelProperty(value = "案件類型")
    @NonNull
    private ShowCodeBo meetCloseStatus;
    // 具有示例值的構造函數
    public MeetingCase() {
        this.decideTid = "資料識別值";
        this.caseMasterTid = "案件識別值";
        this.meetingTid = "會次識別值";
        this.seq = 0;
        this.docYear = "公文年度";
        this.docWord = "公文字";
        this.docNo = "公文號";
        this.caseDesc = "案由";
        this.centerOwnerAccount = "承辦人(股別)";
        this.meetCloseStatus = new ShowCodeBo(0L, "案件類型代碼", "案件類型顯示名稱");
    }


    // Add getters and setters here
}