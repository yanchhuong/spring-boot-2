package com.heroku.chat;

import java.util.Set;

import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.scheduling.annotation.Scheduled;

import com.heroku.service.impl.ActiveUserService;

public class ActiveUserPinger {

  private SimpMessagingTemplate template;
  private ActiveUserService activeUserService;

  public ActiveUserPinger(SimpMessagingTemplate template, ActiveUserService activeUserService) {
    this.template = template;
    this.activeUserService = activeUserService;
  }
  
  @Scheduled(fixedDelay = 2000)
  public void pingUsers() {
	  
	 String data="{\"name\":\"mkyong\",\"age\":35,\"position\":\"Founder\",\"salary\":10000,\"skills\":[\"java\",\"python\",\"shell\"]}";
    Set<String> activeUsers = activeUserService.getActiveUsers();
    
    template.convertAndSend("/topic/active", data);
  }

}