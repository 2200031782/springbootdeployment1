package com.klef.jfsd.sdpproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;

import org.springframework.data.jpa.repository.Query;

import com.klef.jfsd.sdpproject.model.Admin;

import jakarta.transaction.Transactional;

public interface AdminRepository  extends JpaRepository<Admin, String>
{
	@Query("select a from Admin a where a.username=?1 and a.password=?2")
	  public Admin checkadminlogin(String uname, String pwd);
	  
}
