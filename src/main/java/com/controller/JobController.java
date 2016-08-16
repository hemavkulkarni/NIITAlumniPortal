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
import com.model.JobOpportunity;
import com.service.JobService;


@Controller
public class JobController {
	@Autowired
	JobService jobService;
	
	@RequestMapping(value = "/JobAdd", method = RequestMethod.GET)
	public ModelAndView addJob(@ModelAttribute("command") JobOpportunity jobBean, BindingResult result) {
		// System.out.println("$$$$$$$$$$$$$$$$$$$$");

		ModelAndView model = new ModelAndView("JobAdd");
		model.addObject("job",jobBean);
		// System.out.println("Hello1");
		return model;

	}
	@RequestMapping(value = "/JobSave", method = RequestMethod.POST)

	public ModelAndView saveJob(@ModelAttribute("job") JobOpportunity jobBean, BindingResult result) {
		jobService.addJob(jobBean);
		return new ModelAndView("JobView");
	}

	@RequestMapping("/JobView")
	public ModelAndView viewJob() {
		// System.out.println("in view all");
		List<JobOpportunity> jobList = jobService.getList();
		// System.out.println("end view all");
		return new ModelAndView("JobView", "jobList", jobList);

	}
	@RequestMapping("/admin/JobDelete")
	public String deleteJob(@RequestParam("id") int id) {
		jobService.deleteJob(id);
		return "redirect:/chat/JobView";

	}
	
	 @RequestMapping("/admin/JobEdit")  
	  public ModelAndView editJob(@RequestParam int id, @ModelAttribute JobOpportunity job) {
		 System.out.println("Hello");
	   JobOpportunity jobObject =jobService.getJobbyId(id);
	   System.out.println("Hello1");
	  // System.out.println("EditMovie:"+movieObject.getMoviename());
	   return new ModelAndView("JobEdit", "job", jobObject);  
	  }  
	   
	  @RequestMapping("/admin/updateJob")  
	  public ModelAndView updateJob(@ModelAttribute("job") JobOpportunity job,BindingResult result) 
	  {   
		  jobService.editJob(job);
		  return new ModelAndView("redirect:/chat/JobView");  

	 }
	  


	@RequestMapping("/JobViewRecord")
	public ModelAndView getRecord(@RequestParam int id, @ModelAttribute JobOpportunity job) {
		JobOpportunity jobObject = jobService.getJobbyId(id);
		System.out.println("Hello");
		return new ModelAndView("JobViewRecord", "jobObject", jobObject);
	}

}
