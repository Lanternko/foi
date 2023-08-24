package com.ezcore.foi.ecase.model.bo.ws;

import java.io.Serializable;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class DocFileInfo implements Serializable {

	private static final long serialVersionUID = -7470285774062810543L;
	
	@NonNull
	@ApiModelProperty(value = "檔案編號(提供WSDOC03下載用)")
	private String fileId;
	
	@NonNull
	@ApiModelProperty(value = "顯示的檔案名稱")
	private String showName;
	
	@NonNull
	@ApiModelProperty(value = "來文函, 來文附件, 發文函, 發文附件")
	private String type;

}
