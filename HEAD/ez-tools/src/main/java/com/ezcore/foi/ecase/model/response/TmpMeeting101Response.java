package com.ezcore.foi.ecase.model.response;

import java.sql.Timestamp;
import java.util.Arrays;
import java.util.List;
import java.util.ArrayList;

import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
import com.ezcore.foi.ecase.model.bo.meetingbo.MeetingFile;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NonNull;

@Data
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class TmpMeeting101Response {

    @NonNull
    @ApiModelProperty(value = "會議識別值")
    private String meetingTid;

    @NonNull
    @ApiModelProperty(value = "屆次")
    private Integer session;

    @NonNull
    @ApiModelProperty(value = "會次")
    private Integer meetNo;

    @NonNull
    @ApiModelProperty(value = "會議日期/時間")
    private Timestamp meetDate;

    @NonNull
    @ApiModelProperty(value = "上傳檔案")
    private List<MeetingFile> files;

    public TmpMeeting101Response() {
        this.meetingTid = "父層識別值1";
        this.session = 4;
        this.meetNo = 12;
        this.meetDate = new Timestamp(1677830400L);
        this.files = new ArrayList<>();

        MeetingFile file = MeetingFile.builder()
            .meetingFileTid("識別值1")
            .meetingTid("父層識別值1")
            .meetingFileType(new ShowCodeBo(0L, "檔案類型代碼1", "檔案類型顯示名稱1"))
            .meetingFileDisplay(new ShowCodeBo(0L, "顯示位置代碼1", "顯示位置顯示名稱1"))
            .toolLocalStorageId("存儲識別值1")
            .size("檔案大小1")
            .sha2("檔案驗證碼1")
            .build();

        files.add(file);
    }
}
