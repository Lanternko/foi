package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;

import com.ezcore.foi.ecase.model.bo.casefilebo.CaseFileBoData;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonInclude;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;



@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)	//不能略過
@JsonInclude(JsonInclude.Include.ALWAYS)
//@JsonInclude(JsonInclude.Include.NON_NULL)   
public class Consultant implements Serializable {

    private static final long serialVersionUID = 7055779593788640602L;
    @ApiModelProperty(value = "案件識別值")
    private String caseMasterTid; 
    
    @ApiModelProperty(value = "資料識別值")
    private String caseConsultantTid;
    
    @ApiModelProperty(value = "顯示次序")
    private Integer seqNo;
    
    @ApiModelProperty(value = "顧問資料識別值")
    private String caseMemberTid;
    
    @ApiModelProperty(value = "顧問姓名")
    private String name;
    
    @ApiModelProperty(value = "發文文號") 	// 新增的欄位
    private String issueNo;
    
    @ApiModelProperty(value = "發文日")
    private Timestamp issueDate;
    
    @JsonInclude(JsonInclude.Include.ALWAYS)
    @ApiModelProperty(value = "收文文號")
    private String receiveNo;

    @JsonInclude(JsonInclude.Include.ALWAYS)
    @ApiModelProperty(value = "收文日期")
    private Timestamp receiveDate;

    
    @ApiModelProperty(value = "顧問附加檔案")//(kind:consultant
    private transient List<CaseFileBoData> files;

    // Other fields and methods

}
