package com.heroku.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.heroku.dao.RecordDao;
import com.heroku.demo.Record;
import com.heroku.service.RecordService;

public class RecordServiceImpl implements RecordService{
	 @Autowired RecordDao recordDao;
	@Override
	public void delete(long id) {
		recordDao.deletebyId(id);	
	}
	@Override
	public List<Record> showAll() {
		
		return recordDao.loadAll();
		
	}
}
