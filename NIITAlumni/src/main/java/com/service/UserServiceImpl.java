package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.DAO.UserDao;
import com.model.UserLogin;
@Service
public class UserServiceImpl implements UserService{

	 @Autowired
	 UserDao userDao;
	public UserServiceImpl()  {
		// TODO Auto-generated constructor stub
	}

	public List<UserLogin> getList() {
		
		return userDao.getList();
	}


	public void addUser(UserLogin p) {
		// TODO Auto-generated method stub
		userDao.addUser(p);
	}


	public void updateUser(UserLogin p) {
		userDao.updateUser(p);
	}

	
	public void deleteUser(int userid) {
		// TODO Auto-generated method stub
		userDao.deleteUser(userid);
	}


	public UserLogin getUserbyId(int userid) {
		// TODO Auto-generated method stub
		return userDao.getUserbyId(userid);
	}

}
