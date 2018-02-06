package edu.monmouth.Controller;

import com.sun.deploy.net.HttpResponse;
import edu.monmouth.Service.ProductService;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

@Controller

public class ProductController {
    @Resource
    private ProductService productService;
    @ResponseBody
    @RequestMapping("findProductName.do")
    public String findProductName(String name){
        String res = "";
        System.out.println(name+"-----------------cmemvienvieniv------------------------------");
        System.out.println(productService.findProductName(name)+"-----------------cmemvienvieniv------------------------------");
        res = productService.findProductName(name);
       return res;
    }

}
