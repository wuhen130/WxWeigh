package com.example.wx.entity;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.List;

/*
 * Auto-generated: 2021-07-08 14:31:49
 *
 * @author www.jsons.cn
 * @website http://www.jsons.cn/json2java/
 */
@Data
public class UserInfoList {

    private String country;
    private String unionid;
    @JsonProperty("qr_scene")
    private int qrScene;
    private int subscribe;
    private String city;
    private String openid;
    @JsonProperty("tagid_list")
    private String tagidList;
    private int sex;
    private int groupid;
    private String language;
    private String remark;
    @JsonProperty("subscribe_time")
    private int subscribeTime;
    private String province;
    @JsonProperty("subscribe_scene")
    private String subscribeScene;
    private String nickname;
    private String headimgurl;
    @JsonProperty("qr_scene_str")
    private String qrSceneStr;
    private String name;
    private String phone;

}