package com.arthur.learn.qqzone.service.api;

import java.util.List;

import com.arthur.learn.qqzone.entity.User;

public interface UserService {
    
    User login(String loginId, String password);
    List<User> getFriendList(User user);
}
