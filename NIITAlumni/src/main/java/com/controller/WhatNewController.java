package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.WhatNew;
import com.service.WhatNewService;

@Controller
public class WhatNewController {
	@Autowired
	WhatNewService newService;
	@RequestMapping(value = "/WhatNewAdd", method = RequestMethod.GET)
	public ModelAndView addWhatNew(@ModelAttribute("command") WhatNew newBean, BindingResult result) {
		System.out.println("$$$$$$$$$$$$$$$$$$$$");

		ModelAndView model = new ModelAndView("WhatNewAdd");
		model.addObject("wnew", newBean);
		 System.out.println("Hello1");
		return model;

	}

	@RequestMapping(value = "/WhatNewSave", method = RequestMethod.POST)

	public ModelAndView saveWhatNew(@ModelAttribute("wnew") WhatNew newBean, BindingResult result) {
		newService.addWhatNew(newBean);
		return new ModelAndView("WhatNewView");
	}

	@RequestMapping("/WhatNewView")
	public ModelAndView viewBulletine() {
		// System.out.println("in view all");
		List<WhatNew> newList = newService.getList();
		// System.out.println("end view all");
		return new ModelAndView("WhatNewView", "newList",newList);

	}

	@RequestMapping("/admin/WhatNewDelete")
	public String deleteBulletine(@RequestParam("whatnewid") int id) {
		newService.deleteWhatNew(id);
		return "redirect:/chat/WhatNewView";

	}
	
	 @RequestMapping("/admin/WhatNewEdit")  
	  public ModelAndView editBulletine(@RequestParam int id, @ModelAttribute WhatNew bul) {
		 System.out.println("Hello");
		 WhatNew newObject =newService.getWhatNewbyId(id);
	   System.out.println("Hello1");
	  // System.out.println("EditMovie:"+movieObject.getMoviename());
	   return new ModelAndView("WhatNewEdit", "wnew", newObject);  
	  }  
	   
	  @RequestMapping("/admin/updateWhatNew")  
	  public ModelAndView updateWhatNew(@ModelAttribute("wnew") WhatNew wnew,BindingResult result) 
	  {   
		  newService.editWhatNew(wnew);
		  return new ModelAndView("redirect:/chat/WhatNewView");  

	 }
	  


	@RequestMapping("/WhatNewViewRecord")
	public ModelAndView getRecord(@RequestParam int id, @ModelAttribute WhatNew bul) {
		WhatNew newObject = newService.getWhatNewbyId(id);
		System.out.println("Hello");
		return new ModelAndView("WhatNewViewRecord", "newObject", newObject);
	}

}
