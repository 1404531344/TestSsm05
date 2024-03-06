package com.fz.dao;

import com.fz.entity.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserDao {


//    根据名字密码查询（登录）
    User findByNameAndPwd(User user);


    //    查询所有
    List<User> findAll();

//    根据id查询
    User findById(Integer id);

//     根据名字模糊查询
    List<User> findLike(String name);

//添加
    int addUser(User user);

//删除
    int delUser(Integer id);


//修改
    int updateUser(User user);


}
