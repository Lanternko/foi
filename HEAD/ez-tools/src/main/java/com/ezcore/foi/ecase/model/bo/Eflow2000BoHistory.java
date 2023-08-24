package com.ezcore.foi.ecase.model.bo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class Eflow2000BoHistory implements Serializable {

	private static final long serialVersionUID = 7055779593788640602L;

	@ApiModelProperty(value = "processNo")
    private String processNo;

    @ApiModelProperty(value = "currentWorkGroup")
    private String currentWorkGroup;

    @ApiModelProperty(value = "nextWorkGroup")
    private String nextWorkGroup;

    @ApiModelProperty(value = "rows")
    private Integer rows;

    @ApiModelProperty(value = "createTime")
    private Timestamp createTime;

    @ApiModelProperty(value = "datas")
    private List<Eflow2000BoHistoryData> datas;

}
