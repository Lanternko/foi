package com.ezcore.tools.demo.service;

import java.util.List;
import com.ezcore.tools.demo.dao.entity.Demo;
import com.ezcore.tools.demo.model.request.ApiDemo02Request;
import com.ezcore.tools.demo.model.request.ApiDemo03Request;
import com.ezcore.tools.demo.model.request.ApiDemo04Request;

public interface DemoService {
	
	List<Demo> selectAll();
	
	Demo selectById(String id);
	
	void insertDemo(ApiDemo02Request req);
	
	void updateDemo(ApiDemo03Request req);
	
	void deleteDemo(ApiDemo04Request req);
}