package edu.monmouth.Controller;

import edu.monmouth.Domain.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class myAccountController {
    @RequestMapping("myAccount.do")
    public String checkUser(HttpSession session){
     User user = (User) session.getAttribute("user");
     if(user==null){
         return "redirect:login.jsp";
     }
     else {
         return "redirect:myAccount.jsp";
     }
    }

}
