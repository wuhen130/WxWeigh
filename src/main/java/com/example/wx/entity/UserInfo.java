package com.example.wx.entity;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

/**
 * Auto-generated: 2021-07-08 13:35:54
 *
 * @author www.jsons.cn 
 * @website http://www.jsons.cn/json2java/ 
 */
@Data
public class UserInfo {

    @JsonProperty("user_info_list")
    private List<UserInfoList> user_info_list;


}