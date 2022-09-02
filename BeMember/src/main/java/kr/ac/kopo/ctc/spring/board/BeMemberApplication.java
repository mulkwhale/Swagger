package kr.ac.kopo.ctc.spring.board;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import springfox.documentation.swagger2.annotations.EnableSwagger2;

@SpringBootApplication
//@EnableAutoConfiguration(exclude={DataSourceAutoConfiguration.class})
//@EnableSwagger2
public class BeMemberApplication {

	public static void main(String[] args) {
		SpringApplication.run(BeMemberApplication.class, args);
	}

}
