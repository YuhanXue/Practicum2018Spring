package edu.monmouth.practicum.Controller;

import edu.monmouth.practicum.Dao.UserDao;
import edu.monmouth.practicum.Domain.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
public class UserController {
    @Resource
    UserDao userDao;
    @RequestMapping("register.do")
    public String Register(User user){
        user.setVerified(0);
        userDao.save(user);
        return "login";
    }
    @RequestMapping("login.do")
    public String login(@RequestParam("username") String username, @RequestParam("password") String password, HttpSession session){
        User user = userDao.findByUsernameAndPassword(username,password);
        if(user==null){
            session.setAttribute("user_msg","error username or password");
            return "login";
        }else {
            user.setVerified(1);
            userDao.save(user);
            return "index";
        }

    }
}
