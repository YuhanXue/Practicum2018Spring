package edu.monmouth.practicum.Controller;

import edu.monmouth.practicum.Dao.ResumeDao;
import edu.monmouth.practicum.Domain.Resume;
import edu.monmouth.practicum.Domain.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.List;

@Controller
public class ResumeController {
    @Resource
    public ResumeDao resumeDao;
    @RequestMapping(value = "/download",method = RequestMethod.GET)
    public String download_resume(@RequestParam("filename") String fileName, HttpSession session,HttpServletRequest request, HttpServletResponse response){
        response.reset();
        User user = new User();
        user = (User) session.getAttribute("user");
        //String fileName = user.getUsername()+"_Resume.docx";
        if (fileName != null) {
            //设置文件路径
            String realPath = request.getServletContext().getRealPath("/Resume");
            File file = new File(realPath , fileName);
            if (file.exists()) {
                response.setContentType("application/force-download");// 设置强制下载不打开
                response.addHeader("Content-Disposition", "attachment;fileName=" + fileName);// 设置文件名
                byte[] buffer = new byte[1024];
                FileInputStream fis = null;
                BufferedInputStream bis = null;
                try {
                    fis = new FileInputStream(file);
                    bis = new BufferedInputStream(fis);
                    OutputStream os = response.getOutputStream();
                    int i = bis.read(buffer);
                    while (i != -1) {
                        os.write(buffer, 0, i);
                        i = bis.read(buffer);
                       // System.out.println("success-------------");
                    }
                    System.out.println("success");

                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    if (bis != null) {
                        try {
                            bis.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                    if (fis != null) {
                        try {
                            fis.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        }
        return "Download_Successful";
    }
    @RequestMapping("/find_resume")
    public  String find_resume_view(HttpSession session){
        User user = (User) session.getAttribute("user");
        if(user.getVerified()==2){
        return "Find_Resume";}

        else {
            session.setAttribute("rs_msg","you have right to use find resume function");
            return "Home";
        }

    }
    @RequestMapping("/find_resume.do")
    public String find_resume(@RequestParam("rs_name") String rs_name,HttpSession session){
//        session.setAttribute("rs_name",rs_name);
//        List<Resume> resumeList = resumeDao.findByFilenameLike("%"+rs_name+"%");
//        session.setAttribute("resume_list",resumeList);
        int pageCurrent =1;
        Pageable pageable = new PageRequest(pageCurrent-1,3, Sort.Direction.DESC,"id");
       // String name ="%"+session.getAttribute("rs_name")+"%";
        Page<Resume> page = resumeDao.findByFilenameLike("%"+rs_name+"%",pageable);
        List<Resume> resumeList = page.getContent();
        session.setAttribute("resume_list",resumeList);
        session.setAttribute("totalPage",page.getTotalPages());
        session.setAttribute("currentPage",pageCurrent);
        session.setAttribute("resume_list",resumeList);
        session.setAttribute("rs_name",rs_name);
        return "Resume_list";
    }
    @RequestMapping("/pagelist.do")
    public String pagelist(@RequestParam("currentPage") String currentPage, HttpSession session){
        if(currentPage!=null){
            int pageCurrent =  Integer.parseInt(currentPage);
            Pageable pageable = new PageRequest(pageCurrent-1,3, Sort.Direction.DESC,"id");
            String name ="%"+session.getAttribute("rs_name")+"%";
            System.out.println("---------------++++"+name);
            Page<Resume> page = resumeDao.findByFilenameLike(name,pageable);
            List<Resume> resumeList = page.getContent();
            session.setAttribute("resume_list",resumeList);
            session.setAttribute("totalPage",page.getTotalPages());
            session.setAttribute("currentPage",pageCurrent);
        }
        return "Resume_list";
    }
}
