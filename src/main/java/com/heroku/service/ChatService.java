package com.heroku.service;

import java.util.List;

import com.heroku.model.ChatMessageModel;

public interface ChatService {

	void insertChat(ChatMessageModel rec);
	void deletebyId (long id);
	List<ChatMessageModel> ListChat();

}
