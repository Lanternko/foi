package com.ezcore.foi.ecase.model.request.tmpcasemanager;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import java.sql.Timestamp;
import java.util.List;

import com.ezcore.foi.ecase.model.bo.casedatabo.QueryColumn;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Data
@NoArgsConstructor
@AllArgsConstructor
@SuperBuilder
@JsonIgnoreProperties(ignoreUnknown = true)
public class TmpCaseManager107Request {
    
    @ApiModelProperty(value = "日期（起）", required = false)
    private Timestamp beginDate;

    @ApiModelProperty(value = "日期（迄）", required = false)
    private Timestamp endDate;

    @ApiModelProperty(value = "股別", required = false)
    private String nickName;

    @ApiModelProperty(value = "申請人", required = false)
    private String applicantName;

    @ApiModelProperty(value = "相對人", required = false)
    private String companyName;

    @ApiModelProperty(value = "審查狀態", required = false)
    private Integer examStatus;

    @ApiModelProperty(value = "公文字號-年", required = false)
    private String docYear;

    @ApiModelProperty(value = "公文字號-字", required = false)
    private String docWord;

    @ApiModelProperty(value = "公文字號-號", required = false)
    private String docNo;

    // 生成者和訪問器
    // ...
}
