package com.ezcore.tools.demo.model.request;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = true)
public class ApiDemo04Request extends ApiDemoBaseRequest {
	
	private String id;
}
