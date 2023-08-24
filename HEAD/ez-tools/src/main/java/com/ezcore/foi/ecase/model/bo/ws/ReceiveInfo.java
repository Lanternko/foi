package com.ezcore.foi.ecase.model.bo.ws;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

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
public class ReceiveInfo implements Serializable {
	
	private static final long serialVersionUID = 6185703339446550007L;
	
	@NonNull
	@ApiModelProperty(value = "案號")
	private String caseNo;
	
	@NonNull
	@ApiModelProperty(value = "收文文號")
	private String docNo;
	
	@NonNull
	@ApiModelProperty(value = "主旨")
	private String subject;
	
	@NonNull
	@ApiModelProperty(value = "收文日期")
	private Timestamp receiveDate;
	
	@NonNull
	@ApiModelProperty(value = "來文者")
	private String receiveName;
	
	@ApiModelProperty(value = "發文文號")
	private String issueNo;
	
	@ApiModelProperty(value = "發文日期")
	private Timestamp issueDate;
	
	@ApiModelProperty(value = "受文者")
	private String issueName;
	
	@ApiModelProperty(value = "決行日期")
	private Timestamp signDate;
	
	@NonNull
	@ApiModelProperty(value = "檔案清單")
	private List<DocFileInfo> files;

}
