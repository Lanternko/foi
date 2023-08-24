package com.ezcore.foi.ecase.model.bo;

import java.io.File;
import java.io.Serializable;

import org.springframework.web.multipart.MultipartFile;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CompanyIndustryContractFile implements Serializable {

	private static final long serialVersionUID = 6666922504735194713L;

	@ApiModelProperty(value = "產業別完整名稱")
	private Integer fileKind;
	
	@ApiModelProperty(value = "產業別完整名稱")
	private MultipartFile fileObj;
	
	@ApiModelProperty(value = "產業別完整名稱")
	private Integer dataPage;
	
	
}
