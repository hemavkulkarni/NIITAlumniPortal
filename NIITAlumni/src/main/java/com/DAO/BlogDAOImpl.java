package com.DAO;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Blog;

@Repository
public class BlogDAOImpl implements BlogDAO
{
	@Autowired
    SessionFactory sessionFactory;
	@Transactional
	public List<Blog> getList() 
	{
		Session session = sessionFactory.openSession();  
		  @SuppressWarnings("unchecked")  
		  List<Blog> blogList = session.createQuery("from Blog  where status='Approve'") .list();  
		  session.close();  
		  return blogList;  
	}

	@Transactional
	public void addBlog(Blog blog) {
		Session session=sessionFactory.openSession();
	//	session.createQuery("insert into Blog(blogtitle,blogdesc,status) values("+blog.getBlogtitle()+","+blog.getBlogdesc()+",Pending)");
			blog.setBlogid(blog.getBlogid());
			blog.setBlogtitle(blog.getBlogtitle());
			blog.setBlogdesc(blog.getBlogdesc());
			blog.setStatus("Pending");
			
	        session.saveOrUpdate(blog);
	  
	        session.flush();
	        session.close();
		
	}

	@Transactional
	public void approveBlog(Blog blog) {
		System.out.println("Hello");
		Session session=sessionFactory.openSession();
		//System.out.println("Hello1");
		
		blog.setBlogid(blog.getBlogid());
		blog.setBlogtitle(blog.getBlogtitle());
		blog.setBlogdesc(blog.getBlogdesc());
		blog.setStatus("Approve");
		
        session.saveOrUpdate(blog);
  
	        
	        session.flush();
	        session.close();
	}

	@Transactional
	public void deleteBlog(int blogid) {
		sessionFactory.openSession().createQuery("DELETE FROM Blog WHERE blogid = "+blogid).executeUpdate();  
		
		
	}

	@Transactional
	public Blog getBlogbyId(int blogid) {
		Session session = sessionFactory.openSession();  
		  Blog blog = (Blog) session.load(Blog.class, blogid);  
		  return blog;
	}


	@Transactional
	public List<Blog> getListApprove() {
		Session session = sessionFactory.openSession();  
		  @SuppressWarnings("unchecked")  
		  List<Blog> blogList = session.createQuery("from Blog where status='Pending'") .list();  
		  session.close();  
		  return blogList; 
	}
	
}
