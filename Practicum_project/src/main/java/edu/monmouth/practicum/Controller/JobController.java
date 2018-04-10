package edu.monmouth.practicum.Controller;

import edu.monmouth.practicum.Dao.JobDao;
import edu.monmouth.practicum.Domain.Job;
import edu.monmouth.practicum.Service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
@Controller
public class JobController {
    @Autowired
   public JobService jobService;
    @RequestMapping("/joblist")
    public String job_search(@RequestParam("jobname") String jobname, @RequestParam("location") String location, HttpSession session){
        List<Job> jobs = new ArrayList<Job>();
        jobs = jobService.Find_Job("%"+jobname+"%","%"+location+"%");
        session.setAttribute("job_list",jobs);
        return "job_list";
    }
    @RequestMapping("/Homeview")
    public String HomeView(){
        return "Home";
    }
}
