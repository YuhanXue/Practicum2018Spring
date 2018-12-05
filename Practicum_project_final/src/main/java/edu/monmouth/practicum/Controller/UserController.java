package edu.monmouth.practicum.Controller;

import Utils.ImageCode;
import Utils.javaMail;
import edu.monmouth.practicum.Dao.JobDao;
import edu.monmouth.practicum.Dao.ResumeDao;
import edu.monmouth.practicum.Dao.UserDao;
import edu.monmouth.practicum.Domain.Job;
import edu.monmouth.practicum.Domain.Resume;
import edu.monmouth.practicum.Domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.awt.image.BufferedImage;
import java.io.*;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
public class UserController {
    /**

     */
    @Resource
    UserDao userDao;
    @Autowired
    JobDao jobDao;
    @Resource
    ResumeDao resumeDao;
    @RequestMapping("register.do")
    public String Register(@Valid User user, HttpSession session, HttpServletRequest request) throws Exception {

        String email = user.getEmail();
        String RULE_EMAIL = "^\\w+((-\\w+)|(\\.\\w+))*\\@[A-Za-z0-9]+((\\.|-)[A-Za-z0-9]+)*\\.[A-Za-z0-9]+$";
        Pattern p = Pattern.compile(RULE_EMAIL);
        Matcher m = p.matcher(email);
        String checkCode = request.getParameter("checkCode");
        Object cko = session.getAttribute("simpleCaptcha") ;
        if(cko == null){
            request.setAttribute("errorMsg", "Too long time of this verified code, please rewrite verified code again！");
        }
        String captcha = cko.toString();
        Date now = new Date();
        Long codeTime = Long.valueOf(session.getAttribute("codeTime")+"");
        if(StringUtils.isEmpty(checkCode) || captcha == null ||  !(checkCode.equalsIgnoreCase(captcha))) {
            request.setAttribute("errorMsg", "Verification code error!");
            return "register";
        } else if ((now.getTime()-codeTime)/1000/60>5) {
            //验证码有效时长为5分钟
            request.setAttribute("errorMsg", "Verification code is invalid, please re-enter!");
            return "register";
        }else {

            if(m.matches()){
                user.setVerified(0);
                userDao.save(user);
                session.setAttribute("user",user);
//                javaMail javaMail = new javaMail();
//                javaMail.sendmail(user.getEmail());
                session.removeAttribute("simpleCaptcha");
                session.setAttribute("user",user);
                return "login";
            }
            else{
                session.setAttribute("email_msg","error email try it again");
                return "register";
            }
        }


    }
    @RequestMapping("register")
    public String RegisterView(){
        return "register";
    }
    @RequestMapping("Home")
    public String HomeView(HttpSession session){
     User user  = (User) session.getAttribute("user");
        List<Job> jobs = jobDao.findByJobareaLike("%"+user.getJobarea()+"%");
        session.setAttribute("jobs",jobs);
        return "Home";
    }
    @RequestMapping("login")
    public String loginview(){
        return "login";
    }
    @RequestMapping("login.do")
    public String login(@RequestParam("username") String username, @RequestParam("password") String password, HttpSession session){

        User user = userDao.findByUsernameAndPassword(username,password);
        if(user==null){
            session.setAttribute("user_msg","error username or password");
            return "login";
        }else {
            if(user.getVerified()!=2){
                session.setAttribute("rs_msg","you do not have right to use find resume function");
                session.setAttribute("p_msg","you do not have right to use post resume function");
            }else {
                session.setAttribute("rs_msg","1");
                session.setAttribute("p_msg","1");
            }
            if(user.getVerified() == 0){

                //session.setAttribute("user_msg","you need verify your email address");
                return "Home";
            }else{
//            user.setVerified(1);
//            userDao.save(user);
                session.setAttribute("user",user);
                List<Job> jobs = jobDao.findByJobareaLike("%"+user.getJobarea()+"%");
                session.setAttribute("jobs",jobs);
            return "Home";
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

    @RequestMapping("ModifyUserInfo")
    public String ModifyUserInfoView(){
        return "modifyuserinfo";
    }
    @PostMapping("ModifyUserInfo.do")
    public String ModifyUserInfo(@RequestParam("password") String password,@RequestParam("id_number") String id_number,@RequestParam("degree") String degree,@RequestParam("jobarea") String jobarea,HttpSession session,@RequestParam("file") MultipartFile file, HttpServletRequest request){
        User user1 = (User) session.getAttribute("user");
        if(!id_number.equals("")&&!password.equals("")){
            userDao.updateUser(password, Integer.parseInt(id_number),user1.getId());
        }
        userDao.updatejobarea_and_degree(jobarea,degree,user1.getId());
        session.removeAttribute("user");
        User user2 = userDao.findById(user1.getId());
        session.setAttribute("user",user2);
        if(!file.isEmpty()){
            String saveFileName = file.getOriginalFilename();
            if(saveFileName!=null){
                String[] array = new String[2];
                  array = saveFileName.split("\\.");
            System.out.println(array[1]);
            saveFileName = ((User) session.getAttribute("user")).getUsername()+"_Resume."+array[1];
            }

            File saveFile = new File(request.getServletContext().getRealPath("/Resume/")+saveFileName);
            if(!saveFile.getParentFile().exists()){
                saveFile.getParentFile().mkdir();
            }
            BufferedOutputStream bufferedOutputStream = null;
            try {
                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(saveFile));
               // bufferedOutputStream.close();

            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                bufferedOutputStream.write(file.getBytes());
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                bufferedOutputStream.flush();
            } catch (IOException e) {
                e.printStackTrace();
            }
            try {
                bufferedOutputStream.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
            Resume resume = new Resume();
            resume.setUsername(((User) session.getAttribute("user")).getUsername());
            resume.setFilename(saveFileName);
            resumeDao.save(resume);
            return "redirect:Home";

        }else {
            return "redirect:Home";
        }
    }

    @RequestMapping("myAccount")
    public String myAccountView(){
        return "myAccount";
    }
    @RequestMapping("HomeView")
    public String HomeView(){
        return "Home";
    }
    @RequestMapping("logout")
    public String logoutView(){
        return "logoutSuccess";
    }
    @RequestMapping("logout.do")
    public String logout(HttpSession session){
        session.invalidate();
        return "login";
    }
    @RequestMapping("/verify")
    public String verify(HttpSession session){
        User user = (User) session.getAttribute("user");
        user.setVerified(1);
        userDao.save(user);
        return "Verify";
    }
    @RequestMapping("test")
    public String test(){
        return "test";
    }
    @RequestMapping("Company")
    public String companyview(){
        return "company";
    }
//    @RequestMapping("upload_resume.do")
//    public String upload_resume(@RequestParam("file") MultipartFile file, HttpServletRequest request){
//        if(!file.isEmpty()){
//            String saveFileName = file.getOriginalFilename();
//            File saveFile = new File(request.getServletContext().getRealPath("/Resume/")+saveFileName);
//            if(!saveFile.getParentFile().exists()){
//                saveFile.getParentFile().mkdir();
//            }
//            BufferedOutputStream bufferedOutputStream = null;
//            try {
//                bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(saveFile));
//            } catch (FileNotFoundException e) {
//                e.printStackTrace();
//            }
//            try {
//                bufferedOutputStream.write(file.getBytes());
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
//            try {
//                bufferedOutputStream.flush();
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
//            try {
//                bufferedOutputStream.close();
//            } catch (IOException e) {
//                e.printStackTrace();
//            }
//            return "redirect:Home";
//        }else {
//            return "redirect:ModifyUserInfo";
//        }
//    }

}
