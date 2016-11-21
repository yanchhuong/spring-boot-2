package com.heroku.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.CrudRepository;

import com.heroku.model.ChatMessageModel;


 
/**
 * @author huseyinbabal
 */
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ChatMessageRepository extends JpaRepository<ChatMessageModel, String>,JpaSpecificationExecutor<ChatMessageModel> {
    List<ChatMessageModel> findAll();
}