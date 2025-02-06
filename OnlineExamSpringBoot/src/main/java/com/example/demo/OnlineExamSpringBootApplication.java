package com.example.demo;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class OnlineExamSpringBootApplication {

	@Autowired
	DataSource datasource;

	public static void main(String[] args) {
		SpringApplication.run(OnlineExamSpringBootApplication.class, args);
	}

}
