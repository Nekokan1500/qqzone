package com.arthur.learn.qqzone.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.arthur.learn.qqzone.entity.Reply;
import com.arthur.learn.qqzone.entity.Topic;
import com.arthur.learn.qqzone.service.api.ReplyService;
import com.arthur.learn.qqzone.service.api.TopicService;

public class TopicController {

    private TopicService topicService;
    private ReplyService replyService;

    public String topicDetail(Integer id, HttpSession session){
        Topic topic = topicService.getTopicById(id);
        List<Reply> replyList = replyService.getReplyListByTopicId(topic.getId());
        topic.setReplyList(replyList);
        session.setAttribute("topic", topic);
        return "frames/detail";
    }
}
