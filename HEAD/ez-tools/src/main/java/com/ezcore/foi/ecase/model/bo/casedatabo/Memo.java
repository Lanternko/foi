package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;
import java.security.Timestamp;

import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;

import com.ezcore.foi.ecase.dao.entity.CaseMemo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class Memo implements Serializable {

    private static final long serialVersionUID = 7055779593788640602L;

    @ApiModelProperty(value = "資料識別值")
    @NonNull
    private String caseMemoTid;

    @ApiModelProperty(value = "父層識別值")
    @NonNull
    private String caseMasterTid;

    @ApiModelProperty(value = "顯示次序")
    @NonNull
    private Integer seqNo;

    @ApiModelProperty(value = "紀錄內容")
    @NonNull
    private String memoText;

    @ApiModelProperty(value = "建立者(留言者…)")
    @NonNull
    @CreatedBy
    private String createBy;

    @ApiModelProperty(value = "建立時間(留言時間…)")
    @NonNull
    @CreatedDate
    private Timestamp createTime;

    /*
     * 將caseMemo轉換成memo BO
     */
    public Memo(CaseMemo caseMemo) {
        this.caseMemoTid = caseMemo.getId();
        this.caseMasterTid = caseMemo.getCaseMasterTid();
        this.seqNo = caseMemo.getSeqNo();
        this.memoText = caseMemo.getMemoText();
        // 其他屬性初始化（如果需要）
    }
}
