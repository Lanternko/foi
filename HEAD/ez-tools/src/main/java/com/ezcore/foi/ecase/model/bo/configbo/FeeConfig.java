package com.ezcore.foi.ecase.model.bo.configbo;

import java.util.Arrays;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@JsonIgnoreProperties(ignoreUnknown = true)
public class FeeConfig {

	@NonNull
    @ApiModelProperty(value = "費用代碼", required = true)
    private String code;

    @NonNull
    @ApiModelProperty(value = "費用名稱", required = true)
    private String name;

    @NonNull
    @ApiModelProperty(value = "排序(userdefine一律為3)", required = true)
    private String sortCode;

    @NonNull
    @ApiModelProperty(value = "金額", required = true)
    private Integer fee;

    @ApiModelProperty(value = "類型: system-只可修改金額, userdefine-可修改金額與案件標籤", required = true)
    private String type;

    @ApiModelProperty(value = "案件標籤(cids), Type為Userdefine時才有,形式為List<Integer>", required = false)
    private List<Integer> tags;

    public FeeConfig(int value) {
        if (value == 1) {
            this.code = "meet";
            this.name = "出席費";
            this.sortCode = "1";
            this.fee = 2500;
            this.type = "system";
            this.tags = null;
        } else {
            this.code = "學生";
            this.name = "學生";
            this.sortCode = "3";
            this.fee = 2500;
            this.type = "system";
            this.tags = Arrays.asList(123, 1250);
        }
    }
}
