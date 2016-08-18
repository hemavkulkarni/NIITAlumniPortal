package com.service;

import java.util.*;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.DAO.*;
import com.model.Forum;

@Service
public class ForumServiceImpl implements ForumService
{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	ForumDaoInterface forumdao;

	public ForumServiceImpl(){}
	
	public ForumServiceImpl(SessionFactory sf){
		this.sessionFactory=sf;
	}
	
	public void createNewForum(Forum f) {
		forumdao.createNewForum(f);	
	}

	public List<Forum> getForumList(String UserName) {
		return forumdao.getForumList(UserName);		
	}

	public void delete(int fid) {
		forumdao.delete(fid);
		
	}
	
	public List<Forum> getForum()
	{
		System.out.println("I am in forum service");
		return forumdao.getForum();
	}

	public Forum getForumbyId(int forumid) {
		// TODO Auto-generated method stub
		return forumdao.getForumbyId(forumid);
	}

}
