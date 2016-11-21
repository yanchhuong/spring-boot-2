package com.heroku.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.heroku.model.ChatMessageModel;
import com.heroku.service.ChatService;
import com.heroku.dao.ChatMessageRepository;
 
import java.util.Date;
import java.util.List;
 
/**
 * @author huseyinbabal
 */
 
@Controller
public class ChatMessageController {
 
   /* @Autowired*/
    ChatService chatService;
 
/*    @RequestMapping("/loginchat")
    public String login() {
        return "loginChat";
    }*/
 
    @RequestMapping("/chatform")
    public String chat() {
        return "chatform";
    }
 
    @RequestMapping(value = "/messages", method = RequestMethod.POST)
    @MessageMapping("/newMessage")
    @SendTo("/topic/newMessage")
    public String save(ChatMessageModel chatMessageModel) {
        ChatMessageModel chatMessage = new ChatMessageModel(chatMessageModel.getText(), chatMessageModel.getAuthor(), new Date());
        chatService.insertChat(chatMessage);
        List<ChatMessageModel> chatMessageModelList = (List<ChatMessageModel>) chatService.ListChat();
        return chatMessageModelList.toString();
    }
 
    @RequestMapping(value = "/messages", method = RequestMethod.GET)
    public HttpEntity list() {
    /*    List<ChatMessageModel> chatMessageModelList = chatMessageRepository.findAll(new PageRequest(0, 5, Sort.Direction.DESC, "createDate")).getContent();*/
    	List<ChatMessageModel> chatMessageModelList = chatService.ListChat();
    	return new ResponseEntity(chatMessageModelList, HttpStatus.OK);
    }
}