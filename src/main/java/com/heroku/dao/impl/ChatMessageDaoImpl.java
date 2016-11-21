package com.heroku.dao.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.heroku.dao.ChatMessageRepository;
import com.heroku.demo.Record;
import com.heroku.model.ChatMessageModel;

@Repository
public class ChatMessageDaoImpl extends JdbcDaoSupport implements ChatMessageRepository{
	
	@Autowired
	protected DataSource dataSource;
	 
	 @PostConstruct
	 private void initialize(){
	        setDataSource(dataSource);
	 }
	@Override
	public void insertChat(ChatMessageModel rec) {
		String sql = "INSERT INTO record " +"(text,author) VALUES (?,?)" ;
        this.getJdbcTemplate().update(sql, new Object[]{rec.getAuthor(),rec.getText()});
		
	}

	@Override
	public void deletebyId(long id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ChatMessageModel> loadAll() {
		   String sql = "SELECT id,data FROM chatmessage";
		    List< Map < String, Object>> rows = this.getJdbcTemplate().queryForList(sql);
		 
		    List<ChatMessageModel> result = new ArrayList<ChatMessageModel>();
		    for(Map <String, Object> row:rows){
		    	ChatMessageModel rec = new ChatMessageModel();
		    	rec.setAuthor((String)row.get("author"));
		        rec.setText((String)row.get("date"));
		        result.add(rec);
		    }
		    return result;
	}

	
}
