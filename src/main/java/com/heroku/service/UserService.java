package com.heroku.service;

import com.heroku.model.UserDetailBean;

public interface UserService {

	boolean  insertRole(UserDetailBean user);
    boolean  insertUserLog(UserDetailBean user);
    boolean  insertUserDetail(UserDetailBean user);

}
