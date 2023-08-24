package com.ezcore.foi.ecase.dao.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;
import java.util.UUID;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import io.swagger.annotations.ApiModelProperty;

import java.sql.Timestamp;
import java.time.LocalDateTime;


@Data
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "case_file_log")
public class CaseFileLog {
	@Id
    @ApiModelProperty(value = "識別值", required = true)
    @NonNull
    private String id;

    @ApiModelProperty(value = "案號", required = true)
    @NonNull
    private String caseNo;

    @ApiModelProperty(value = "檔案類型", required = true)
    @NonNull
    private Long caseFileTypeCid;

    @ApiModelProperty(value = "來源表名", required = false)
    private String fromTableName;

    @ApiModelProperty(value = "來源表識別值", required = false)
    private String fromTableTid;

    @ApiModelProperty(value = "項次", required = true)
    @NonNull
    private Integer seqNo;

    @ApiModelProperty(value = "工具區域儲存識別值", required = true)
    @NonNull
    private Long toolLocalStorageId;

    @ApiModelProperty(value = "檔案大小", required = true)
    @NonNull
    private String size;

    @ApiModelProperty(value = "檔案雜湊值", required = true)
    @NonNull
    private String sha2;

    @ApiModelProperty(value = "上傳者", required = true)
    @NonNull
    private String uploadBy;

    @ApiModelProperty(value = "上傳時間", required = true)
    @NonNull
    private Timestamp uploadTime;

    @ApiModelProperty(value = "動作", required = false)
    private String action;
}
