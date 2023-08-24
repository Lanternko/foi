package com.ezcore.foi.ecase.model.bo.casefilebo;

import java.sql.Timestamp;

import org.springframework.beans.factory.annotation.Autowired;

import com.alibaba.fastjson.annotation.JSONField;
import com.ezcore.foi.ecase.dao.entity.CaseFile;
import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
import com.ezcore.tools.common.CodeDetailMap;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;
import me.zhengjie.domain.LocalStorage;
import me.zhengjie.repository.LocalStorageRepository;
import io.swagger.annotations.ApiModelProperty;

@Data
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
public class CaseFileBoData {

    @ApiModelProperty(value = "案件檔案識別值", required = true)
    @NonNull
    private String caseFileTid;

    @ApiModelProperty(value = "案號", required = true)
    @NonNull
    private String caseNo;

    @ApiModelProperty(value = "檔案類型", required = true)
    @NonNull
    private ShowCodeBo caseFileType;

    @ApiModelProperty(value = "項次", required = true)
    @NonNull
    private Integer seqNo;

    @ApiModelProperty(value = "檔案名稱", required = true)
    @NonNull
    private String name;

    @ApiModelProperty(value = "檔案大小(K)", required = true)
    @NonNull
    private String size;

    @ApiModelProperty(value = "檔案類型", required = true)
    @NonNull
    private String type;

    @ApiModelProperty(value = "雜湊值", required = true)
    @NonNull
    private String sha2;

    @ApiModelProperty(value = "異動者(新增者)", required = true)
    @NonNull
    private String lastBy;

    @ApiModelProperty(value = "異動時間(新增時間)", required = true)
    @NonNull
    private Timestamp lastTime;
    
    @NonNull
    @ApiModelProperty(value = "系統保存檔識別值")
    private String toolLocalStorageId; //UUID

    
    /* this method transfer casefile to BO */
//    @Autowired
//    @JSONField(serialize = false)
//    private CodeDetailMap codeDetailMap;
    @Autowired
    @JSONField(serialize = false)
    private LocalStorageRepository localStorageRepository;
    
    public CaseFileBoData(CaseFile caseFile) {
    	LocalStorage localFile = localStorageRepository.findByStorageUuid(caseFile.getToolLocalStorageId());
    	this.caseFileTid = caseFile.getId();
    	this.caseNo = caseFile.getCaseNo();
    	this.caseFileType = new ShowCodeBo(CodeDetailMap.get(caseFile.getCaseFileTypeCid()));
    	this.seqNo = caseFile.getSeqNo();
    	this.name = localFile.getName();
    	this.size = localFile.getSize();
    	this.type = localFile.getType();
    	this.sha2 = localFile.getSha2();
    	this.lastBy = caseFile.getUploadBy();
    	this.lastTime = caseFile.getUploadTime();
    	this.toolLocalStorageId = localFile.getStorageUuid();
    }

}