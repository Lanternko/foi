package com.ezcore.tools.demo.model.request;

import java.util.Map;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = true)
public class ApiDemo03Request extends ApiDemoBaseRequest {
	
	private Long id;
	
	private Map<String, String> updateModel;
}
