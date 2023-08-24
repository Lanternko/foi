package com.ezcore.foi.ecase.model.response.casemaster;

import java.io.Serializable;
import java.util.List;

import com.ezcore.foi.ecase.model.bo.casedatabo.Examiner;
import com.ezcore.foi.ecase.model.bo.casedatabo.Suggestion;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class CaseMaster18Response implements Serializable {

	private static final long serialVersionUID = -7543715567724771435L;

    @NonNull
    @ApiModelProperty(value = "預審建議")
    private Suggestion suggestionInfo;

    @ApiModelProperty(value = "預審委員資訊")
    private List<Examiner> examiners;
	
}
