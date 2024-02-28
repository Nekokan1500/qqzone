package com.arthur.learn.qqzone.entity;

import java.util.Date;

public class Reply {

    private Integer id;
    private String content;
    private Date replyDate;
    private User author;
    private Topic topic;

    private AuthorReply authorReply;

    public Reply(){
        
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getReplyDate() {
        return replyDate;
    }

    public void setReplyDate(Date replyDate) {
        this.replyDate = replyDate;
    }

    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }

    public Topic getTopic() {
        return topic;
    }

    public void setTopic(Topic topic) {
        this.topic = topic;
    }

    public AuthorReply getAuthorReply() {
        return authorReply;
    }

    public void setAuthorReply(AuthorReply authorReply) {
        this.authorReply = authorReply;
    }

    
}
