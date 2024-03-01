package com.arthur.learn.qqzone.service.impl;

import java.util.List;

import com.arthur.learn.qqzone.dao.api.TopicDao;
import com.arthur.learn.qqzone.entity.Topic;
import com.arthur.learn.qqzone.entity.User;
import com.arthur.learn.qqzone.service.api.TopicService;

public class TopicServiceImpl implements TopicService{

    private TopicDao topicDao = null;

    @Override
    public List<Topic> getTopicList(User user) {
        return topicDao.getTopicsByUser(user);
    }

    @Override
    public Topic getTopicById(Integer id) {
        return topicDao.getTopic(id);
    }
    
}
