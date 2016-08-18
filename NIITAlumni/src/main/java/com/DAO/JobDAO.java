package com.DAO;

import java.util.List;

import com.model.JobOpportunity;

public interface JobDAO {
	public List<JobOpportunity> getList();
	public void addJob(JobOpportunity job);
	public void editJob(JobOpportunity job);
	public void deleteJob(int id);
	public JobOpportunity getJobbyId(int id);

}
