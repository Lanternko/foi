package com.ezcore.foi.ecase.dao.dto;

import java.util.UUID;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class MemberSeqNoModifyDto {

	@ApiModelProperty(value = "委員識別值")
	private String id;
	
	@ApiModelProperty(value = "委員身分別")
	private Integer memberTypeCid;

	@ApiModelProperty(value = "插在第幾位")
	private Integer seqNo;

	
}
