package com.ezcore.foi.ecase.model.response;

import java.util.List;

import com.ezcore.foi.ecase.model.bo.casedatabo.Band;
import com.ezcore.foi.ecase.model.bo.casedatabo.Info;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
public class CaseManager91Response {

    @ApiModelProperty(value = "案件控制時重要資訊", required = true)
    @NonNull
    private Info info;

    @ApiModelProperty(value = "案件區塊及欄位設定", required = true)
    @NonNull
    private List<Band> bands;

    // Other fields and methods

}
