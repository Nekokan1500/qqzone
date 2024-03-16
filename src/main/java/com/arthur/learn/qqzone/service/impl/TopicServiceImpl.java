package com.arthur.learn.qqzone.service.impl;

import java.util.List;

import com.arthur.learn.qqzone.dao.api.TopicDao;
import com.arthur.learn.qqzone.entity.Reply;
import com.arthur.learn.qqzone.entity.Topic;
import com.arthur.learn.qqzone.entity.User;
import com.arthur.learn.qqzone.service.api.ReplyService;
import com.arthur.learn.qqzone.service.api.TopicService;
import com.arthur.learn.qqzone.service.api.UserService;

public class TopicServiceImpl implements TopicService{

    private TopicDao topicDao;
    private ReplyService replyService;
    private UserService userService;

    @Override
    public List<Topic> getTopicList(User user) {
        return topicDao.getTopicsByUser(user);
    }

    public Topic getTopic(Integer id){
        Topic topic = topicDao.getTopic(id);
        User author = topic.getAuthor();
        author = userService.getUserById(author.getId());
        topic.setAuthor(author);
        return topic;
    }

    @Override
    public Topic getTopicById(Integer id) {
        Topic topic = getTopic(id);
        List<Reply> replyList = replyService.getReplyListByTopicId(topic.getId());
        topic.setReplyList(replyList);
        return topic;
    }
    
}
