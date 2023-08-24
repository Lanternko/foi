package com.ezcore.foi.ecase.model.bo.casequeryresult;

import com.ezcore.foi.ecase.model.bo.ShowCodeBo;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

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
@JsonIgnoreProperties(ignoreUnknown = true)
public class Applicant {

    @ApiModelProperty(value = "案件申請人識別值", required = true)
    @NonNull
    private String caseUserTid;

    @ApiModelProperty(value = "案件識別值", required = true)
    @NonNull
    private String caseMasterTid;

    @ApiModelProperty(value = "人員姓名")
    private String name;

    @ApiModelProperty(value = "證號類型")
    private ShowCodeBo idnoType;

    @ApiModelProperty(value = "證號值")
    private String idno;

    @ApiModelProperty(value = "性別(M/F)")
    private String sex;

    @ApiModelProperty(value = "出生日期")
    private long birthDate;

    @ApiModelProperty(value = "電話1")
    private String phone1No;

    @ApiModelProperty(value = "電話1-分機")
    private String phone1Ext;

    @ApiModelProperty(value = "電話2")
    private String phone2No;

    @ApiModelProperty(value = "電話2-分機")
    private String phone2Ext;

    @ApiModelProperty(value = "電子信箱")
    private String email;

    @ApiModelProperty(value = "郵遞區號")
    private String zipCode;

    @ApiModelProperty(value = "縣市")
    private ShowCodeBo sysCity;

    @ApiModelProperty(value = "區處")
    private ShowCodeBo sysDistrict;

    @ApiModelProperty(value = "地址")
    private String address;

    @ApiModelProperty(value = "設定代表日期(排序用)")
    private long assignTime;

    // Other fields and methods

}
