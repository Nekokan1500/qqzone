package com.arthur.learn.qqzone.service.api;

import java.util.List;

import com.arthur.learn.qqzone.entity.Topic;
import com.arthur.learn.qqzone.entity.User;

public interface TopicService {
    List<Topic> getTopicList(User user);
    
}
