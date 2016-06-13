package com.lesaas.slardar;

import javax.servlet.Filter;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;

import com.lesaas.slardar.base.config.SiteMeshConfig;

/**
 * slardar 启动类
 * @author ysc
 *
 */
@SpringBootApplication
@ComponentScan(basePackages={"com.lesaas.slardar","org.springside.modules.session","org.springside.modules.base.jersey"})
public class SlardarApplication extends SpringBootServletInitializer	{
	
	@Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(SlardarApplication.class);
        
    }
	
	@Bean
    public Filter sitemeshFilter() {
        return new SiteMeshConfig();
    }
	
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		//SpringApplication.run(PhoenixQuickStart.class, args);
		 SpringApplication app = new SpringApplication(SlardarApplication.class);
		 app.setBanner(new SlardarBanner());
		 app.run(args);
		System.out.println("Server at http://localhost:8091/slardar/demo");
		 
	}
}
