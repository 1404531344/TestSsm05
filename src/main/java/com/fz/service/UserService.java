package com.fz.service;

import com.fz.entity.User;

import javax.servlet.http.HttpSession;
import java.util.List;

public interface UserService {

    //    根据名字密码查询（登录）
    User findByNameAndPwd(User user);


    //    查询所有
    List<User> findAll();

    //    根据id查询
    User findById(Integer id);

    //    根据名字模糊查询
    List<User> findLike(String name);

    //添加
    int addUser(User user);

    //删除
    int delUser(Integer id);


    //修改
    int updateUser(User user);

}
