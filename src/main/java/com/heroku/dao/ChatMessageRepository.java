package com.heroku.dao;



 
import java.util.List;
import org.springframework.data.repository.CrudRepository;

import com.heroku.model.ChatMessageModel;

 
/**
 * @author huseyinbabal
 */
public interface ChatMessageRepository extends CrudRepository<ChatMessageModel, String> {
    List<ChatMessageModel> findAllByOrderByCreateDateAsc();
}