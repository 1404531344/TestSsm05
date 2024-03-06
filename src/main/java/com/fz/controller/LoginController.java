package com.fz.controller;

import com.fz.entity.User;
import com.fz.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Resource
    private UserService userService;


//    根据名字密码查询

    @RequestMapping("login.action")
    public String findByNameAndPwd(User user) {
        User user1 = userService.findByNameAndPwd(user);

        String url = "login";
        if (user1 != null) {
            url = "index";

            System.out.println("登录成功");
        }
        return url;




    }

//    @RequestMapping("logout.action")
//    public String logout(HttpSession session) {
//        //清除session
//        session.invalidate();
//        //跳转到登录页面
//        return "login";
//
//
//    }

}
