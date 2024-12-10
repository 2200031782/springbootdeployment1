package com.klef.jfsd.sdpproject.controller;



import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.sdpproject.model.Professional;
import com.klef.jfsd.sdpproject.model.User;
import com.klef.jfsd.sdpproject.service.ProfessionalService;
import com.klef.jfsd.sdpproject.service.UserService;

import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController
{
	@Autowired
	  private UserService userService;
	
	@Autowired
	  private ProfessionalService professionalService;
 
	   @GetMapping("/")
	     public ModelAndView home()
	     {
	       ModelAndView mv = new ModelAndView();
	       mv.setViewName("home");
	       return mv;
	     }
	     
	     @GetMapping("userreg")
	     public ModelAndView userreg()
	     {
	       ModelAndView mv = new ModelAndView();
	       mv.setViewName("userreg");
	       return mv;
	     }
	     
	     @PostMapping("insertuser")
	     public ModelAndView insertuser(HttpServletRequest request)
	     {
	       
	      String name = request.getParameter("uname");
	      String dob = request.getParameter("udob");
	      String location = request.getParameter("ulocation");
	      String email = request.getParameter("uemail");
	      String password = request.getParameter("upwd");
	      String contact = request.getParameter("ucontact");
	      
	        User user = new User();
	        user.setName(name);
	        user.setDateofbirth(dob);
	        user.setLocation(location);
	        user.setEmail(email);
	        user.setPassword(password);
	        user.setContact(contact);
	    
	        
	        String msg = userService.UserRegistration(user);
	        
	        ModelAndView mv = new ModelAndView("userregsuccess");
	        mv.addObject("message", msg);
	      
	        return mv;

	     }
	     
	     @GetMapping("userlogin")
	     public ModelAndView userlogin()
	     {
	       ModelAndView mv = new ModelAndView();
	       mv.setViewName("userlogin");
	       return mv;
	     }
	     
	     @PostMapping("checkuserlogin")
	     public ModelAndView checkuserlogin(HttpServletRequest request)
	     {
	   	  
	   	   ModelAndView mv = new ModelAndView();
	       String uemail= request.getParameter("uemail");
	       String upwd = request.getParameter("upwd");
	       
	   
		User user = userService.checkuserlogin(uemail, upwd);
	       
	       if(user!=null)
	       {
	    	 
	    	   HttpSession session = request.getSession();
	    	   session.setAttribute("user", user); 
	    	 //session.setMaxInactiveInterval(5);
	       	mv.setViewName("userhome");
	       	
	       }
	       else
	       {
	       
	       	mv.setViewName("userlogin");
	       	mv.addObject("message","Login Failed");
	       }
	       return mv;
	     }
	     
	     @GetMapping("userhome")
	     public ModelAndView userhome()
	     {
	       ModelAndView mv = new ModelAndView();
	       mv.setViewName("userhome");
	       
	       return mv;
	     }
	     
	     @GetMapping("userprofile")
	     public ModelAndView userprofile()
	     {
	       ModelAndView mv = new ModelAndView();
	       mv.setViewName("userprofile");
	       
	       return mv;
	     }
	     @GetMapping("usercontactus")
	     public ModelAndView usercontactus()
	     {
	       ModelAndView mv = new ModelAndView();
	       mv.setViewName("usercontactus");
	       
	       return mv;
	     }
	     
	     @GetMapping("userlogout")
	     public ModelAndView userlogout(HttpServletRequest request)
	     {
	       HttpSession session = request.getSession();
	       
	       session.removeAttribute("us");
	       //session.invalidate();   //- to remove all session attributes
	       
	       ModelAndView mv = new ModelAndView();
	       mv.setViewName("userlogin");
	       
	       return mv;
	     }
	     @GetMapping("updateuser")
	     public ModelAndView updateuser()
	     {
	       ModelAndView mv = new ModelAndView();
	       mv.setViewName("updateuser");
	       return mv;
	     }
	     
	     @PostMapping("updateuserprofile")
	     public ModelAndView updateuserprofile(HttpServletRequest request)
	     {
	       ModelAndView mv = new ModelAndView();
	       
	      try
	      {
	    	  
	        int id = Integer.parseInt(request.getParameter("uid"));
	        String name = request.getParameter("uname");
	        String dob = request.getParameter("udob");
	        String password = request.getParameter("upwd");
	        String location = request.getParameter("ulocation");
	        String contact = request.getParameter("ucontact");
	        
	          User user = new User();
	          user.setId(id);
	          user.setName(name);
	          user.setDateofbirth(dob);
	          user.setPassword(password);
	          user.setLocation(location);
	          user.setContact(contact);
	          
	          String msg = userService.updateUserProfile(user);
	          
	          User u = userService.displayUserbyID(id);
	          
	           HttpSession session = request.getSession();
	           session.setAttribute("user",u); 
	         
	         
	          mv.setViewName("updateusersuccess");
	          mv.addObject("message", msg);
	        
	      }
	      catch(Exception e)
	      {
	        mv.setViewName("updateerror");
	        mv.addObject("message", e);
	      }
	        return mv;
	     }
	     
	     @GetMapping("usersessionexpiry")
	     public ModelAndView usersessionexpiry(HttpServletRequest request)
	     {
	       HttpSession session = request.getSession();
	       
	       session.removeAttribute("user");
	       //session.invalidate();  
	       
	       ModelAndView mv = new ModelAndView();
	       mv.setViewName("usersessionexpiry");
	       
	       return mv;
	     }
       
	     @GetMapping("customersupport")
	     public ModelAndView customersupport()
	     {
	       ModelAndView mv = new ModelAndView();
	       mv.setViewName("customersupport");
	       return mv;
	     }
	     
	     @GetMapping("faq")
	     public ModelAndView faq()
	     {
	       ModelAndView mv = new ModelAndView();
	       mv.setViewName("faq");
	       return mv;
	     }
	     
	     @GetMapping("payment")
	     public ModelAndView payment()
	     {
	       ModelAndView mv = new ModelAndView();
	       mv.setViewName("payment");
	       return mv;
	     }
	     
	     @GetMapping("rating")
	     public ModelAndView rating()
	     {
	       ModelAndView mv = new ModelAndView();
	       mv.setViewName("rating");
	       return mv;
	     }
	     
	     @GetMapping("johndoe")
	     public ModelAndView johndoe()
	     {
	       ModelAndView mv = new ModelAndView();
	       mv.setViewName("johndoe");
	       return mv;
	     }
	     
	     @GetMapping("janesmith")
	     public ModelAndView janesmith()
	     {
	       ModelAndView mv = new ModelAndView();
	       mv.setViewName("janesmith");
	       return mv;
	     }
	     @GetMapping("jhonson")
	     public ModelAndView jhonson()
	     {
	       ModelAndView mv = new ModelAndView();
	       mv.setViewName("jhonson");
	       return mv;
	     }
	     
	     @PostMapping("moneypay")
	     public ModelAndView moneypay()
	     {
	       ModelAndView mv = new ModelAndView();
	       mv.setViewName("moneypay");
	       return mv;
	     }
	    
	     @GetMapping("trending")
	     public ModelAndView trending()
	     {
	       ModelAndView mv = new ModelAndView();
	       mv.setViewName("trending");
	       return mv;
	     }
	     
	     @GetMapping("userviewallprofs")
	     public ModelAndView viewallprofs()
	     {
	       ModelAndView mv = new ModelAndView();
	       List<Professional> proflist = userService.userviewAllProfessionals();
	       mv.setViewName("userviewallprofs");
	       mv.addObject("proflist",proflist);
	       return mv;
	     }
	     
	     @GetMapping("/userprofprofile")
	     public ModelAndView userprofprofile(@RequestParam("professionalId") int professionalId) {
	         ModelAndView mv = new ModelAndView();
	         
	         // Assuming you have a service to get the professional by ID
	         Professional professional = professionalService.displayProfessionalbyID(professionalId);
	         
	         mv.addObject("prof", professional); // Add the professional object to the model
	         mv.setViewName("userprofprofile");
	         
	         return mv;
	     }

	     @GetMapping("userpayments")
	     public ModelAndView userpayments()
	     {
	       ModelAndView mv = new ModelAndView();
	       mv.setViewName("userpayments");
	       return mv;
	     }
	     
	     @PostMapping("proftimeselect")
	     public ModelAndView proftimeselect()
	     {
	       ModelAndView mv = new ModelAndView();
	       mv.setViewName("proftimeselect");
	       return mv;
	     }
	     
	     @GetMapping("mailsuccess")
	     public ModelAndView mailsuccess()
	     {
	       ModelAndView mv = new ModelAndView();
	       mv.setViewName("mailsuccess");
	       return mv;
	     }
	     
	    
	     
	     @Autowired
	     private JavaMailSender mailSender;
	     
	     @PostMapping("sendemail")
	     public ModelAndView sendEmail(HttpServletRequest request) throws Exception
	     {
	     String name = request.getParameter("name");
	     String toemail = request.getParameter("email");
	     String subject = request.getParameter("subject");
	     String msg = request.getParameter("message");
	     MimeMessage mimeMessage = mailSender.createMimeMessage();
	     MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true);

	     int otp = (int)(Math.random() * 99999); // random number generation
	     helper.setTo(toemail);
	     helper.setSubject(subject);
	     helper.setFrom("gvsdeepakgutti@gmail.com");
	     String htmlContent =
	     "<h3>Contact Form Details</h3>" +
	     "<p><strong>Name:</strong> " + name + "</p>" +
	     "<p><strong>Email:</strong> " + toemail + "</p>" +
	     "<p><strong>Subject:</strong> " + subject + "</p>" +
	     "<p><strong>Message:</strong> " + msg + "</p>" +
	     "<p><strong>OTP:</strong> " + otp + "</p>";
	     helper.setText(htmlContent, true);
	     mailSender.send(mimeMessage);

	     ModelAndView mv = new ModelAndView("mailsuccess");
	     mv.addObject("message", "Email Sent Successfully");
	     return mv;
	     }
}
