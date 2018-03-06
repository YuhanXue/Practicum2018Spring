package edu.monmouth.practicum;

import edu.monmouth.practicum.Dao.UserDao;
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
	public static void main(String[] args) {
		SpringApplication.run(PracticumApplication.class, args);
	}
	@RequestMapping("/")
	public String register(HttpSession session){
		List<User> users = new ArrayList<User>();
		users = userDao.findAll();
		session.setAttribute("users",users);
		return "Home";
	}
	@RequestMapping("/verify")
	public String verify(HttpSession session){
		User user = (User) session.getAttribute("user");
		user.setVerified(1);
		userDao.save(user);
		return "Verify";
	}
}
