package edu.monmouth.practicum.Dao;

import edu.monmouth.practicum.Domain.Resume;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ResumeDao extends JpaRepository<Resume,Integer> {
    List<Resume> findByFilenameLike(String filename);
}
