package edu.monmouth.practicum.Controller;

import edu.monmouth.practicum.Dao.JobDao;
import edu.monmouth.practicum.Domain.Job;
import edu.monmouth.practicum.Domain.User;
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
    @RequestMapping("/job_applied.do")
    public String job_applied(@RequestParam("id") int job_id, HttpSession session){
        List<Job> job_applied_list = new ArrayList<Job>();
        User user = (User)session.getAttribute("user");
        int user_id = user.getId();
        Jobapplied jobapplied = null;
        jobapplied =  jobappliedDao.findByUseridAndJobid(user_id,job_id);
        if (jobapplied == null){
            Jobapplied jobapplied1 = new Jobapplied();
            jobapplied1.setJobid(job_id);
            jobapplied1.setUserid(user_id);
            jobappliedDao.save(jobapplied1);
        }
        List<Jobapplied> jobappliedList = jobappliedDao.findByUserid(user_id);
        for(Jobapplied j:jobappliedList){
            int j_id = j.getJobid();
            Job job = jobDao.findById(j_id);
            job_applied_list.add(job);
        }
        session.setAttribute("job_applied_list",job_applied_list);
        return "job_applied_list";
    }

}
