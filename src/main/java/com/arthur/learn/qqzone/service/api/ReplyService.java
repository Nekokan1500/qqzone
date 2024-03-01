package com.arthur.learn.qqzone.service.api;

import java.util.List;

import com.arthur.learn.qqzone.entity.Reply;

public interface ReplyService {
    
    List<Reply> getReplyListByTopicId(Integer id);
}
