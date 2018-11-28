package edu.monmouth.practicum.Dao;

import edu.monmouth.practicum.Domain.Jobapplied;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;

import javax.transaction.Transactional;
import java.util.List;

public interface JobappliedDao extends JpaRepository<Jobapplied,Integer> {
    Jobapplied findByUseridAndJobid(int userid, int Jobid);
    List<Jobapplied> findByUserid(int userid);

    Page<Jobapplied> findByUserid(int userid, Pageable pageable);
    @Transactional
    @Modifying
    void deleteByUseridAndJobid(int user_id, int job_id);
}
