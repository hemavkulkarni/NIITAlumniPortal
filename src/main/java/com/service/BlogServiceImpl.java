package com.service;

import java.util.List;
import java.util.concurrent.BlockingQueue;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.DAO.BlogDAO;
import com.model.Blog;

@Service
public class BlogServiceImpl implements BlogService
{
	@Autowired
	BlogDAO blogDao;
	@Transactional
	
	public List<Blog> getList() {
		// TODO Auto-generated method stub
		return blogDao.getList();
	}

	@Override
	public void addBlog(Blog b) {
		// TODO Auto-generated method stub
		blogDao.addBlog(b);
	}

	@Override
	public void approveBlog(Blog m) {
		blogDao.approveBlog(m);
	}

	@Override
	public void deleteBlog(int blogid) {
		// TODO Auto-generated method stub
		blogDao.deleteBlog(blogid);
	}

	@Override
	public Blog getBlogbyId(int blogid) {
		// TODO Auto-generated method stub
		return blogDao.getBlogbyId(blogid); 
	}

	@Override
	public List<Blog> getListApprove() {
		// TODO Auto-generated method stub
		return blogDao.getListApprove();
	}
	

}
