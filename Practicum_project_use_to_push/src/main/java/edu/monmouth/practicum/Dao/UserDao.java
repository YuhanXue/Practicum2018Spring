package edu.monmouth.practicum.Dao;

import edu.monmouth.practicum.Domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import javax.transaction.Transactional;

public interface UserDao extends JpaRepository<User,Integer>{
    User findByUsernameAndPassword(String username,String password);
    User findById(int id);
    @Transactional
    @Modifying
    @Query("update User set password=?1,id_number=?2 where id=?3")
    void updateUser(String password,int id_number,int id);
    @Transactional
    @Modifying
    @Query("update User set jobarea=?1,degree=?2 where id=?3")
    void updatejobarea_and_degree(String jobarea,String degree,int id);
}
