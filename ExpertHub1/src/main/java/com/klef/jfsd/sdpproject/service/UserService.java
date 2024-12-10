package com.klef.jfsd.sdpproject.service;


import java.util.List;

import com.klef.jfsd.sdpproject.model.Professional;
import com.klef.jfsd.sdpproject.model.User;

public interface UserService 
{
	  public String UserRegistration(User user);
	  public User checkuserlogin(String email, String pwd);
	  public String updateUserProfile(User us);
	  public User displayUserbyID(int uid);
	public List<Professional> userviewAllProfessionals();
	
}
