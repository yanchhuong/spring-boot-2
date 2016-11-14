package com.heroku.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.heroku.service.impl.RecordServiceImpl;



@RestController
@RequestMapping("/customer")
public class RecordController{
	   private RecordServiceImpl recordServiceImpl;

	 @Autowired
     public RecordController(RecordServiceImpl recordServiceImpl){
    	 this.recordServiceImpl = recordServiceImpl;
     }

	  @RequestMapping(value="/delete", method=RequestMethod.POST)
	  public String DeleteCustomer(HttpServletRequest request) {
		  Long id = Long.valueOf(request.getParameter("id"));
		  recordServiceImpl.delete(id);	                 
	      return "Delete sucess!";
	   }
	  

	
}