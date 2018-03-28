package edu.monmouth.practicum.Controller;

import edu.monmouth.practicum.Service.CompanyService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

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
