package com.demosever;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.MultipartConfigFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.util.unit.DataSize;

import javax.servlet.MultipartConfigElement;

/**
 * 启动服务器文件
 */
@MapperScan("com.demosever.database.mapper")
@SpringBootApplication
@Configuration
public class StarUpApplication {
    //配置上传文件大小
    @Bean
    public MultipartConfigElement multipartConfigElement(){
        MultipartConfigFactory factory = new MultipartConfigFactory();
        //文件最大
        //factory.setMaxFileSize("40960KB");
        //factory.setMaxRequestSize("409600KB");
        factory.setMaxFileSize(DataSize.ofMegabytes(100));
        factory.setMaxRequestSize(DataSize.ofMegabytes(1000));
        return factory.createMultipartConfig();
    }
    public static void main(String[] args) throws Exception{
        //启动服务器
        SpringApplication.run(com.demosever.StarUpApplication.class, args);
    }
}
