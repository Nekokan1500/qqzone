package com.arthur.learn.qqzone.dao.api;

import java.util.List;

import com.arthur.learn.qqzone.entity.User;

public interface UserDao {
    
    User getUser(String loginId, String password);
    List<User> getFriends(User user);
    User getUserById(Integer id);
}
