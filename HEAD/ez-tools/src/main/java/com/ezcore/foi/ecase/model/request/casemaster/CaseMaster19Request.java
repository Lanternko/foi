package com.ezcore.foi.ecase.model.request.casemaster;

import com.ezcore.foi.ecase.model.response.casemaster.CaseMaster18Response;
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
public class CaseMaster19Request extends CaseMaster18Response {

	private static final long serialVersionUID = -5814633759277800528L;

}
