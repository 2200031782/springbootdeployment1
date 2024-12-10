package com.klef.jfsd.sdpproject.controller;

import java.util.Date;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.sdpproject.model.Admin;
import com.klef.jfsd.sdpproject.model.Message;
import com.klef.jfsd.sdpproject.model.Professional;
import com.klef.jfsd.sdpproject.model.User;
import com.klef.jfsd.sdpproject.repository.MessageRepository;
import com.klef.jfsd.sdpproject.service.AdminService;
import com.klef.jfsd.sdpproject.service.MessageService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController
{
	 @Autowired 
     private AdminService adminService;
  
	 @Autowired
	  private MessageService messageService;

	    
	     @Autowired
	    private MessageRepository messageRepository;

	     // This method will return messages as JSON (AJAX-friendly for frontend)
	     @PostMapping("submitMessage")
	     @ResponseBody 
	     public String handleMessage(@RequestParam("name") String name,
	                                 @RequestParam("email") String email,
	                                 @RequestParam("message") String content) {

	         // Create a new Message object
	         Message message = new Message();
	         
	         // Set the fields for the message
	         message.setName(name);
	         message.setEmail(email);
	         message.setContent(content);
	         message.setReadStatus(false); // Set as unread by default
	         
	         // Set the timestamp to the current time
	         message.setTimestamp(new Date());  // Ensure timestamp is set to current time
	         
	         // Save the message to the database
	         messageRepository.save(message); 

	         return "Message sent successfully!";
	     }

  @GetMapping("adminhome")
  public ModelAndView adminhome()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("adminhome");
    
    long count=  adminService.professionalcount();
    mv.addObject("profcount", count);
    
    long count1=  adminService.usercount();
    mv.addObject("usercount", count1);
    
    return mv;
  }
  
  @GetMapping("adminlogin")
  public ModelAndView adminlogin()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("adminlogin");
    
    return mv;
  }
  
  @PostMapping("checkadminlogin")
  //@ResponseBody
  public ModelAndView checkadminlogin(HttpServletRequest request)
  {
    ModelAndView mv = new ModelAndView();
    
       String auname = request.getParameter("auname");
       String apwd = request.getParameter("apwd");
       
       long count=  adminService.professionalcount();
       mv.addObject("professionalcount", count);
       
       long count1=  adminService.usercount();
       mv.addObject("usercount", count1);
     
       
       
      Admin admin =  adminService.checkadminlogin(auname, apwd);
      
      if(admin!=null)
      {
        
        mv.setViewName("adminhome");
        
      }
      else
      {
       
        mv.setViewName("adminloginfail");
        mv.addObject("message","Login Failed");
      }
      return mv;
  }
  
  @GetMapping("viewallusers")
    public ModelAndView viewallusers()
    {
      ModelAndView mv = new ModelAndView();
      List<User> userlist = adminService.viewAllUsers();
      mv.setViewName("viewallusers");
      mv.addObject("userlist",userlist);
      
      long count1=  adminService.usercount();
      mv.addObject("usercount", count1);
      
      return mv;
    }
  
  @GetMapping("viewallprofs")
  public ModelAndView viewallprofs()
  {
    ModelAndView mv = new ModelAndView();
    List<Professional> proflist = adminService.viewAllProfessionals();
    mv.setViewName("viewallprofs");
    mv.addObject("proflist",proflist);
    
    long count=  adminService.professionalcount();
    mv.addObject("profcount", count);
    
    return mv;
  }
  
  @GetMapping("deleteuser")
  public ModelAndView deleteuser()
  {
    ModelAndView mv = new ModelAndView();
    List<User> userlist = adminService.viewAllUsers();
    mv.setViewName("deleteuser");
    mv.addObject("userlist",userlist);
    return mv;
  }
  
  @GetMapping("deleteprof")
  public ModelAndView deleteprof()
  {
    ModelAndView mv = new ModelAndView();
    List<Professional> proflist = adminService.viewAllProfessionals();
    mv.setViewName("deleteprof");
    mv.addObject("proflist",proflist);
    return mv;
  }
  
  @GetMapping("updateprofstatus")
  public ModelAndView updateprofstatus()
  {
    ModelAndView mv = new ModelAndView();
    List<Professional> proflist = adminService.viewAllProfessionals();
    mv.setViewName("updateprofstatus");
    mv.addObject("proflist",proflist);
    return mv;
  }
  
  @GetMapping("updatestatus")
  public String updatestatus(@RequestParam("id") int pid,@RequestParam("status") String status)
  {
	  adminService.updateprofressionalstatus(status, pid);
	  return "redirect:/updateprofstatus";
  }
  
  @GetMapping("delete")
  public String deleteoperation(@RequestParam("id") int uid)
  {
    adminService.deleteuser(uid);
    
    return "redirect:/deleteuser"; 
  }
  @GetMapping("deletep")
  public String deleteoperation1(@RequestParam("id") int pid)
  {
    adminService.deleteprofessional(pid);
    
    return "redirect:/deleteprof"; 
  }
  
  @GetMapping("adminlogout")
  public ModelAndView adminlogout()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("adminlogin");
    
    return mv;
  }
  
  @GetMapping("notification")
  public ModelAndView notification()
  {
	  ModelAndView mv = new ModelAndView();
	    
	    // Fetch the list of messages from the repository
	    List<Message> messages = messageRepository.findAll();
	    
	    // Add the messages to the model
	    mv.addObject("messages", messages);
	    
	    // Set the view name (ensure this matches the name of your JSP or HTML page)
	    mv.setViewName("notification");
	    
	    return mv;
  }
  
  
}
