package edu.monmouth.practicum.Controller;

import edu.monmouth.practicum.Dao.JobDao;
import edu.monmouth.practicum.Dao.JobappliedDao;
import edu.monmouth.practicum.Domain.Job;
import edu.monmouth.practicum.Domain.Jobapplied;
import edu.monmouth.practicum.Domain.User;
import edu.monmouth.practicum.Service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
@Controller
public class JobController {

    @Autowired
   public JobService jobService;
    @Resource
    public JobDao jobDao;
    @Resource
    public JobappliedDao jobappliedDao;
    @RequestMapping("/joblist")
    public String job_search(@RequestParam("jobname") String jobname, @RequestParam("location") String location, HttpSession session){
        List<Job> jobs = new ArrayList<Job>();
        jobs = jobService.Find_Job("%"+jobname+"%","%"+location+"%");
        session.setAttribute("job_list",jobs);
        return "job_list";
    }

    @RequestMapping("/job_applied.do")
    public String job_applied(@RequestParam("id") int job_id, HttpSession session){
        //Job job = jobDao.findById(job_id);
       // System.out.println("------------------------"+job.companyname+"-----"+job.jobarea);
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
           System.out.println("--------------");
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
    @RequestMapping("/job_applied_list")
    public String job_applied_list(){
        return "job_applied_list";
    }
    @RequestMapping("/show_jobapplied_list.do")
    public String show_jobapplied_list(HttpSession session){
        List<Job> job_applied_list = new ArrayList<Job>();
        User user = (User)session.getAttribute("user");
        int user_id = user.getId();
        List<Jobapplied> jobappliedList = jobappliedDao.findByUserid(user_id);
       // List<Jobapplied> jobappliedList = jobappliedDao.findByUserid(user_id);
        for(Jobapplied j:jobappliedList){
            int j_id = j.getJobid();
            Job job = jobDao.findById(j_id);
            job_applied_list.add(job);
        }
        session.setAttribute("job_applied_list",job_applied_list);
        return "job_applied_list";
    }
    @RequestMapping("/job_applied_delete")
    public String job_applied_delete(@RequestParam("id") int job_applied_id,HttpSession session){
        List<Job> job_applied_list = new ArrayList<Job>();
        User user = (User)session.getAttribute("user");
        int user_id = user.getId();
        jobappliedDao.deleteByUseridAndJobid(user_id,job_applied_id);
        List<Jobapplied> jobappliedList = jobappliedDao.findByUserid(user_id);
        // List<Jobapplied> jobappliedList = jobappliedDao.findByUserid(user_id);
        for(Jobapplied j:jobappliedList){
            int j_id = j.getJobid();
            Job job = jobDao.findById(j_id);
            job_applied_list.add(job);
        }
        session.setAttribute("job_applied_list",job_applied_list);
        return "job_applied_list";
    }

}
