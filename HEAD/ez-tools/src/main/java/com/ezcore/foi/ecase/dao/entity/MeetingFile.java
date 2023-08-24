package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "MEETING_FILE")
public class MeetingFile implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @NotNull
    @Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "識別值")
    private String id;

    @NotNull
    @Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "父層識別值")
    private String meetingTid;

    @NotNull
    @ApiModelProperty(value = "檔案類型")
    private Long meetingFileTypeCid;

    @NotNull
    @ApiModelProperty(value = "顯示位置")
    private Long meetingFileDisplayCid;

    @NotNull
    @ApiModelProperty(value = "檔案大小")
    private String size;

    @NotNull
    @ApiModelProperty(value = "檔案驗證碼")
    private String sha2;

    @NotNull
    @ApiModelProperty(value = "異動者")
    private String uploadBy;

    @NotNull
    @ApiModelProperty(value = "異動時間")
    private Timestamp uploadTime;

    @NotNull
    @Column(columnDefinition = "uniqueidentifier")
    @ApiModelProperty(value = "系統保存檔識別值")
    private String toolLocalStorageId;
    
}
