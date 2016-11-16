package com.heroku.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
@Controller
public class LoginController  {

	@RequestMapping(value = "/login",method = RequestMethod.GET)
	public String showForm(ModelMap model,HttpServletRequest request) {
		
		return "login";
	}
	
	@RequestMapping(value = "/home",method = RequestMethod.GET)
	public String home(
			ModelMap model,HttpServletRequest request,RedirectAttributes redir) {
		final String currentUser = SecurityContextHolder.getContext().getAuthentication().getName();
		final String obj = SecurityContextHolder.getContext().getAuthentication().getPrincipal().toString();
		
		System.out.println(currentUser + "++++++"   +obj);
		return "home";
	}
	@RequestMapping(value = "/hello",method = RequestMethod.GET)
	public String hello(
			ModelMap model,HttpServletRequest request,RedirectAttributes redir) {
		return "hello";
	}
	@RequestMapping(value = "/403",method = RequestMethod.GET)
	public String error(
			ModelMap model,HttpServletRequest request,RedirectAttributes redir) {
		return "403";
	}
}