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
    @Query("update User set password=?1,id_number=?2,degree=?3 where id=?4")
    void updateUser(String password,int id_number,String degree,int id);
}
