package com.ezcore.foi.ecase.model.bo.casedatabo;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@JsonIgnoreProperties(ignoreUnknown = true)
public class QueryColumn implements Serializable {
	
	private static final long serialVersionUID = 5571594856126374556L;
	
	@ApiModelProperty(value = "收件方式")
    private Long caseTypeCid;

    @ApiModelProperty(value = "進件方式")
    private List<Long> inMethodCid;
    
    public QueryColumn() {
    	this.caseTypeCid = 123L;
    	this.inMethodCid = Arrays.asList(123L);
    }
}
