package com.heroku.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.heroku.dao.UsersDao;
import com.heroku.model.UserDetailBean;
import com.heroku.service.UserService;

@Service 
public class UserServiceImpl implements UserService{

	@Autowired
    UsersDao userDao;
	
	@Override
	public boolean insertRole(UserDetailBean user) {
		userDao.insertRole(user);
		return true;
	}

	@Override
	public boolean insertUserLog(UserDetailBean user) {
		userDao.insertUserLog(user);
		return true;
	}

	@Override
	public boolean insertUserDetail(UserDetailBean user) {
		userDao.insertUserDetail(user);
		return true;
		
	}

}
