package com.yxc.bugsManager.service.user;

import com.yxc.bugsManager.entity.User;
import com.yxc.bugsManager.repository.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by tm on 2017/3/9.
 */
@Component
@Transactional
public class UserService {

    @Autowired
    private UserDao userDao;

    public UserDao getUserDao() {
        return userDao;
    }

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    public List<User> getAllUser() {
        return (List<User>) userDao.findAll();
    }

}
