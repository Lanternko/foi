package com.ezcore.foi.ecase.model.bo;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class TreeBo implements Serializable {

	private static final long serialVersionUID = -9199406054181891785L;

	@ApiModelProperty(value = "節點識別值")
    private Long cid;

    @ApiModelProperty(value = "父節點識別值")
    private Long parentId;

    @ApiModelProperty(value = "名稱")
    private String name;

    @ApiModelProperty(value = "代碼")
    private String code;

    @ApiModelProperty(value = "階層#")
    private Integer level;

    @ApiModelProperty(value = "路徑碼")
    private String nodePath;
}