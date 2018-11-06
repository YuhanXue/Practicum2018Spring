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
               
        return "Download_Successful";
    }

}
