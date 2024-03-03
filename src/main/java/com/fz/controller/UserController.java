package com.fz.controller;

import com.fz.entity.User;
import com.fz.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class UserController {

    @Resource
    private UserService userService;


//    查询所有
    @ResponseBody
    @RequestMapping("UserFindAll")
    public List<User> findAll(){
        return userService.findAll();
    }

//    根据id查询
    @ResponseBody
    @RequestMapping("UserFindById")
    public User findById(Integer id){
        return userService.findById(id);

    }

//     根据名字模糊查询
    @ResponseBody
    @RequestMapping("findLike")
    public List<User> findLike(String  name){
        return userService.findLike(name);
    }


//增加，方法类型为post
@RequestMapping(value = "addUser",method = RequestMethod.POST)
public String addUser(User user){

        String name = user.getName();
        System.out.println(name);
    this.userService.addUser(user);
    return "index";
}





//删除

    @RequestMapping("delUser")
    public String delUser(Integer id){
        this.userService.delUser(id);
        return "index";
    }


//    修改
    @RequestMapping("updateUser")
    public String updateUser(User user){
        this.userService.updateUser(user);
        return "index";
    }




}
