package com.controller;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.UserLogin;
import com.service.UserService;

@Controller
public class UserController {
	 @Autowired
	 UserService userService;
		@Autowired
		  ServletContext req;
	  
	  @RequestMapping(value="/saveUser", method=RequestMethod.POST)
	  public String addUser(@Valid @ModelAttribute("userData") UserLogin reg,BindingResult result)
	  {		
		  if(result.hasErrors())
		  {
			return "Register";  
		  }
		  else
		  {
			  String p=req.getRealPath("/");
			  String path=reg.getFilePath(p,req.getContextPath());
			  userService.addUser(reg);
		  }
		  return "index";
	  }
		
	  @RequestMapping("/Register")
	  public ModelAndView register()
	  {
		  UserLogin register=getUserObject();
		
		  ModelAndView model=new ModelAndView("Register");
		 
		  model.addObject("userData", register);
		
		  return model;
	  }
	  @ModelAttribute("userData")
	  public UserLogin getUserObject()
	  {
		  return new UserLogin();
	  }
	  
	  
	  @RequestMapping(value="/Logout", method = RequestMethod.GET)
	  public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
	      Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	      if (auth != null){    
	          new SecurityContextLogoutHandler().logout(request, response, auth);
	      }
	      return "Home";//You can redirect wherever you want, but generally it's a good practice to show login screen again.
	  }
}
