/*
 *  Copyright 2019-2020 Zheng Jie
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */
package me.zhengjie;

//import org.mybatis.spring.annotation.MapperScan;
//import org.springframework.boot.SpringApplication;
//import org.springframework.boot.autoconfigure.SpringBootApplication;
//import org.springframework.boot.autoconfigure.domain.EntityScan;
//import org.springframework.boot.builder.SpringApplicationBuilder;
//import org.springframework.boot.context.ApplicationPidFileWriter;
//import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.ComponentScan;
//import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
//import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
//import org.springframework.scheduling.annotation.EnableAsync;
//import org.springframework.transaction.annotation.EnableTransactionManagement;
//import org.springframework.web.bind.annotation.RestController;
//
//import io.swagger.annotations.Api;
//import io.swagger.annotations.ApiOperation;

///**
// * 開啟審計功能 -> @EnableJpaAuditing
// *
// * @author Zheng Jie
// * @date 2018/11/15 9:20:19
// */
//@EnableAsync
//@RestController
//@Api(tags = "*程式進入點", hidden = true)
////@SpringBootApplication
//@ComponentScan({
//	"me.zhengjie.*", 
//	"com.ezcore.common.*",
//	"com.ezcore.tools.*",
//	"com.ezcore.foi.*"
//	})
//@EntityScan({
//	"me.zhengjie.*",
//	"com.ezcore.tools.*",
//	"com.ezcore.foi.*"
//	})
//@EnableJpaRepositories({		// spring jpa的repository位置
//	"me.zhengjie.*",
//	"com.ezcore.tools.demo.*",
//	"com.ezcore.foi.*"
//	})
//@MapperScan({					// mybatis的mapper位置
//    "com.ezcore.tools.codedetail.*",
//    "com.ezcore.tools.gui.*",
//    "com.ezcore.tools.htmlDoc.*",
//    "com.ezcore.tools.htmlHelper.*",
//    "com.ezcore.tools.htmlPost.*",
//	})
//@EnableTransactionManagement
//@EnableJpaAuditing(auditorAwareRef = "auditorAware")
//public class AppRun extends SpringBootServletInitializer {

//    public static void main(String[] args) {
//        SpringApplication springApplication = new SpringApplication(AppRun.class);
//        // 監控應用的PID，啟動時可指定PID路徑：--spring.pid.file=/home/eladmin/app.pid
//        // 或者在 application.yml 新增檔案路徑，方便 kill，kill `cat /home/eladmin/app.pid`        
//        springApplication.addListeners(new ApplicationPidFileWriter());
//        springApplication.run(args);
//    }

//    @Bean
//    public SpringContextHolder springContextHolder() {
//        return new SpringContextHolder();
//    }

//    @Bean
//    public ServletWebServerFactory webServerFactory() {
//        TomcatServletWebServerFactory fa = new TomcatServletWebServerFactory();
//        fa.addConnectorCustomizers(connector -> connector.setProperty("relaxedQueryChars", "[]{}"));
//        return fa;
//    }
    
//    @Override
//    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
//		return builder.sources(AppRun.class);
//	}

    /**
     * 訪問首頁提示
     *
     * @return /
     */
//    @ApiOperation("後端啟動測試")
//    @AnonymousGetMapping("/")
//    public String index() {
//        return "Backend service started successfully";
//    }
//}
