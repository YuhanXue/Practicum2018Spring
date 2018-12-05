package edu.monmouth.practicum.Controller;

import edu.monmouth.practicum.Dao.JobDao;
import edu.monmouth.practicum.Dao.JobappliedDao;
import edu.monmouth.practicum.Domain.Job;
import edu.monmouth.practicum.Domain.Jobapplied;
import edu.monmouth.practicum.Domain.Resume;
import edu.monmouth.practicum.Domain.User;
import edu.monmouth.practicum.Service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
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
        int pageCurrent=1;
        int count=0;            //总条数
        int totalpages=0;        //总页数
        session.setAttribute("currentPage",pageCurrent);
        List<Job> jobs = new ArrayList<Job>();
        jobs = jobService.Find_Job("%"+jobname+"%","%"+location+"%");
        count = jobs.size();
        totalpages = (int)Math.ceil(count/(3*1.0));
        List<Job> jobs2 = new ArrayList<Job>();
        jobs2=jobService.Find_Job_pagable("%"+jobname+"%","%"+location+"%",pageCurrent);
        session.setAttribute("job_list",jobs2);
        session.setAttribute("currentPage1",pageCurrent);
        session.setAttribute("totalPage1",totalpages);
        session.setAttribute("jobname",jobname);
        session.setAttribute("location",location);
        return "job_list";
    }
    @RequestMapping("pagelist_job.do")
    public String job_pageable(@RequestParam("currentPage1") String currentPage, HttpSession session){
        if(currentPage!=null){
            int pageCurrent =  Integer.parseInt(currentPage);
            String jobname = (String) session.getAttribute("jobname");
            String location = (String) session.getAttribute("location");
            List<Job> jobs2 = new ArrayList<Job>();
            jobs2=jobService.Find_Job_pagable("%"+jobname+"%","%"+location+"%",pageCurrent);
            session.setAttribute("currentPage1",pageCurrent);
            session.setAttribute("job_list",jobs2);
        }
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
        return "redirect:show_jobapplied_list.do";
    }
    @RequestMapping("/job_post")
    public String post(HttpSession session){
        User user = (User) session.getAttribute("user");
        if(user.getVerified()==2){
            return "Post_job";

        }

        else {
            //session.setAttribute("p_msg","you have right to use post job function");
            return "Home";
        }
    }
    @RequestMapping("/post.do")
    public String postjob(Job job){
        jobDao.save(job);
        return "Home";
    }
    @RequestMapping("/job_applied_list")
    public String job_applied_list(){
        return "job_applied_list";
    }
    @RequestMapping("/show_jobapplied_list.do")
    public String show_jobapplied_list(HttpSession session){
        int pageCurrent =1;
        Pageable pageable = new PageRequest(pageCurrent-1,3, Sort.Direction.DESC,"id");
        User user = (User)session.getAttribute("user");
        int user_id = user.getId();
        Page<Jobapplied> jobappliedList = jobappliedDao.findByUserid(user_id,pageable);
       // List<Jobapplied> jobappliedList = jobappliedDao.findByUserid(user_id);
        List<Job> job_applied_list = new ArrayList<Job>();
        for(Jobapplied j:jobappliedList.getContent()){
            int j_id = j.getJobid();
            Job job = jobDao.findById(j_id);
            job_applied_list.add(job);
        }
        if(job_applied_list.size()==0){
                session.setAttribute("totalPage2",1);
                session.setAttribute("currentPage2",1);
        }else {
        session.setAttribute("job_applied_list",job_applied_list);
        session.setAttribute("totalPage2",jobappliedList.getTotalPages());
        session.setAttribute("currentPage2",pageCurrent);
        }
        return "job_applied_list";
    }
    @RequestMapping("/pagelist_job_applied.do")
    public String pagelist_job_applied(@RequestParam("currentPage2") String currentPage, HttpSession session){
        if(currentPage!=null){
            int pageCurrent =  Integer.parseInt(currentPage);
            Pageable pageable = new PageRequest(pageCurrent-1,3, Sort.Direction.DESC,"id");
            User user = (User)session.getAttribute("user");
            int user_id = user.getId();
            Page<Jobapplied> jobappliedList = jobappliedDao.findByUserid(user_id,pageable);
            // List<Jobapplied> jobappliedList = jobappliedDao.findByUserid(user_id);
            List<Job> job_applied_list = new ArrayList<Job>();
            for(Jobapplied j:jobappliedList.getContent()){
                int j_id = j.getJobid();
                Job job = jobDao.findById(j_id);
                job_applied_list.add(job);
            }
            if(job_applied_list.size()==0){
                session.setAttribute("totalPage2",1);
                session.setAttribute("currentPage2",1);
            }else {
                session.setAttribute("job_applied_list",job_applied_list);
                session.setAttribute("totalPage2",jobappliedList.getTotalPages());
                session.setAttribute("currentPage2",pageCurrent);
            }

        }

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
        return "redirect:show_jobapplied_list.do";
    }


}
