package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.model.Forum;
import com.service.ForumService;

@Controller
public class ForumController {
	@Autowired
	private ForumService fservice;

	@RequestMapping("/Forum")
	public String createBlog(HttpServletRequest request,Model model)
	{
		String name=request.getParameter("forum");
		model.addAttribute("name",name);
		System.out.println("In Forum Controller");
		return "Forum";
	}
	@ModelAttribute("forum")
	public Forum returnObject()
	{
		return new Forum();
	}
	@RequestMapping("/postF")
	public String postblog(@ModelAttribute("forum") Forum forum , Model model) throws IOException
	{
		System.out.println("I am in Forum");	
		//forum.setForumUserName("bhagyashree");
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		  if (!(auth instanceof AnonymousAuthenticationToken)) {
			UserDetails userDetail = (UserDetails) auth.getPrincipal();
			forum.setForumUserName(userDetail.getUsername());
		  }
		forum.setCreationdatetime(new java.util.Date());	
		fservice.createNewForum(forum);	
		return "Forum";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/GsonCon1")
	public @ResponseBody String getValues() throws Exception
	{
		List<Forum> flist;
		String result="";
		flist = fservice.getForum();
		Gson gson = new Gson();
		result = gson.toJson(flist);
		System.out.println("before flist");
		System.out.println(flist);
		return result;
	}
	@RequestMapping("/ForumView")
	public ModelAndView getRecord(@RequestParam int forumid, @ModelAttribute Forum forum) 
	{
		Forum fObject = fservice.getForumbyId(forumid);
		System.out.println("Hello");
		return new ModelAndView("ForumView", "fObject", fObject);
	}
	
	@RequestMapping("/Comment")
	public String viewComment() 
	{
		return "ViewComment";
	}
	
}
