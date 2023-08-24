package com.ezcore.tools.demo.model.request;

import com.ezcore.common.model.BaseRequest;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = true)
public class ApiDemo02Request extends BaseRequest {
	
	private String title;
	
	private String release;
	
	private String description;
	
}
