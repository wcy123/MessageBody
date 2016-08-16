package com.easemob.messagebody.config;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by wangchunye on 8/15/16.
 */

@Configuration
@EnableAutoConfiguration
@ImportResource({"classpath*:app-context.xml"})
public class WebConfig {
    @Bean
    Boolean getRunIt() {
        return true;
    }
}
