package com.heroku.model;



import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Table;
 
/**
 * @author huseyinbabal
 */


@Entity
@Table(name = "chatmessage")
public class ChatMessageModel {
 

    private String id;
 
    private String text;
    private String author;
    private Date createDate;
 
    public ChatMessageModel() {
    }
 
    public ChatMessageModel(String text, String author, Date createDate) {
        this.text = text;
        this.author = author;
        this.createDate = createDate;
    }
 
    public String getText() {
        return text;
    }
 
    public void setText(String text) {
        this.text = text;
    }
 
    public String getAuthor() {
        return author;
    }
 
    public void setAuthor(String author) {
        this.author = author;
    }
 
    public Date getCreateDate() {
        return createDate;
    }
 
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
 
    @Override
    public String toString() {
        return "{" +
                "\"id\":\"" + id + '\"' +
                ",\"text\":\"" + text + '\"' +
                ",\"author\":\"" + author + '\"' +
                ",\"createDate\":\"" + createDate + "\"" +
                '}';
    }
}