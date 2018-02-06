package edu.monmouth.practicum.Dao;

import edu.monmouth.practicum.Domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserDao extends JpaRepository<User,Integer>{
    User findByUsernameAndPassword(String username,String password);
}
