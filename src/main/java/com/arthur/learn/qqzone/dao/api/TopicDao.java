package com.arthur.learn.qqzone.dao.api;

import java.util.List;

import com.arthur.learn.qqzone.entity.Topic;
import com.arthur.learn.qqzone.entity.User;

public interface TopicDao {
    
    public List<Topic> getTopicsByUser(User user);
    public void addTopic(Topic topic);
    public void deleteTopic(Topic topic);
    public Topic getTopic(Integer id);
}
