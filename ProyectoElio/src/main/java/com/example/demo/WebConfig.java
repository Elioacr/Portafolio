package com.example.demo;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        // Asegúrate de reemplazar '/path/to/upload/' con la ruta real donde están almacenados tus archivos
        registry.addResourceHandler("/upload/**")
                .addResourceLocations("file:/C:/upload/");
    }
}
