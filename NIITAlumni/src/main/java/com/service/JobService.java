package com.service;

import java.util.List;

import com.model.JobOpportunity;
import com.model.UserLogin;

public interface JobService {
	public List<JobOpportunity> getList();
	public void addJob(JobOpportunity job);
	public void editJob(JobOpportunity job);
	public void deleteJob(int id);
	public JobOpportunity getJobbyId(int id);
}
