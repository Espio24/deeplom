package com.example.deeplom.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MvcConfig implements WebMvcConfigurer {
    @Value("${upload.path}")
    private String uploadPath;

    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/login").setViewName("login");
    }

   @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry){
        registry.addResourceHandler("/roomimg/**")
                .addResourceLocations("file://" + uploadPath +"/" + "roomimg" + "/");
        registry.addResourceHandler("/gamesimg/**")
                .addResourceLocations("file://" + uploadPath +"/" + "gamesimg" + "/");
       registry.addResourceHandler("/profileimg/**")
               .addResourceLocations("file://" + uploadPath +"/" + "profileimg" + "/");
        registry.addResourceHandler("/static/**")
                .addResourceLocations("classpath:/static/");
       registry.addResourceHandler("/staticimg/**")
               .addResourceLocations("file://" + uploadPath +"/" + "staticimg" + "/");
    }
}