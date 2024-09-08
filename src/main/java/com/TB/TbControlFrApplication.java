package com.TB;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
@SpringBootApplication
@ComponentScan("com.TB")
public class TbControlFrApplication {

	public static void main(String[] args) {
		SpringApplication.run(TbControlFrApplication.class, args);
	}

}
