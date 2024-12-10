package com.klef.jfsd.sdpproject.controller;

import java.sql.Blob;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.sdpproject.model.Professional;

import com.klef.jfsd.sdpproject.service.ProfessionalService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ProfessionalController {

    @Autowired
    private ProfessionalService professionalService;

    // Endpoint for displaying the professional registration page
    @GetMapping("profreg")
    public ModelAndView profreg() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("profreg");
        return mv;
    }

    // Endpoint for inserting a new professional
    @PostMapping("insertprof")
    public ModelAndView insertprof(HttpServletRequest request, @RequestParam("profimage") MultipartFile file) throws Exception {
        String msg = null;
        ModelAndView mv = new ModelAndView();
        
        try {
            String name = request.getParameter("pname");
            String gender = request.getParameter("pgender");
            String dob = request.getParameter("pdob");
            double salary = Double.parseDouble(request.getParameter("psalary"));
            String skills = request.getParameter("pskills");
            String location = request.getParameter("plocation");
            String email = request.getParameter("pemail");
            String password = request.getParameter("ppwd");
            String contact = request.getParameter("pcontact");
            String status = "Registered";

            byte[] bytes = file.getBytes();
            Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);

            Professional prof = new Professional();
            prof.setName(name);
            prof.setGender(gender);
            prof.setDateofbirth(dob);
            prof.setSalary(salary);
            prof.setSkills(skills);
            prof.setLocation(location);
            prof.setEmail(email);
            prof.setPassword(password);
            prof.setContact(contact);
            prof.setStatus(status);
            prof.setImage(blob);

            msg = professionalService.ProfessionalRegistration(prof);
            System.out.println(msg);

            mv.setViewName("profregsuccess");
            mv.addObject("message", msg);
        } catch (Exception e) {
            msg = e.getMessage();
            System.out.println(msg);
            mv.setViewName("error");  // Set error view if an exception occurs
            mv.addObject("message", msg);
        }
        
        return mv;
    }


 

	@GetMapping("proflogin")
    public ModelAndView proflogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("proflogin");
        return mv;
    }


    @PostMapping("checkproflogin")
    public ModelAndView checkproflogin(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        String pemail = request.getParameter("pemail");
        String ppwd = request.getParameter("ppwd");

        Professional prof = professionalService.checkproflogin(pemail, ppwd);

        if (prof != null) {
            String status = prof.getStatus();
            if ("accepted".equalsIgnoreCase(status)) {
                HttpSession session = request.getSession();
                session.setAttribute("prof", prof); 
                mv.setViewName("profhome");
            } else if ("rejected".equalsIgnoreCase(status)) {
                mv.setViewName("proflogin");
                mv.addObject("message", "Your account has been rejected. Please contact support.");
            } else if ("registered".equalsIgnoreCase(status)) {
                mv.setViewName("proflogin");
                mv.addObject("message", "Your registration is pending approval.");
            } else {
                mv.setViewName("proflogin");
                mv.addObject("message", "Login denied due to an unknown status.");
            }
        } else {
            mv.setViewName("proflogin");
            mv.addObject("message", "Invalid email or password.");
        }
        return mv;
    }

    @GetMapping("profhome")
    public ModelAndView profhome() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("profhome");
        return mv;
    }

    
    @GetMapping("profprofile")
    public ModelAndView profprofile() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("profprofile");
        return mv;
    }

 
    @GetMapping("profcontactus")
    public ModelAndView profcontactus() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("profcontactus");
        return mv;
    }


    @GetMapping("proflogout")
    public ModelAndView proflogout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.removeAttribute("professional");
        ModelAndView mv = new ModelAndView();
        mv.setViewName("proflogin");
        return mv;
    }

    @GetMapping("updateprof")
    public ModelAndView updateprof() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("updateprof");
        return mv;
    }

    
    @PostMapping("updateprofprofile")
    public ModelAndView updateprofprofile(HttpServletRequest request) {
        ModelAndView mv = new ModelAndView();
        
        try {
            int id = Integer.parseInt(request.getParameter("pid"));
            String name = request.getParameter("pname");
            String gender = request.getParameter("pgender");
            String dob = request.getParameter("pdob");
            double salary = Double.parseDouble(request.getParameter("psalary"));
            String password = request.getParameter("ppwd");
            String location = request.getParameter("plocation");
            String contact = request.getParameter("pcontact");
            
            Professional prof = new Professional();
            prof.setId(id);
            prof.setName(name);
            prof.setGender(gender);
            prof.setDateofbirth(dob);
            prof.setSalary(salary);
            prof.setPassword(password);
            prof.setLocation(location);
            prof.setContact(contact);

            String msg = professionalService.updateProfessionalProfile(prof);
            Professional p = professionalService.displayProfessionalbyID(id);

            HttpSession session = request.getSession();
            session.setAttribute("prof", p);

            mv.setViewName("updateprofsuccess");
            mv.addObject("message", msg);

        } catch (Exception e) {
            mv.setViewName("updateerror");
            mv.addObject("message", e);
        }
        return mv;
    }

    // Endpoint for handling session expiry
    @GetMapping("profsessionexpiry")
    public ModelAndView profsessionexpiry(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.removeAttribute("professional");
        ModelAndView mv = new ModelAndView();
        mv.setViewName("profsessionexpiry");
        return mv;
    }
    
    @GetMapping("displayprofresume")
    public ResponseEntity<byte[]> displayprodimagedemo(@RequestParam("id") int id) throws Exception
    {
      Professional prof =  professionalService.displayProfessionalbyID(id);
      byte [] imageBytes = null;
      imageBytes = prof.getImage().getBytes(1,(int) prof.getImage().length());

      return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
      
    // Response Body, HTTP Status Code, Headers
    }
    
}
   

   
    

