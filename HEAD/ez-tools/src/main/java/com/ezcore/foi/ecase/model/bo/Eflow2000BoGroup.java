package com.ezcore.foi.ecase.model.bo;

import java.io.Serializable;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class Eflow2000BoGroup implements Serializable {

	private static final long serialVersionUID = 7055779593788640602L;

	@ApiModelProperty(value = "受理金融服務業回覆申訴處理日期")
    private String flow10022Date;

    @ApiModelProperty(value = "案件承辦人中文")
    private String ownerName;

    @ApiModelProperty(value = "案件承辦人帳號")
    private String ownerAccount;

    @ApiModelProperty(value = "總筆數")
    private Integer totalRows;

    @ApiModelProperty(value = "待辦筆數")
    private Integer workRows;

    @ApiModelProperty(value = "明細資料")
    private List<Eflow2000BoData> datas;
}
