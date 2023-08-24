package com.ezcore.foi.ecase.model.response.casemaster;

import java.io.Serializable;
import java.util.List;

import com.ezcore.foi.ecase.model.bo.casedatabo.DisputeContent;
import com.ezcore.foi.ecase.model.bo.casedatabo.Memo;
import com.ezcore.foi.ecase.model.bo.casedatabo.ReferUser;
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
public class CaseMaster28Response implements Serializable {
	
	private static final long serialVersionUID = -3854971242185156856L;
	
    @NonNull
    @ApiModelProperty(value = "內部備註")
    private List<Memo> privateMemos;

    @ApiModelProperty(value = "公開備註")
    private List<Memo> publicMemos;

}
