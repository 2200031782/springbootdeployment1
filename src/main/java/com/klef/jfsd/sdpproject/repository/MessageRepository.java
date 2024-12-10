package com.klef.jfsd.sdpproject.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.klef.jfsd.sdpproject.model.Message;

@Repository
public interface MessageRepository extends JpaRepository<Message, Integer> {
	  List<Message> findByEmail(String email); // Find all messages by email
	  @Query("SELECT m FROM Message m WHERE m.readStatus = :readStatus")
	  List<Message> findByReadStatus(@Param("readStatus") boolean readStatus);
	

}