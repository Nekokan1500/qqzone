package com.arthur.learn.qqzone.dao.impl;

import java.util.List;

import com.arthur.learn.qqzone.dao.api.UserDao;
import com.arthur.learn.qqzone.dao.base.BaseDao;
import com.arthur.learn.qqzone.entity.User;


public class UserDaoImpl extends BaseDao<User> implements UserDao{

    @Override
    public User getUser(String loginId, String password) {
        return super.getSingleBean("SELECT * FROM t_user WHERE loginId = ? AND password = ?", User.class, loginId, password);
    }

    @Override
    public List<User> getFriends(User user) {
        //String sql = "SELECT * FROM t_user t1 LEFT JOIN t_friend t2 ON t1.id = t2.uid INNER JOIN t_user t3 ON t2.fid = t3.id";
        String sql = "SELECT fid as id FROM t_friend WHERE uid = ?";
        return super.getBeanList(sql, User.class, user.getId());
    }

    @Override
    public User getUserById(Integer id) {
        return super.getSingleBean("SELECT * FROM t_user WHERE id = ?", User.class, id);
    }


    
}
