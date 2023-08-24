package com.ezcore.foi.ecase.model.bo.meetingbo;

import java.io.Serializable;

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
public class MeetingFile implements Serializable {

	private static final long serialVersionUID = -5236792658672598965L;

	@ApiModelProperty(value = "識別值")
    @NonNull
    private String meetingFileTid;

    @ApiModelProperty(value = "父層識別值")
    @NonNull
    private String meetingTid;

    @ApiModelProperty(value = "檔案類型")
    @NonNull
    private ShowCodeBo meetingFileType;

    @ApiModelProperty(value = "顯示位置")
    @NonNull
    private ShowCodeBo meetingFileDisplay;

    @ApiModelProperty(value = "系統保存檔識別值;下載用")
    @NonNull
    private String toolLocalStorageId;

    @ApiModelProperty(value = "檔案大小")
    @NonNull
    private String size;

    @ApiModelProperty(value = "檔案驗證碼")
    @NonNull
    private String sha2;
    
    public MeetingFile(Integer req) {
    	if (req == 1) {
	    	this.meetingFileTid = "識別值1";
	    	this.meetingTid = "父層識別值1";
	    	this.meetingFileType = new ShowCodeBo(0L, "檔案類型代碼1", "檔案類型顯示名稱1");
	    	this.meetingFileDisplay = new ShowCodeBo(0L, "顯示位置代碼1", "顯示位置顯示名稱1");
	    	this.toolLocalStorageId = "保存檔案識別值";
	    	this.size = "檔案大小1";
	    	this.sha2 = "檔案驗證碼1";
    	} else {
	    	this.meetingFileTid = "識別值2";
	    	this.meetingTid = "父層識別值2";
	    	this.meetingFileType = new ShowCodeBo(0L, "檔案類型代碼2", "檔案類型顯示名稱2");
	    	this.meetingFileDisplay = new ShowCodeBo(0L, "顯示位置代碼2", "顯示位置顯示名稱2");
	    	this.toolLocalStorageId = "保存檔案識別值";
	    	this.size = "檔案大小2";
	    	this.sha2 = "檔案驗證碼2";
    	}
    }
    
    public MeetingFile() {
    	this.meetingFileTid = "識別值1";
    	this.meetingTid = "父層識別值1";
    	this.meetingFileType = new ShowCodeBo(0L, "檔案類型代碼1", "檔案類型顯示名稱1");
    	this.meetingFileDisplay = new ShowCodeBo(0L, "顯示位置代碼1", "顯示位置顯示名稱1");
    	this.toolLocalStorageId = "保存檔案識別值";
    	this.size = "檔案大小1";
    	this.sha2 = "檔案驗證碼1";
    }
}