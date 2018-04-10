package edu.monmouth.practicum.Controller;

import edu.monmouth.practicum.Service.CompanyService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.support.HttpRequestHandlerServlet;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.*;

@Controller
public class CompanyController {
@Resource
    private CompanyService companyService;
@ResponseBody
@RequestMapping("findcompany.do")
public String findcompany(String name){
    String res ="";
    res =  companyService.findcompany("%"+name+"%");
    System.out.println(res+"----------------------------");
    return res;
}
}
