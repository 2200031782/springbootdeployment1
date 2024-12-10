package com.klef.jfsd.sdpproject.service;

import java.util.List;

import com.klef.jfsd.sdpproject.model.Admin;
import com.klef.jfsd.sdpproject.model.Professional;
import com.klef.jfsd.sdpproject.model.User;

public interface AdminService
{
	  public List<Professional> viewAllProfessionals();
	  public List<User> viewAllUsers();
	  public Admin checkadminlogin(String uname, String pwd);
	  public Professional displayprofessionalbyID(int pid);
	  public User displayuserbyID(int uid);
	  public long professionalcount();
	  public long usercount();
	  public String deleteprofessional(int pid);
	  public String deleteuser(int uid);
	  public String updateprofressionalstatus(String status,int pid);
	  
	 
	 
	
}
	  
	 
