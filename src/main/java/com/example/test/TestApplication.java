package com.example.test;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@SpringBootApplication
@EnableJpaAuditing
public class TestApplication {
	public static final String APPLICATION_LOCATIONS = "spring.config.location="
			+ "classpath:application.properties,"
			+ "classpath:real-application.yml";

	public static void main(String[] args) {

		new SpringApplicationBuilder(TestApplication.class)
				.properties(APPLICATION_LOCATIONS)
				.run(args);
	}
}