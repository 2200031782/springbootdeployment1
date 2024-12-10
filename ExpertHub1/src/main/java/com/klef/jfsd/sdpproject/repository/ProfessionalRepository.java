package com.klef.jfsd.sdpproject.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import com.klef.jfsd.sdpproject.model.Professional;

import jakarta.transaction.Transactional;

public interface ProfessionalRepository extends JpaRepository<Professional, Integer>
{
	 @Query("select p from Professional p where p.email=?1 and p.password=?2")
	   public Professional checkproflogin(String email, String pwd);
	   
	   @Query("update Professional p set p.status=?1 where p.id=?2 ")
	   @Modifying  //DML
	   @Transactional  // to enable auto commit
	   public int updateProfessionalStatus(String status,int eid);
	  

}