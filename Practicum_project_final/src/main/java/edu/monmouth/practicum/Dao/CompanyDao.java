package edu.monmouth.practicum.Dao;


import edu.monmouth.practicum.Domain.Company;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CompanyDao extends JpaRepository<Company,Integer> {
    List<Company> findByCompanynameLike(String name);
}