package com.heroku.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.heroku.dao.RecordDao;
import com.heroku.service.RecordService;

public class RecordServiceImpl implements RecordService{
	 @Autowired RecordDao recordDao;
	@Override
	public void delete(long id) {
		recordDao.deletebyId(id);	
	}
}
