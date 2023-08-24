package com.ezcore.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.ezcore.foi.ecase.service.CaseManagerService;
import com.ezcore.foi.ecase.service.impl.CaseManagerServiceImpl;
import com.ezcore.tools.demo.service.DemoService;
import com.ezcore.tools.demo.service.impl.DemoServiceImpl;
import com.ezcore.tools.demo.service.impl.DemoServiceMock;

/**
 * 定義service否使用mock版本實作
 */
@Configuration
public class MockConfiguration {

	@Value("${service.use-mock-impl}")
	private boolean useMockImpl;
	
	@Bean
	public DemoService createDemoService() {
		return useMockImpl ? new DemoServiceMock() : new DemoServiceImpl();
	}
	
//	@Bean
//	public CaseManagerService createCaseManagerService() {
//		return useMockImpl ? new CaseManagerServiceMock() : new CaseManagerServiceImpl();
//	}
//

}
