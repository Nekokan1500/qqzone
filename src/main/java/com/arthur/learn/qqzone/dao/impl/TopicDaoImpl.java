package com.arthur.learn.qqzone.dao.impl;

import java.util.List;

import com.arthur.learn.qqzone.dao.api.TopicDao;
import com.arthur.learn.qqzone.dao.base.BaseDao;
import com.arthur.learn.qqzone.entity.Topic;
import com.arthur.learn.qqzone.entity.User;

public class TopicDaoImpl extends BaseDao<Topic> implements TopicDao{

    @Override
    public List<Topic> getTopicsByUser(User user) {
        List<Topic> topics =  super.getBeanList("SELECT * FROM t_topic WHERE authorId = ?", Topic.class, user.getId());
        for (Topic topic: topics){
            topic.setAuthor(user);
        }
        return topics;
    }

    @Override
    public void addTopic(Topic topic) {
        
    }

    @Override
    public void deleteTopic(Topic topic) {
        
    }

    @Override
    public Topic getTopic(Integer id) {
        Topic topic =  super.getSingleBean("SELECT * FROM t_topic WHERE id = ?", Topic.class, id);
        return topic;
    } 
    
}
