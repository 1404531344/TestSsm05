package com.fz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class TestController {



    @ResponseBody
    @RequestMapping("/test")
    public String test(){
        System.out.println("test");
        return "test";

    }

//    跳转
    @RequestMapping("/index")
    public String index(){
        System.out.println("index");
        return "/index";
    }

}
