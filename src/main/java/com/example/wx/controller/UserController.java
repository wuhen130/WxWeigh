package com.example.wx.controller;

import com.alibaba.fastjson.JSONObject;
import com.example.wx.util.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;


@Controller
public class UserController {

    @RequestMapping("/")//主页 登录页和列表页
    public String index() {
        return "index";
    }

    @RequestMapping("/login")//公众号绑定页面
    public String login(){
        return "add";
    }

    @RequestMapping("/send")// 编辑发送页面
    public String send(){
        return "send";
    }

    @RequestMapping("/loginManager")// 登录管理界面
    public String loginManager(){
        return "loginManager";
    }

}
