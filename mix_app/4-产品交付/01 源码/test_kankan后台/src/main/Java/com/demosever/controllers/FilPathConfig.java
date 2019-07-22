package com.demosever.controllers;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * @cuthor luoxiaojiang
 * @createTime 2019年07月04日16:06:13
 * @Verson 1.0.0
 */
@Configuration
public class FilPathConfig implements WebMvcConfigurer {
    @Value("${file.path}")
    private String path;

    @Value("${file.address}")
    private String address;

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry){
        registry.addResourceHandler(path).addResourceLocations("file:"+address);
    }
}
