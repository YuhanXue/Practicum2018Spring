package edu.monmouth.practicum;

import edu.monmouth.practicum.Dao.JobDao;
import edu.monmouth.practicum.Dao.UserDao;
import edu.monmouth.practicum.Domain.Job;
import edu.monmouth.practicum.Domain.User;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@SpringBootApplication
@Controller
public class PracticumApplication {
	@Resource
	UserDao userDao;
	@Resource
	JobDao jobDao;
	public static void main(String[] args) {
		SpringApplication.run(PracticumApplication.class, args);
	}
//	@RequestMapping("/")
//	public String register(HttpSession session){
//		List<Job> jobs = new ArrayList<Job>();
//		jobs = jobDao.findByRequirementLike("%"+"java"+"%");
//		session.setAttribute("jobs",jobs);
//		return "Home";
//	}
@RequestMapping("/")
	public String register(HttpSession session){

		return "login";

	}

}
