package com.ezcore.foi.ecase.model.bo;

import java.io.Serializable;
import java.sql.Timestamp;
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
public class Eflow1000BoHistory implements Serializable {

	private static final long serialVersionUID = 4086559189061298474L;

	@ApiModelProperty(value = "移交編號")
    private String processNo;

    @ApiModelProperty(value = "移出群組")
    private String currentWorkGroup;

    @ApiModelProperty(value = "受理群組")
    private String nextWorkGroup;

    @ApiModelProperty(value = "筆數")
    private Integer rows;

    @ApiModelProperty(value = "移交時間")
    private Timestamp createTime;

    @ApiModelProperty(value = "明細資料")
    private List<Eflow1000BoData> datas;
}