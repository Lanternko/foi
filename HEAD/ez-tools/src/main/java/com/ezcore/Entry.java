package com.ezcore;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.ApplicationPidFileWriter;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.bind.annotation.RestController;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import me.zhengjie.annotation.rest.AnonymousGetMapping;
import me.zhengjie.utils.SpringContextHolder;

@EnableAsync
@RestController
@Api(tags = "*系統 : 程式進入點", hidden = true)
@SpringBootApplication
@ComponentScan({
	"me.zhengjie.*", 
	"com.ezcore.*"
	})
@EntityScan({
	"me.zhengjie.*",
	"com.ezcore.tools.*",
	"com.ezcore.foi.*"
	})
@EnableJpaRepositories({		// spring jpa的repository位置
	"me.zhengjie.*",
	"com.ezcore.tools.demo.*",
	"com.ezcore.foi.*",
	"com.ezcore.tools.spreadsheetgen.repository"  // 必須宣告spreadsheet產生器的位置
	})
@MapperScan({					// mybatis的mapper位置
    "com.ezcore.tools.codedetail.*",
    "com.ezcore.tools.gui.*",
    "com.ezcore.tools.htmlDoc.*",
    "com.ezcore.tools.htmlHelper.*",
    "com.ezcore.tools.htmlPost.*",
	})
@EnableTransactionManagement
@EnableJpaAuditing(auditorAwareRef = "auditorAware")
public class Entry extends SpringBootServletInitializer {

	public static void main(String[] args) {
        SpringApplication springApplication = new SpringApplication(Entry.class);
        // 監控應用的PID，啟動時可指定PID路徑：--spring.pid.file=/home/eladmin/app.pid
        // 或者在 application.yml 新增檔案路徑，方便 kill，kill `cat /home/eladmin/app.pid`        
        springApplication.addListeners(new ApplicationPidFileWriter());
        springApplication.run(args);
    }
	
    @Bean
    public SpringContextHolder springContextHolder() {
        return new SpringContextHolder();
    }

//    @Bean
//    public ServletWebServerFactory webServerFactory() {
//        TomcatServletWebServerFactory fa = new TomcatServletWebServerFactory();
//        fa.addConnectorCustomizers(connector -> connector.setProperty("relaxedQueryChars", "[]{}"));
//        return fa;
//    }
    
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		return builder.sources(Entry.class);
	}

    /**
     * 後端啟動測試
     */
    @ApiOperation("後端啟動測試")
    @AnonymousGetMapping("/")
    public String index() {
        return "Backend service started successfully";
    }
	
}
