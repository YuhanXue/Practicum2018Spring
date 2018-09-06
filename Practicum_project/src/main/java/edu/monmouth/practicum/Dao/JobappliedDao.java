package edu.monmouth.practicum.Dao;

import edu.monmouth.practicum.Domain.Job;
import edu.monmouth.practicum.Domain.Jobapplied;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface JobappliedDao extends JpaRepository<edu.monmouth.practicum.Domain.Jobapplied,Integer> {
    Jobapplied findByUseridAndJobid(int userid, int Jobid);
    List<Jobapplied> findByUserid(int userid);

}
