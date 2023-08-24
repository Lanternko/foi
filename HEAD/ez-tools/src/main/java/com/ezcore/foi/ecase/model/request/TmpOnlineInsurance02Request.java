package com.ezcore.foi.ecase.model.request;

import lombok.Data;
import lombok.NoArgsConstructor;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import io.swagger.annotations.ApiModelProperty;

@Data
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class TmpOnlineInsurance02Request {
    
	@ApiModelProperty(value = "線上案例ID")
    private String onlineCaseTid;

    @ApiModelProperty(value = "姓名")
    private String name;

    @ApiModelProperty(value = "證號")
    private String idNo;

    @ApiModelProperty(value = "性別")
    private String sex;

    @ApiModelProperty(value = "出生日期")
    private long birthDate;

    @ApiModelProperty(value = "手機號碼")
    private String phoneNo;

    @ApiModelProperty(value = "電子郵件")
    private String email;

    @ApiModelProperty(value = "電話號碼")
    private String tel;

    @ApiModelProperty(value = "電話分機")
    private String telExt;

    @ApiModelProperty(value = "郵遞區號")
    private String zipCode;

    @ApiModelProperty(value = "城市代碼")
    private int sysCity;

    @ApiModelProperty(value = "區域代碼")
    private int sysDistrict;

    @ApiModelProperty(value = "地址")
    private String addressCryp;

    @ApiModelProperty(value = "公司ID")
    private String companyTid;

    @ApiModelProperty(value = "糾紛種類")
    private int disputeKind;

    @ApiModelProperty(value = "案情內容")
    private String caseContent;

    @ApiModelProperty(value = "文件物件")
    private Object filesObj;
}
