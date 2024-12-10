package com.klef.jfsd.sdpproject.service;

import com.klef.jfsd.sdpproject.model.Professional;


public interface ProfessionalService {

    String updateProfessionalProfile(Professional prof);

    Professional displayProfessionalbyID(int id);

    Professional checkproflogin(String pemail, String ppwd);

    String ProfessionalRegistration(Professional prof);
    
   
   
	

}
