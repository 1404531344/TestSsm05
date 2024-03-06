package com.fz.service.Imp;

import com.fz.dao.UserDao;
import com.fz.entity.User;
import com.fz.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.List;

@Service("userService")
public class UserServiceImp  implements UserService {


    @Resource
    private UserDao userDao;


    @Override
    public User findByNameAndPwd(User user) {


        return this.userDao.findByNameAndPwd(user);
    }

    @Override
    public List<User> findAll() {
        return this.userDao.findAll();
    }

    @Override
    public User findById(Integer id) {
        return this.userDao.findById(id);
    }

    @Override
    public List<User> findLike(String name) {
        return this.userDao.findLike(name);
    }

    @Override
    public int addUser(User user) {
        return this.userDao.addUser(user);
    }

    @Override
    public int delUser(Integer id) {
        return this.userDao.delUser(id);
    }

    @Override
    public int updateUser(User user) {
        return this.userDao.updateUser(user);
    }
}
