package com.ezcore.foi.ecase.model.response.tmpcasemanager;

import com.ezcore.foi.ecase.model.bo.casedatabo.CenterOwner;
import com.ezcore.foi.ecase.model.bo.casedatabo.Examiner;
import com.ezcore.foi.ecase.model.bo.casedatabo.Suggestion;
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
public class TmpCaseManager124Response {
	
	@NonNull
    @ApiModelProperty(value = "預審建議", required = true)
    private Suggestion suggestionInfo;

	@NonNull
    @ApiModelProperty(value = "預審委員資訊", required = true)
    private Examiner examiner;

    @ApiModelProperty(value = "中心所有者", required = false)
    private CenterOwner centerOwner;
}