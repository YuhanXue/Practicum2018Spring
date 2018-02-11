package edu.monmouth.practicum.Controller;

import Utils.javaMail;
import edu.monmouth.practicum.Dao.UserDao;
import edu.monmouth.practicum.Domain.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
public class UserController {
    /**

     */
    @Resource
    UserDao userDao;
    @RequestMapping("register.do")
    public String Register(User user,HttpSession session) throws Exception {
        String email = user.getEmail();
        String RULE_EMAIL = "^\\w+((-\\w+)|(\\.\\w+))*\\@[A-Za-z0-9]+((\\.|-)[A-Za-z0-9]+)*\\.[A-Za-z0-9]+$";
        Pattern p = Pattern.compile(RULE_EMAIL);
        Matcher m = p.matcher(email);
        if(m.matches()){
        user.setVerified(0);
        userDao.save(user);
        session.setAttribute("user",user);
        javaMail javaMail = new javaMail();
        javaMail.sendmail(user.getEmail());
        return "login";
        }
        else{
            session.setAttribute("email_msg","error email try it again");
            return "register";
        }

    }
    @RequestMapping("login.do")
    public String login(@RequestParam("username") String username, @RequestParam("password") String password, HttpSession session){
        User user = userDao.findByUsernameAndPassword(username,password);
        if(user==null){
            session.setAttribute("user_msg","error username or password");
            return "login";
        }else {
            if(user.getVerified() == 0){
                session.setAttribute("user_msg","you need verify your email address");
                return "login";
            }else{
//            user.setVerified(1);
//            userDao.save(user);
            return "index";
            }
        }

    }
}
