package com.company.erp.spring.persistence;

import java.util.Properties;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;
import org.springframework.dao.annotation.PersistenceExceptionTranslationPostProcessor;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.Database;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@ImportResource("classpath*:*springDataConfig.xml")
@ComponentScan({ "com.company.erp.persistence" })
public class PersistenceJPAConfig {

	@Value("${jdbc.driverClassName}")
	private String driverClassName;
	@Value("${jdbc.url}")
	private String url;
	@Value("${jdbc.username}")
	private String username;
	@Value("${jdbc.password}")
	private String password;
	@Value("${jpa.generateDdl}")
	boolean jpaGenerateDdl;

	// Hibernate specific
	@Value("${hibernate.dialect}")
	String hibernateDialect;
	@Value("${hibernate.show_sql}")
	boolean hibernateShowSql;
	@Value("${hibernate.hbm2ddl.auto}")
	String hibernateHbm2ddlAuto;

	public PersistenceJPAConfig() {
		super();
	}

	// beans

	@Bean
	public LocalContainerEntityManagerFactoryBean entityManagerFactoryBean() {
		final LocalContainerEntityManagerFactoryBean factoryBean = new LocalContainerEntityManagerFactoryBean();
		factoryBean.setDataSource(getDataSource());
		// factoryBean.setPackagesToScan(new String[] { "org.rest" });

		final JpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter() {
			{
				setDatabase(Database.MYSQL); // TODO: is this necessary
				setDatabasePlatform(hibernateDialect);
				setShowSql(hibernateShowSql);
				setGenerateDdl(jpaGenerateDdl);
			}
		};
		factoryBean.setJpaVendorAdapter(vendorAdapter);

		factoryBean.setJpaProperties(additionlProperties());

		return factoryBean;
	}

	@Bean
	public DataSource getDataSource() {
		final DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName(driverClassName);
		dataSource.setUrl(url);
		dataSource.setUsername(username);
		dataSource.setPassword(password);
		return dataSource;
	}

	@Bean
	public JpaTransactionManager transactionManager() {
		final JpaTransactionManager transactionManager = new JpaTransactionManager();
		transactionManager.setEntityManagerFactory(entityManagerFactoryBean()
				.getObject());

		return transactionManager;
	}

	@Bean
	public PersistenceExceptionTranslationPostProcessor persistenceExceptionTranslationPostProcessor() {
		return new PersistenceExceptionTranslationPostProcessor();
	}

	//
	final Properties additionlProperties() {
		return new Properties() {
			private static final long serialVersionUID = 1L;
			{
				// use this to inject additional properties in the EntityManager
				setProperty("hibernate.hbm2ddl.auto", hibernateHbm2ddlAuto);
			}
		};
	}

}