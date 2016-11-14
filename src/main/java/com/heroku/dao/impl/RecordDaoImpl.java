package com.heroku.dao.impl;

import javax.annotation.PostConstruct;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.heroku.dao.RecordDao;

public class RecordDaoImpl extends JdbcDaoSupport implements RecordDao{

	
	 @Autowired
	 DataSource dataSource;
	  
	 @PostConstruct
	 private void initialize(){
	        setDataSource(dataSource);
	 }
	    //...

	@Override
	public void deletebyId(long id) {
		// TODO Auto-generated method stub
		
	}
	 

	
}
