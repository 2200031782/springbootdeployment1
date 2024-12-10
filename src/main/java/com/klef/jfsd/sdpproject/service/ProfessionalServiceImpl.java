package com.klef.jfsd.sdpproject.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdpproject.model.Professional;
import com.klef.jfsd.sdpproject.repository.ProfessionalRepository;
import com.klef.jfsd.sdpproject.repository.UserRepository;

@Service
public class ProfessionalServiceImpl implements ProfessionalService {

    @Autowired
    private ProfessionalRepository professionalRepository;
    
   

    @Autowired
    private UserRepository userRepository;



    @Override
    public String ProfessionalRegistration(Professional prof) {
        try {
            professionalRepository.save(prof);
            return "Professional Registered Successfully";
        } catch (Exception e) {
            return "Error during registration: " + e.getMessage();
        }
    }

    @Override
    public Professional checkproflogin(String email, String pwd) {
        return professionalRepository.checkproflogin(email, pwd);  
    }

    @Override
    public String updateProfessionalProfile(Professional professional) {
        try {
            Professional p = professionalRepository.findById(professional.getId()).orElseThrow(() -> new Exception("Professional not found"));
            
            p.setContact(professional.getContact());
            p.setDateofbirth(professional.getDateofbirth());
            p.setGender(professional.getGender());
            p.setLocation(professional.getLocation());
            p.setName(professional.getName());
            p.setPassword(professional.getPassword());
            p.setSalary(professional.getSalary());

            professionalRepository.save(p);
            return "Professional Updated Successfully";
        } catch (Exception e) {
            return "Error during update: " + e.getMessage();
        }
    }

    @Override
    public Professional displayProfessionalbyID(int pid) {
        return professionalRepository.findById(pid).orElse(null); // Return null if not found
    }
    
  
   
}
