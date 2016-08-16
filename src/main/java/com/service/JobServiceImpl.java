package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.DAO.JobDAO;
import com.model.JobOpportunity;


@Service
public class JobServiceImpl implements JobService
{
	@Autowired
	JobDAO jobDao;

	@Override
	public List<JobOpportunity> getList() {
		
		return jobDao.getList();
	}

	@Override
	public void addJob(JobOpportunity job) {
		jobDao.addJob(job);
	}

	@Override
	public void editJob(JobOpportunity job) {
		jobDao.editJob(job);
	}

	@Override
	public void deleteJob(int id) {
	jobDao.deleteJob(id);
	}

	@Override
	public JobOpportunity getJobbyId(int id) {
		return jobDao.getJobbyId(id);
	}
	
}
