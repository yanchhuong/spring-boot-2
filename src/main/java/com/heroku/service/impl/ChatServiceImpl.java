package com.heroku.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.heroku.dao.ChatMessageRepository;

import com.heroku.model.ChatMessageModel;
import com.heroku.service.ChatService;

@Service
public class ChatServiceImpl  implements ChatService{
	@Autowired ChatMessageRepository chatMessageRepository ;
	
	@Override
	public void insertChat(ChatMessageModel rec) {
		chatMessageRepository.insertChat(rec);
		
	}

	@Override
	public void deletebyId(long id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ChatMessageModel> ListChat() {
		// TODO Auto-generated method stub
		return chatMessageRepository.loadAll();
	}

	

}
