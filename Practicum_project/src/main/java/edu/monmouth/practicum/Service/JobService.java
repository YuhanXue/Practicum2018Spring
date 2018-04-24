package edu.monmouth.practicum.Service;

import edu.monmouth.practicum.Dao.JobDao;
import edu.monmouth.practicum.Domain.Job;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.ArrayList;
import java.util.List;

@Service
public class JobService {
    @Autowired
    @PersistenceContext
    private EntityManager entityManager;
    public List<Job> Find_Job(String jobname,String location){
        String sql = "select j.id,j.jobname,j.location,j.requirement,j.contact,j.jobarea,j.companyname from Job j where 1=1";
        if(!"".equals(jobname.trim())&&!(jobname==null)){
            sql+=" and requirement like '"+jobname+"'";
        }
        if(!"".equals(location.trim())&&!(location==null)){
            sql+=" and location like '"+location+"'";
        }
        Query query = entityManager.createNativeQuery(sql,Job.class);
        System.out.println(sql);
        List<Job> jobs = new ArrayList<Job>();
        jobs = query.getResultList();
        return jobs;
    }
}
