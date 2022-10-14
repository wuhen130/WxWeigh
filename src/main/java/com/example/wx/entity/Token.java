package com.example.wx.entity;

import lombok.Data;

@Data
public class Token {

    private String access_token;
    private String openid;
    private String lang;
}
