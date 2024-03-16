package com.arthur.learn.qqzone.dao.impl;

import com.arthur.learn.qqzone.dao.api.AuthorReplyDao;
import com.arthur.learn.qqzone.dao.base.BaseDao;
import com.arthur.learn.qqzone.entity.AuthorReply;

public class AuthorReplyDaoImpl extends BaseDao<AuthorReply> implements AuthorReplyDao {

    @Override
    public AuthorReply getAuthorReplyByReplyId(Integer replyId) {
        String sql = "SELECT * FROM t_author_reply WHERE replyId = ?";
        return super.getSingleBean(sql, AuthorReply.class, replyId);
    }
    
}
