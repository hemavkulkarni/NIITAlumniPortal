package com.DAO;

import java.util.List;

import com.model.Blog;


public interface BlogDAO {
	public List<Blog> getList();
	public void addBlog(Blog blog);
	public void approveBlog(Blog m);
	public void deleteBlog(int blogid);
	public Blog getBlogbyId(int blogid);
	public List<Blog> getListApprove();
}
