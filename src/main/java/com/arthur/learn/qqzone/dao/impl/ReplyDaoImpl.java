package com.arthur.learn.qqzone.dao.impl;

import java.util.List;

import com.arthur.learn.qqzone.dao.api.ReplyDao;
import com.arthur.learn.qqzone.dao.base.BaseDao;
import com.arthur.learn.qqzone.entity.Reply;
import com.arthur.learn.qqzone.entity.Topic;

public class ReplyDaoImpl extends BaseDao<Reply> implements ReplyDao {

    BaseDao<Reply> baseDao = new BaseDao<>();

    @Override
    public List<Reply> getReplyListByTopic(Topic topic) {
        String sql = "SELECT * FROM t_reply WHERE topicId = ?";
        return baseDao.getBeanList(sql, Reply.class, topic.getId());
    }

    @Override
    public void addReply(Reply reply) {
    }

    @Override
    public void deleteReply(Integer id) {
    }
    
}
