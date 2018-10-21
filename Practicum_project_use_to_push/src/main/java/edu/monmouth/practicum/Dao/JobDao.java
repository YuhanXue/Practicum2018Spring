package edu.monmouth.practicum.Dao;

import edu.monmouth.practicum.Domain.Job;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface JobDao extends JpaRepository<Job,Integer> {
    List<Job> findByRequirementLike(String job);
    List<Job> findByJobareaLike(String jobarea);
}
