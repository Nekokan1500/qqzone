package com.arthur.learn.qqzone.dao.api;

import java.util.List;

import com.arthur.learn.qqzone.entity.Reply;
import com.arthur.learn.qqzone.entity.Topic;

public interface ReplyDao {

    public List<Reply> getReplyListByTopic(Topic topic);
    public void addReply(Reply reply);
    public void deleteReply(Integer id);

}
