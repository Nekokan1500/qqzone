package com.arthur.learn.qqzone.service.impl;

import java.util.List;

import com.arthur.learn.qqzone.dao.api.ReplyDao;
import com.arthur.learn.qqzone.entity.AuthorReply;
import com.arthur.learn.qqzone.entity.Reply;
import com.arthur.learn.qqzone.entity.Topic;
import com.arthur.learn.qqzone.service.api.AuthorReplyService;
import com.arthur.learn.qqzone.service.api.ReplyService;

public class ReplyServiceImpl implements ReplyService{

    private ReplyDao replyDao;
    private AuthorReplyService authorReplyService;

    @Override
    public List<Reply> getReplyListByTopicId(Integer id) {
        List<Reply> replyList = replyDao.getReplyListByTopic(new Topic(id));
        for (int i = 0; i < replyList.size(); i++) {
            Reply reply = replyList.get(i);
            AuthorReply authorReply = authorReplyService.getAuthorReplyByReplyId(reply.getId());
            reply.setAuthorReply(authorReply);
        }
        return replyList;
    }
    
}
