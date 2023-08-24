package com.ezcore.foi.ecase.model.response.comm;

import java.io.Serializable;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

@Data
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
public class Comm04Response implements Serializable {

	private static final long serialVersionUID = 3532079521257765498L;
	
	private Long userId;
	
	private String account;
	
	private String username;
	
	private String nickname;

}
