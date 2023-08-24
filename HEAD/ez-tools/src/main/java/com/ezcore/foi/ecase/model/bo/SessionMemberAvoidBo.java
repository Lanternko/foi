package com.ezcore.foi.ecase.model.bo;

import java.io.Serializable;
import java.util.List;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SessionMemberAvoidBo implements Serializable {

	@ApiModelProperty(value = "回避公司識別值")
	private String compnayTid;
	
	@ApiModelProperty(value = "回避公司名稱")
	private String companyName;

}
