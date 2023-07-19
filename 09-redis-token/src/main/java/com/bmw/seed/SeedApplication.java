package com.bmw.seed;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
@MapperScan(value = "com.bmw.seed.dao")
public class SeedApplication {
	public static void main(String[] args) {
		SpringApplication.run(SeedApplication.class, args);
	}
}
