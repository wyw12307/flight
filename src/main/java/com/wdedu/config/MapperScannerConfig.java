package com.wdedu.config;

import org.mybatis.spring.mapper.MapperScannerConfigurer;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.boot.autoconfigure.AutoConfigureAfter;
import org.springframework.context.annotation.Bean;

@SpringBootConfiguration
@AutoConfigureAfter(MyBatisConfig.class)
public class MapperScannerConfig {

	
	 @Bean
	    public MapperScannerConfigurer mapperScannerConfigurer() {
	        MapperScannerConfigurer mapperScannerConfigurer = new MapperScannerConfigurer();
	        mapperScannerConfigurer.setBasePackage("com.wdedu.mapper");
	        return mapperScannerConfigurer;
	    }
	
}
