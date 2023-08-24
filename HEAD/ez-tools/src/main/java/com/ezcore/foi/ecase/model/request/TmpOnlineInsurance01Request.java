package com.ezcore.foi.ecase.model.request;

import java.security.Timestamp;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@NoArgsConstructor
@SuperBuilder
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class TmpOnlineInsurance01Request {
    
	@ApiModelProperty(value = "線上案例ID")
    private String onlineCaseTid;

    @ApiModelProperty(value = "姓名")
    private String name;

    @ApiModelProperty(value = "證號")
    private String idNo;

    @ApiModelProperty(value = "性別")
    private String sex;

    @ApiModelProperty(value = "出生日期")
    private Timestamp birthDate;

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
    private Integer sysCity;

    @ApiModelProperty(value = "區域代碼")
    private Integer sysDistrict;

    @ApiModelProperty(value = "地址")// 需要加密
    private String addressCrypt;

    @ApiModelProperty(value = "被保險人姓名")
    private String insuredName;

    @ApiModelProperty(value = "被保險人證號")
    private String insuredIdNo;

    @ApiModelProperty(value = "要保人姓名")
    private String proposerName;

    @ApiModelProperty(value = "要保人證號")
    private String proposerIdNo;

    @ApiModelProperty(value = "公司ID")
    private String companyTid;

    @ApiModelProperty(value = "糾紛種類")
    private Integer disputeKind;

    @ApiModelProperty(value = "案情內容")
    private String caseContent;

    @ApiModelProperty(value = "申請文件物件")
    private MultipartFile applicationFileObj;

    @ApiModelProperty(value = "身分證文件物件")
    private MultipartFile idCardFileObj;

    @ApiModelProperty(value = "其他文件物件")
    private MultipartFile[] otherFilesObj;
}
