package com.example.wx.controller;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.wx.entity.*;
import com.example.wx.mapper.OpenMapper;
import com.example.wx.mapper.UserInfoMapper;
import com.example.wx.util.HttpRequest;

import jdk.nashorn.internal.ir.RuntimeNode;
import org.junit.jupiter.api.Test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.web.bind.annotation.ResponseBody;

import java.sql.Wrapper;
import java.util.ArrayList;
import java.util.List;

@SpringBootTest
class JsonRootControllerTest {
    HttpRequest httpRequest = new HttpRequest();
    @Autowired
    OpenMapper openMapper;
    @Autowired
    UserInfoMapper userInfoMapper;

    @Test
    void Test() {

        UserList userList = new UserList();
        List<User> userList1 = new ArrayList<>();
        String token = httpRequest.sendGet("https://api.weixin.qq.com/cgi-bin/token", "grant_type=client_credential&appid=wx8ac6ce191e5e5537&secret=ee48e6ff750fdad237ef04b75c6d0c74");
//        System.out.println(token);
        JSONObject tokenJson = JSONObject.parseObject(token);
        ToKens tokens = JSON.toJavaObject(tokenJson, ToKens.class);
        System.out.println(tokens.getAccessToken());
        String json = httpRequest.sendGet("https://api.weixin.qq.com/cgi-bin/user/get", "access_token=" + tokens.getAccessToken());
//        System.out.println(json);


        JSONObject jsonObject = JSONObject.parseObject(json);
        JsonsRootBean jsonsRootBean = JSON.toJavaObject(jsonObject, JsonsRootBean.class);
//        Map<String,Object> map = (Map<String, Object>)
//        System.out.println(map.get("openid"));
//        jsonsRootBean.setData((Data) jsonObject.get("data"));
        System.out.println(jsonsRootBean.getData().getOpenid().size());
        for (int i = 0; i <jsonsRootBean.getData().getOpenid().size(); i++) {
            User user = new User();
            user.setOpenid(jsonsRootBean.getData().getOpenid().get(i));

            //System.out.println(httpRequest.sendGet("GET https://api.weixin.qq.com/cgi-bin/user/info", "access_token=" + tokens.getAccessToken() + "&openid=" + jsonsRootBean.getData().getOpenid().get(i) + "&lang=zh_CN"));

//            open.setOpenId(jsonsRootBean.getData().getOpenid().get(i));
//            openMapper.insert(open);
            userList1.add(user);
        }

        userList.setUser_list(userList1);
//
//
////
//

        String str = httpRequest.sendPost("https://api.weixin.qq.com/cgi-bin/user/info/batchget?access_token=" + tokens.getAccessToken(), JSONObject.toJSON(userList).toString());
        JSONObject jsonObject1 = JSONObject.parseObject(str);
        System.out.println(jsonObject1.toString());
        UserInfo userInfo = JSON.toJavaObject(jsonObject1, UserInfo.class);

        for (int i =0; i<userInfo.getUser_info_list().size();i++){
            UserInfoList userInfoLi = new UserInfoList();
            userInfoLi  = userInfo.getUser_info_list().get(i);


            userInfoMapper.insert(userInfoLi);






        }




        System.out.println(userInfo.toString());
    }


}