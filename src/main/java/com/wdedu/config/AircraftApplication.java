package com.wdedu.config;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.PropertySource;

/**
 * 
 * @ClassName: ShopApplication
 * @Description: 配置数据源
 * @author 63244
 * @date 2019年12月11日 下午2:11:01
 *
 */

@SpringBootApplication//核心
@SpringBootConfiguration//xml配置文件
@PropertySource(value= {"classpath:db.properties"},ignoreResourceNotFound=true)
@ComponentScan(basePackages= {"com.wdedu.*"})
public class AircraftApplication {
	@Value("${jdbc.url}")
	private String jdbcUrl;

	@Value("${jdbc.driver}")
	private String jdbcDriverClassName;

	@Value("${jdbc.username}")
	private String jdbcUsername;

	@Value("${jdbc.password}")
	private String jdbcPassword;

	@Bean
	//注意命名规范
	public DataSource dataSource() {
		BasicDataSource basicDataSource = new BasicDataSource();
		// 数据库驱动
		basicDataSource.setDriverClassName(jdbcDriverClassName);
		// 相应驱动的jdbcUrl
		basicDataSource.setUrl(jdbcUrl);
		// 数据库的用户名
		basicDataSource.setUsername(jdbcUsername);
		// 数据库的密码
		basicDataSource.setPassword(jdbcPassword);		
		// 连接池中未使用的链接最大存活时间，单位是分，默认值：60，如果要永远存活设置为0
		basicDataSource.setMaxIdle(30);
		// 每个分区最大的连接数
		basicDataSource.setMaxActive(100);
		// 每个分区最小的连接数   
		basicDataSource.setMinIdle(5);
		
		return basicDataSource;
	}
}
