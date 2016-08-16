package com.DAO;

import java.util.List;

import com.model.UserLogin;


public interface UserDao {

	public List<UserLogin> getList();
	public void addUser(UserLogin p);
	public void updateUser(UserLogin p);
	public void deleteUser(int userid);
	public UserLogin getUserbyId(int userid);

	
}
