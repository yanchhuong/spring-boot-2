package com.heroku.controller;

import com.heroku.dao.UsersInfmDao;
import com.heroku.model.UserInfmBean;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

@Controller
public class LoginController  {
	private static Logger LOGGER =  LoggerFactory.getLogger(LoginController.class);

	private final  PasswordEncoder passwordEncoder;

	private final  AuthenticationManager authenticationManager;

	private  UsersInfmDao repository;
	@Autowired
	public LoginController(AuthenticationManager authenticationManager,PasswordEncoder passwordEncoder,UsersInfmDao repository) {
		this.authenticationManager = authenticationManager;
		this.passwordEncoder = passwordEncoder;
		this.repository = repository;
	}

	@GetMapping(value = "/login")
	public String showForm(ModelMap model, HttpServletRequest request) {
		LOGGER.info("/login",request);
		return "login";
	}
	// Handle the login form submission
	@PostMapping("/login")
	public String login(@RequestBody Map<String, String> credentials, Model model, HttpSession session) {
		try {
			String username = credentials.get("username");
			String password = credentials.get("password");
			// Manually authenticate the user using the AuthenticationManager
			Authentication authentication = authenticationManager.authenticate(
					new UsernamePasswordAuthenticationToken(username, password)
			);

			// Set authentication in the SecurityContext (this is automatically stored in the session)
			SecurityContextHolder.getContext().setAuthentication(authentication);


			UserInfmBean user =  null ;//repository.findById(username);
			if (user == null) {
				user = repository.findByTel(username);
			}
			if (user != null) {
				// Store the user object in the session
				session.setAttribute("USER_INFM", user);
			}
			// Handle successful login (redirect or load a different page)
			return "redirect:/admin/post"; // Redirect to default

		} catch (AuthenticationException e) {
			// Handle login failure
			model.addAttribute("error", "Invalid username or password");
			return "login"; // Stay on the login page and show the error message
		}
	}

	@PostMapping("/register")
	public String register(@ModelAttribute UserInfmBean user, BindingResult bindingResult, Model model) {
		// Check if the user already exists, handle that logic if needed
		if (bindingResult.hasErrors()) {
			return "register";  // Show errors if there are any validation errors
		}

		// Encrypt the user's password before saving
		String encodedPassword = passwordEncoder.encode(user.getUserPw());
		user.setUserPw(encodedPassword);

		// Save the user to the database
		repository.save(user);

		model.addAttribute("success", "Registration successful!");
		return "login";
	}

}