package com.ezcore.tools.demo.service.impl;

import java.util.Arrays;
import java.util.List;

import com.ezcore.tools.demo.dao.entity.Demo;
import com.ezcore.tools.demo.model.request.ApiDemo02Request;
import com.ezcore.tools.demo.model.request.ApiDemo03Request;
import com.ezcore.tools.demo.model.request.ApiDemo04Request;
import com.ezcore.tools.demo.service.DemoService;

import lombok.RequiredArgsConstructor;
import me.zhengjie.utils.DateUtil;

@RequiredArgsConstructor
public class DemoServiceMock implements DemoService {

	@Override
	public List<Demo> selectAll() {
		Demo[] arr = new Demo[2];
		
		Demo demo1 = new Demo();
		demo1.setId(1L);
		demo1.setDemoMsga("Terminator");
		demo1.setDemoMsgb("1984");
		demo1.setDemoMsgc("very famous");
		demo1.setCreateBy("mock");
		demo1.setCreateTime(DateUtil.getSystemTime());
		arr[0] = demo1;
		
		Demo demo2 = new Demo();
		demo2.setId(2L);
		demo2.setDemoMsga("Terminator 2");
		demo2.setDemoMsgb("1991");
		demo2.setDemoMsgc("still very famous");
		demo2.setCreateBy("mock");
		demo2.setCreateTime(DateUtil.getSystemTime());
		arr[1] = demo2;
		
		return Arrays.asList(arr);
	}

	@Override
	public Demo selectById(String id) {
		Demo demo = new Demo();
		demo.setId(Long.valueOf(id));
		demo.setDemoMsga("Terminator " + id);
		demo.setDemoMsgb("2345");
		demo.setDemoMsgc("still famous?");
		demo.setCreateBy("mock");
		demo.setCreateTime(DateUtil.getSystemTime());
		
		return demo;
	}

	@Override
	public void insertDemo(ApiDemo02Request req) {
//		mock
	}

	@Override
	public void updateDemo(ApiDemo03Request req) {
//		mock
	}

	@Override
	public void deleteDemo(ApiDemo04Request req) {
//		mock
	}

}
