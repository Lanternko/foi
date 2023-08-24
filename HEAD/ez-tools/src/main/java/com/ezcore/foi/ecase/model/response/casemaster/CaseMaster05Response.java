package com.ezcore.foi.ecase.model.response.casemaster;

import java.io.Serializable;

import com.ezcore.foi.ecase.model.request.casemaster.CaseManager05Request;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@EqualsAndHashCode(callSuper = true)
@JsonIgnoreProperties(ignoreUnknown = true)
public class CaseMaster05Response extends CaseManager05Request implements Serializable {

	private static final long serialVersionUID = -7543715567724771435L;

}
