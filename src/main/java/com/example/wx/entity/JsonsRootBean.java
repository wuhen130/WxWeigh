package com.example.wx.entity;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Auto-generated: 2021-07-08 10:2:42
 *
 * @author www.jsons.cn
 * @website http://www.jsons.cn/json2java/ 
 */
@lombok.Data
public class JsonsRootBean<T> {

    private int total;
    private int count;
    private OpenId data;
    @JsonProperty("next_openid")
    private String nextOpenid;


}