package edu.monmouth.practicum;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@SpringBootApplication
@Controller
public class PracticumApplication {

	public static void main(String[] args) {
		SpringApplication.run(PracticumApplication.class, args);
	}
	@RequestMapping("/")
	public String register(){
		return "register";
	}
}
