package com.ezcore.tools.demo.model.request;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ApiDemoBaseRequest {

	private String createBy;
	private String updateBy;
	private Timestamp createTime;
	private Timestamp updateTime;
}
