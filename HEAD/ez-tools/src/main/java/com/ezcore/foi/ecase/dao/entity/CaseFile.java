package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "CASE_FILE")
public class CaseFile implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(columnDefinition ="uniqueidentifier")
    @ApiModelProperty(value = "識別值")
    private String id;

    @ApiModelProperty(value = "案號")
    private String caseNo;

    @ApiModelProperty(value = "檔案類型")
    private Long caseFileTypeCid;

    @ApiModelProperty(value = "關聯資料表")
    private String fromTableName;

    @Column(columnDefinition ="uniqueidentifier")
    @ApiModelProperty(value = "資料表識別值")
    private String fromTableTid;

    @ApiModelProperty(value = "顯示次序")
    private Integer seqNo;

    @ApiModelProperty(value = "系統保存檔識別值")
    private String toolLocalStorageId; //UUID

    @ApiModelProperty(value = "檔案大小")
    private String size;

    @ApiModelProperty(value = "檔案驗證碼")
    private String sha2;

    @ApiModelProperty(value = "異動者", hidden = true)
    private String uploadBy;

    @ApiModelProperty(value = "異動時間", hidden = true)
    private Timestamp uploadTime;
    
    // TODO (show)name + type
}
