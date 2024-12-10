package com.klef.jfsd.sdpproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.klef.jfsd.sdpproject.model.User;

public interface UserRepository extends JpaRepository<User, Integer>
{
	@Query("select u from User u where u.email=?1 and u.password=?2")
	   public User checkuserlogin(String email, String pwd);
	
	   
}
