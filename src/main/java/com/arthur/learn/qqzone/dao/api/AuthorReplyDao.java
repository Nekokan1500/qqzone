package com.arthur.learn.qqzone.dao.api;

import com.arthur.learn.qqzone.entity.AuthorReply;

public interface AuthorReplyDao {
    
    AuthorReply getAuthorReplyByReplyId(Integer replyId);
}
