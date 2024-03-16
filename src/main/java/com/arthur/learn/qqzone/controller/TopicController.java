package com.arthur.learn.qqzone.controller;

import javax.servlet.http.HttpSession;

import com.arthur.learn.qqzone.entity.Topic;
import com.arthur.learn.qqzone.service.api.TopicService;

public class TopicController {

    private TopicService topicService;

    public String topicDetail(Integer id, HttpSession session){
        Topic topic = topicService.getTopicById(id);
        session.setAttribute("topic", topic);
        return "frames/detail";
    }
}
