package com.ezcore.foi.ecase.model.bo;

import java.io.Serializable;
import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CompanyConcatBo implements Serializable {

	private static final long serialVersionUID = -5886345257319417192L;

	@ApiModelProperty(value = "公司聯絡人識別值")
	private String companyConcatsTid;

	@ApiModelProperty(value = "顯示次序")
	private Integer seqNo;

	@ApiModelProperty(value = "公司聯絡人姓名")
	private String name;

	@ApiModelProperty(value = "電話號")
	private String telNo;

	@ApiModelProperty(value = "電話號之分機")
	private String telExt;

	@ApiModelProperty(value = "電子郵件")
	private String email;

	@ApiModelProperty(value = "傳真號")
	private String faxNo;

	@ApiModelProperty(value = "傳真號之分機")
	private String faxExt;
	
}
