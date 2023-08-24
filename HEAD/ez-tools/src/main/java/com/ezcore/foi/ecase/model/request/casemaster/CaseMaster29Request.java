package com.ezcore.foi.ecase.model.request.casemaster;

import com.ezcore.foi.ecase.model.response.casemaster.CaseMaster28Response;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
@EqualsAndHashCode(callSuper = false)
public class CaseMaster29Request extends CaseMaster28Response {

	private static final long serialVersionUID = 3990135179312645777L;
}
