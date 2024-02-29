package com.arthur.learn.qqzone.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.arthur.learn.qqzone.entity.Topic;
import com.arthur.learn.qqzone.entity.User;
import com.arthur.learn.qqzone.service.api.TopicService;
import com.arthur.learn.qqzone.service.api.UserService;

public class UserController {

    private UserService userService;
    private TopicService topicService;

    public String login(String loginId, String password, HttpSession session){
        User user = userService.login(loginId, password);
        if (user!= null){
            List<User> userList = userService.getFriendList(user);
            List<Topic> topicList = topicService.getTopicList(user);
            user.setFriendList(userList);
            user.setTopicList(topicList);
            session.setAttribute("user", user);
            return "index";
        } else {
            return "login";
        }
    }
    
}
