package com.DAO;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.model.JobOpportunity;

@Repository
public class JobDAOImpl implements JobDAO
{

	@Autowired
	SessionFactory sessionFactory;
	@Transactional
	public List<JobOpportunity> getList() {
		Session session = sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<JobOpportunity> jobList = session.createQuery("from JobOpportunity").list();
		session.close();
		return jobList;
	}

	@Transactional
	public void addJob(JobOpportunity job) {
		Session session = sessionFactory.openSession();	
		session.saveOrUpdate(job);
		session.flush();
		session.close();
		
		
	}

	@Transactional
	public void editJob(JobOpportunity job) {
		Session session = sessionFactory.openSession();
		session.saveOrUpdate(job);

		session.flush();
		session.close();
	}

	@Transactional
	public void deleteJob(int id) {
		sessionFactory.openSession().createQuery("DELETE FROM JobOpportunity WHERE id = " + id).executeUpdate();
	}

	@Transactional
	public JobOpportunity getJobbyId(int id) {
		Session session = sessionFactory.openSession();
		JobOpportunity job = (JobOpportunity) session.load(JobOpportunity.class, id);
		return job;
	}

}
