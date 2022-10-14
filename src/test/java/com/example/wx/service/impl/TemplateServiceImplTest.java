package com.example.wx.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.example.wx.entity.ToKens;
import com.example.wx.util.HttpRequest;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;
@Slf4j
@SpringBootTest
class TemplateServiceImplTest {
    @Test
    public void TemplateServiceImpl(){
        String token = HttpRequest.sendGet("https://api.weixin.qq.com/cgi-bin/token", "grant_type=client_credential&appid=wx8ac6ce191e5e5537&secret=ee48e6ff750fdad237ef04b75c6d0c74");
        JSONObject tokenJson = JSONObject.parseObject(token);
        ToKens tokens = JSON.toJavaObject(tokenJson, ToKens.class);
        log.info(tokens.getAccessToken());
    }

}