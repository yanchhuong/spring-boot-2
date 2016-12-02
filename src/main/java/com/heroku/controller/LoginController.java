package com.heroku.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.heroku.demo.Record;
import com.heroku.model.UserDetailBean;
import com.heroku.service.UserService;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
@Controller
public class LoginController  {
	
    UserService userService;
    
	 @Autowired
    LoginController( UserService userService){
       this.userService=userService;
    }
    
	
	@RequestMapping(value = "/login",method = RequestMethod.GET)
	public String showForm(ModelMap model,HttpServletRequest request) {
		
		return "login";
	}
	@RequestMapping(value = "/sign_up",method = RequestMethod.POST)
	public void insertData(ModelMap model,HttpServletRequest request) {
		
		
		System.out.println(request.getParameter("email") +request.getParameter("password") );
		
		UserDetailBean record=new UserDetailBean();
		record.setFirst(request.getParameter("firstname")); 
		record.setLast(request.getParameter("lastname"));
		record.setUsername(request.getParameter("email"));
		record.setPassword(request.getParameter("password"));
        record.setEmail(request.getParameter("email"));
        record.setEnable(true);
        record.setUserCd(userCd());
	        	if(userService.insertUserLog(record)){
	        	      userService.insertRole(record);
	        		  userService.insertUserLog(record);
	        	};
	       
	       
	  }
	
	@RequestMapping(value = "/home",method = RequestMethod.GET)
	public String home(
			ModelMap model,HttpServletRequest request,RedirectAttributes redir) {

		final String obj = 	SecurityContextHolder.getContext().getAuthentication().getPrincipal().toString();
	
		
		System.out.println( "++++++"   +obj);
		return "home";
	}

	@RequestMapping(value = "/chatting",method = RequestMethod.GET)
	public String error(
			ModelMap model,HttpServletRequest request,RedirectAttributes redir) {
		return "index";
	}
	
	public String userCd(){
		Random r = new Random(System.currentTimeMillis());
	    int pick = 100000000 + r.nextInt(200000000);
	    System.out.println(pick);
		return ""+pick;
		
	}
	
	
}