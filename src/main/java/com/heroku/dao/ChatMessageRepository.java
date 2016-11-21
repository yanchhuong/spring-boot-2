package com.heroku.dao;

import java.util.List;


import com.heroku.model.ChatMessageModel;


 
public interface ChatMessageRepository {
	void insertChat(ChatMessageModel rec);
	void deletebyId (long id);
	List<ChatMessageModel> loadAll();
    
}