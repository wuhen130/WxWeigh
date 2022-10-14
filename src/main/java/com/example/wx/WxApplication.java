package com.example.wx;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

@MapperScan("com.example.wx.mapper")
@SpringBootApplication
public class WxApplication {

    public static void main(String[] args) {
        SpringApplication.run(WxApplication.class, args);

    }

}
