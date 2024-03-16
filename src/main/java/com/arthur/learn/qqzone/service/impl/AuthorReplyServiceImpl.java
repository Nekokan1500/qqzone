package com.arthur.learn.qqzone.service.impl;

import com.arthur.learn.qqzone.dao.api.AuthorReplyDao;
import com.arthur.learn.qqzone.entity.AuthorReply;
import com.arthur.learn.qqzone.service.api.AuthorReplyService;

public class AuthorReplyServiceImpl implements AuthorReplyService {

    private AuthorReplyDao authorReplyDao;

    @Override
    public AuthorReply getAuthorReplyByReplyId(Integer replyId) {

        return authorReplyDao.getAuthorReplyByReplyId(replyId);
        
    }
    
}
