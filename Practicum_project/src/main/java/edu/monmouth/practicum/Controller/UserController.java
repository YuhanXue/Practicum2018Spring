package edu.monmouth.practicum.Controller;

import Utils.ImageCode;
import Utils.javaMail;
import edu.monmouth.practicum.Dao.UserDao;
import edu.monmouth.practicum.Domain.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Date;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class UserController {
    /**

     */
    @Resource
    UserDao userDao;
    @RequestMapping("register.do")
    public String Register(User user,HttpSession session,HttpServletRequest request) throws Exception {
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
    @RequestMapping("imagecode")
    public String imagecode(HttpServletRequest request, HttpServletResponse response) throws Exception {
        OutputStream os = response.getOutputStream();
        Map<String,Object> map = ImageCode.getImageCode(60, 20, os);
        String simpleCaptcha = "simpleCaptcha";
        request.getSession().setAttribute(simpleCaptcha, map.get("strEnsure").toString().toLowerCase());
        request.getSession().setAttribute("codeTime",new Date().getTime());
        try {
            ImageIO.write((BufferedImage) map.get("image"), "JPEG", os);
        } catch (IOException e) {
            return "";
        }
        return null;
    }
}
