package com.ezcore.foi.ecase.dao.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import io.swagger.annotations.ApiModelProperty;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "CASE_SUGGESTION_BOOK")
public class CaseSuggestionBook implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @Column(columnDefinition ="uniqueidentifier")
    @ApiModelProperty(value = "識別值")
    private String id;

    @Column(columnDefinition ="uniqueidentifier")
    @ApiModelProperty(value = "預審資料識別值")
    private String caseSuggestionTid;

    @ApiModelProperty(value = "顯示次序")
    private int seqNo;

    @ApiModelProperty(value = "判斷書-描述")
    private String suggestionBookDesc;

    
}
