package com.klef.jfsd.sdpproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdpproject.model.Admin;
import com.klef.jfsd.sdpproject.model.Professional;
import com.klef.jfsd.sdpproject.model.User;
import com.klef.jfsd.sdpproject.repository.AdminRepository;
import com.klef.jfsd.sdpproject.repository.ProfessionalRepository;
import com.klef.jfsd.sdpproject.repository.UserRepository;

@Service
public class AdminServiveImpl  implements AdminService
{

	 @Autowired
	  private UserRepository userRepository;
	  
	  @Autowired
	  private AdminRepository adminRepository;
	  
	  @Autowired
	  private ProfessionalRepository professionalRepository;
	
	
	@Override
	public List<Professional> viewAllProfessionals()
	{
		return professionalRepository.findAll();
	}

	@Override
	public List<User> viewAllUsers() {
		return userRepository.findAll();
	}

	@Override
	public Admin checkadminlogin(String uname, String pwd) {
		 return adminRepository.checkadminlogin(uname, pwd);
	}

	@Override
	public Professional displayprofessionalbyID(int pid) {
		return professionalRepository.findById(pid).get();
	}

	@Override
	public User displayuserbyID(int uid) {
		return userRepository.findById(uid).get();
	}

	@Override
	public long professionalcount() {
		return professionalRepository.count();
	}

	@Override
	public long usercount() {
		return userRepository.count();
	}

	@Override
	public String deleteprofessional(int pid) {
		professionalRepository.deleteById(pid);
		 return "Professional Deleted Successfully";
	}

	@Override
	public String deleteuser(int uid) {
		 userRepository.deleteById(uid);
		 return "User Deleted Successfully";
	}

	@Override
	public String updateprofressionalstatus(String status, int eid) {
		professionalRepository.updateProfessionalStatus(status, eid);
		 return "Employee updated successfully";
	}

	
	}


	


