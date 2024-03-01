package com.arthur.learn.qqzone.service.impl;

import java.util.List;

import com.arthur.learn.qqzone.dao.api.ReplyDao;
import com.arthur.learn.qqzone.entity.Reply;
import com.arthur.learn.qqzone.entity.Topic;
import com.arthur.learn.qqzone.service.api.ReplyService;

public class ReplyServiceImpl implements ReplyService{

    private ReplyDao replyDao;

    @Override
    public List<Reply> getReplyListByTopicId(Integer id) {
        return replyDao.getReplyListByTopic(new Topic(id));
    }
    
}
