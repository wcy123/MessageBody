package com.easemob.messagebody.main;
import com.easemob.messagebody.config.WebConfig;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.*;
import org.springframework.boot.autoconfigure.*;
import org.springframework.web.bind.annotation.*;

@RestController
@EnableAutoConfiguration
public class WebMain {

    @RequestMapping("/")
    String home() {
        return "Hello World!";
    }
    public static void main(String args[]) {
        SpringApplication app = new SpringApplication(WebConfig.class);
        app.run(args);
    }

}