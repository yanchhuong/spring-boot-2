package com.heroku.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import com.heroku.demo.Record;
import com.heroku.service.impl.RecordServiceImpl;

@RestController
@RequestMapping("/records")
public class RecordController{
	 private RecordServiceImpl recordServiceImpl;

	 @Autowired
     public RecordController(RecordServiceImpl recordServiceImpl){
    	 this.recordServiceImpl = recordServiceImpl;
     }
	  @RequestMapping(value="/delete", method=RequestMethod.GET)
	  public String DeleteCustomer(HttpServletRequest request) {
		//  Long id = Long.valueOf(request.getParameter("id"));
		  System.out.println("Test==========================");
		  recordServiceImpl.delete(1);	                 
	      return "Delete sucess!";
	      
	      
	  }
	  
	  @RequestMapping(value="/loadall", method=RequestMethod.GET)
      public List<Record> list(HttpServletRequest request){
			 return recordServiceImpl.showAll();
	  }
	  
}