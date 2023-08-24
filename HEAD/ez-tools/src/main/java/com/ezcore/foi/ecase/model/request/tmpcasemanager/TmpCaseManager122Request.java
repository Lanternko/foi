package com.ezcore.foi.ecase.model.request.tmpcasemanager;

import java.util.List;

import com.ezcore.foi.ecase.model.bo.ShowCodeBo;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

@Data
@NoArgsConstructor
public class TmpCaseManager122Request {

    @ApiModelProperty(value = "長官批示結果", required = true)
    @NonNull
    private Long signStatusCid;

    @ApiModelProperty(value = "批示意見", required = false)
    private String signMemo;

    @ApiModelProperty(value = "欲確認聯繫紀錄", required = true)
    @NonNull
    private List<String> caseMediateContractTids;

    // 可以根據需要添加其他欄位
}
