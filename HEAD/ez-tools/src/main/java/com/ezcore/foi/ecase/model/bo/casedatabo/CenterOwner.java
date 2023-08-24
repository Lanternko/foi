package com.ezcore.foi.ecase.model.bo.casedatabo;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class CenterOwner {

    @NonNull
    @ApiModelProperty(value = "使用者內碼")
    private Integer userId;

    @NonNull
    @ApiModelProperty(value = "帳號")
    private String account;

    @NonNull
    @ApiModelProperty(value = "姓名")
    private String username;

    @ApiModelProperty(value = "股別")
    private String nickName;

    @ApiModelProperty(value = "聯絡信箱")
    private String email;

    @ApiModelProperty(value = "聯絡電話")
    private String phone;
    
    public CenterOwner() {
        this.userId = 999; 
        this.account = "admin";
        this.username = "林OO";
        this.nickName = "恭股";
        this.email = "123@mail.com";
        this.phone = "0911111111";
    }

}
