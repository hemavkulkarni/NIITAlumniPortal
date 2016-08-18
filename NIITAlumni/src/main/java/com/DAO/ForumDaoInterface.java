package com.DAO;

import java.util.*;

import com.model.Forum;
	
public interface ForumDaoInterface
{
	public void createNewForum(Forum f);
	public List<Forum> getForumList(String UserName);
	public void delete(int fid);
	public List<Forum> getForum();
	public Forum getForumbyId(int forumid);
}
