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

import com.model.Bulletine;
import com.service.BulletineService;

@Controller
public class BulletineController {
	@Autowired
	BulletineService bulService;

	@RequestMapping(value = "/BulletineAdd", method = RequestMethod.GET)
	public ModelAndView addBulletine(@ModelAttribute("command") Bulletine bulBean, BindingResult result) {
		// System.out.println("$$$$$$$$$$$$$$$$$$$$");

		ModelAndView model = new ModelAndView("BulletineAdd");
		model.addObject("bul", bulBean);
		// System.out.println("Hello1");
		return model;

	}

	@RequestMapping(value = "/BulletineSave", method = RequestMethod.POST)

	public ModelAndView saveBulletine(@ModelAttribute("bul") Bulletine bulBean, BindingResult result) {
		bulService.addBulletine(bulBean);
		return new ModelAndView("BulletineView");
	}

	@RequestMapping("/BulletineView")
	public ModelAndView viewBulletine() {
		// System.out.println("in view all");
		List<Bulletine> bulList = bulService.getList();
		// System.out.println("end view all");
		return new ModelAndView("BulletineView", "bulList", bulList);

	}

	@RequestMapping("/admin/BulletineDelete")
	public String deleteBulletine(@RequestParam("id") int id) {
		bulService.deleteBulletine(id);
		return "redirect:/chat/BulletineView";

	}
	
	 @RequestMapping("/admin/BulletineEdit")  
	  public ModelAndView editBulletine(@RequestParam int id, @ModelAttribute Bulletine bul) {
		 System.out.println("Hello");
	   Bulletine bulObject =bulService.getBulletinebyId(id);
	   System.out.println("Hello1");
	  // System.out.println("EditMovie:"+movieObject.getMoviename());
	   return new ModelAndView("BulletineEdit", "bul", bulObject);  
	  }  
	   
	  @RequestMapping("/admin/updateBulletine")  
	  public ModelAndView updateBulletine(@ModelAttribute("bul") Bulletine bul,BindingResult result) 
	  {   
		  bulService.editBulletine(bul);
		  return new ModelAndView("redirect:/chat/BulletineView");  

	 }
	  


	@RequestMapping("/BulletineViewRecord")
	public ModelAndView getRecord(@RequestParam int id, @ModelAttribute Bulletine bul) {
		Bulletine bulObject = bulService.getBulletinebyId(id);
		System.out.println("Hello");
		return new ModelAndView("BulletineViewRecord", "bulObject", bulObject);
	}

}
