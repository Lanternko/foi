package com.ezcore.foi.ecase.model.bo.memberbo;

import io.swagger.annotations.ApiModelProperty;
import lombok.NonNull;

public class MemberTreeSelectedDetail {
	@NonNull
	@ApiModelProperty(value = "階層")
	private Integer level;
	  
	@NonNull
	@ApiModelProperty(value = "代碼識別值")
	private Long nodeCid;
	  
	@NonNull
	@ApiModelProperty(value = "代碼名稱")
	private String nodeName;
}
