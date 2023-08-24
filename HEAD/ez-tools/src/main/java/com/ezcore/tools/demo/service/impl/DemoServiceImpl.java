package com.ezcore.tools.demo.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Profile;
import org.springframework.stereotype.Service;

import com.ezcore.tools.demo.dao.DemoRepository;
import com.ezcore.tools.demo.dao.entity.Demo;
import com.ezcore.tools.demo.model.request.ApiDemo02Request;
import com.ezcore.tools.demo.model.request.ApiDemo03Request;
import com.ezcore.tools.demo.model.request.ApiDemo04Request;
import com.ezcore.tools.demo.service.DemoService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import me.zhengjie.exception.BadRequestException;

@Slf4j
//@Service												// 標記此class為service實作，若同介面下有複數實作時需標註識別名稱(@Service("名稱"))
@RequiredArgsConstructor
//@CacheConfig(cacheNames = "__demo")					// 標記此class可用快取功能
public class DemoServiceImpl implements DemoService {

	@Autowired
	private DemoRepository demoRepository;

	@Override
	public List<Demo> selectAll() {
		log.info("service selectAll");
		return demoRepository.findAll();
	}
	
	@Override
	public Demo selectById(String str) {
		log.info(String.format("service selectById=%s", str));
		Long id = isLong(str);
		Optional<Demo> obj = demoRepository.findById(id);
		return obj.isPresent() ? obj.get() : null;
	}
	
	@Override
	public void insertDemo(ApiDemo02Request req) {
		log.info("service insertDemo");
		Demo vo = new Demo();
		vo.setDemoMsga(req.getTitle());
		vo.setDemoMsgb(req.getRelease());
		vo.setDemoMsgc(req.getDescription());
		vo.setCreateBy(req.getCurrentUserName());
		demoRepository.save(vo);
	}

	@Override
	public void updateDemo(ApiDemo03Request req) {
		log.info("service updateDemo");
		Demo demo = demoRepository.getById(req.getId());
 		demo.setDemoMsga(req.getUpdateModel().get("title"));
		demo.setDemoMsgb(req.getUpdateModel().get("release"));
		demo.setDemoMsgc(req.getUpdateModel().get("description"));
		demoRepository.save(demo);
		
//		以下僅示範同等上面動作的原生sql語句作法，但不推薦這樣做
//		尤其是select語句(將回傳型別為Object的物件，很難處理)
//		demoRepository.updateByNativeQuery(req.getNewMsgA(), req.getNewMsgB(), req.getNewMsgC(), req.getId());
	}

	@Override
	public void deleteDemo(ApiDemo04Request req) {
		log.info("service deleteDemo");
		Long id = isLong(req.getId());
		Optional<Demo> obj = demoRepository.findById(id);
		if (!obj.isPresent()) {
			// 物件不存在則不刪, 丟出異常訊息讓前端接
			throw new BadRequestException(String.format("id: %s 對應的物件不存在, 無法刪除 (後端丟例外範例，例外不見得是錯誤，任何想用來中斷api的地方都可以丟)", req.getId()));
		}
		demoRepository.delete(obj.get());
	}

	private Long isLong(String str) {
		Long num = null;
		try {
			num = Long.valueOf(str);
		} catch (NumberFormatException e) {
			throw new BadRequestException(String.format("輸入「%s」非數字，請重新輸入 (後端丟例外範例，這類例外也可以在前端先擋下)", str));
		}
		return num;
	}

}
