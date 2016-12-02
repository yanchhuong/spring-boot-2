package com.heroku.dao.impl;

import javax.annotation.PostConstruct;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.heroku.dao.UsersDao;
import com.heroku.model.UserDetailBean;

@Repository
public class UsersDaoImpl extends JdbcDaoSupport implements UsersDao{

	@Autowired
	protected DataSource dataSource;
	 
	 @PostConstruct
	 private void initialize(){
	        setDataSource(dataSource);
	 }
	    //...
	
	@Override
	public void insertRole(UserDetailBean user) {
		String sql = "INSERT INTO USER_ROLES " +"(username,role,user_cd) VALUES (?,?,?)" ;
        this.getJdbcTemplate().update(sql, new Object[]{user.getUsername(),user.getRole(),user.getUserCd()});
		
	}
	@Override
	public void insertUserLog(UserDetailBean user) {
		String sql = "INSERT INTO USERS " +"(user_cd,username,password) VALUES (?,?,?)" ;
        this.getJdbcTemplate().update(sql, new Object[]{user.getUserCd(),user.getUsername(),user.getPassword()});
        
        
		
	}
	@Override
	public void insertUserDetail(UserDetailBean user) {
		String sql = "INSERT INTO USER_DETAIL " +"(regdate,username_fk,email,user_cd,) VALUES (?,?,?,?)" ;
        this.getJdbcTemplate().update(sql, new Object[]{user.getRegisterDate(),user.getUsername(),user.getEmail(),user.getUserCd()});
		
	}
	
	
	



}
