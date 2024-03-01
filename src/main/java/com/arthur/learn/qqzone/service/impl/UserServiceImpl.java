package com.arthur.learn.qqzone.service.impl;

import java.util.ArrayList;
import java.util.List;

import com.arthur.learn.qqzone.dao.api.UserDao;
import com.arthur.learn.qqzone.entity.User;
import com.arthur.learn.qqzone.service.api.UserService;

public class UserServiceImpl implements UserService{

    private UserDao userDao = null;

    @Override
    public User login(String loginId, String password) {
        User user = userDao.getUser(loginId, password);
        return user;
    }

    @Override
    public List<User> getFriendList(User user) {
        List<User> userList = userDao.getFriends(user);
        List<User> friendList = new ArrayList<>(userList.size());
        for (int i = 0; i < userList.size(); i++) {
            User friend = userList.get(i);
            friend = userDao.getUserById(friend.getId());
            friendList.add(friend);
        }
        return friendList;
    }

    @Override
    public User getUserById(Integer id) {
        return userDao.getUserById(id);
    }
    
}
