package com.wdedu.config;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.context.annotation.Bean;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternResolver;

@SpringBootConfiguration
public class MyBatisConfig {
	
	
	@Bean
	@ConditionalOnMissingBean//相当于if
	public SqlSessionFactoryBean sqlSessionFactory(DataSource dataSource) {
		
		SqlSessionFactoryBean sessionFactory = new SqlSessionFactoryBean();
		
		/*
		 * ResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
		 * Resource mybatisConfigXml =
		 * resolver.getResource("classpath:mybatis-config.xml");
		 * sessionFactory.setConfigLocation(mybatisConfigXml);
		 */
		
		sessionFactory.setDataSource(dataSource);
		
		//代替mybatis全局配置文件批量定义别名
		sessionFactory.setTypeAliasesPackage("com.wdedu.po");
			
		return sessionFactory;
		
		
	}
}
