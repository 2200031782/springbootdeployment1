package com.klef.jfsd.sdpproject.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdpproject.model.Professional;
import com.klef.jfsd.sdpproject.model.User;
import com.klef.jfsd.sdpproject.repository.AdminRepository;
import com.klef.jfsd.sdpproject.repository.ProfessionalRepository;
import com.klef.jfsd.sdpproject.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService
{
	@Autowired
	private UserRepository userRepository;
	
	 
	  
	  @Autowired
	  private ProfessionalRepository professionalRepository;


	@Override
	public String UserRegistration(User user)
	{
		userRepository.save(user);
		return "User Registered Successfully";
	}

	@Override
	public User checkuserlogin(String email, String pwd) 
	{
	    return userRepository.checkuserlogin(email, pwd);	 
	}

	@Override
	public String updateUserProfile(User us) {
		
		User u = userRepository.findById(us.getId()).get();
	    
	    u.setContact(us.getContact());
	    u.setDateofbirth(us.getDateofbirth());
	    u.setLocation(us.getLocation());
	    u.setName(us.getName());
	    u.setPassword(us.getPassword());
	    
	    userRepository.save(u);
	    
	    return "User Updated Successfully";
	}

	@Override
	public User displayUserbyID(int uid) {
		// TODO Auto-generated method stub
		return userRepository.findById(uid).get();
	}

	@Override
	public List<Professional> userviewAllProfessionals() {
		return professionalRepository.findAll();
	}

	
}
