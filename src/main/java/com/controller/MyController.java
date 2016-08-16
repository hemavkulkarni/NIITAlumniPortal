package com.controller;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.UserService;

@Controller
public class MyController {
	@Autowired
	ServletContext req;

	@Autowired
	UserService uservice;

	@RequestMapping("/")
	public String home() {
		return "Home";
	}
	@RequestMapping("/Login")
	public String login() {
		return "Login";
	}

	@RequestMapping("/index")
	public String Index() {
		return "index";
	}

	@RequestMapping("/MyProfile")
	public String profile() {
		return ("MyProfile");
	}

	@RequestMapping("/About")
	public String aboutus() {
		return ("About");
	}

	@RequestMapping("/JoinUs")
	public String joinus() {
		return ("JoinUs");
	}

	@RequestMapping("/GetInfo")
	public String getinfo() {
		return ("GetInfo");
	}

	@RequestMapping("/Engage")
	public String engage() {
		return ("Engage");
	}

	@RequestMapping("/Benefits")
	public String benefits() {
		return ("Benefits");
	}

}
