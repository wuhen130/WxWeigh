package com.example.wx.entity;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Auto-generated: 2021-07-08 10:21:31
 *
 * @author www.jsons.cn 
 * @website http://www.jsons.cn/json2java/ 
 */
public class ToKens {

    @JsonProperty("access_token")
    private String accessToken;
    @JsonProperty("expires_in")
    private int expiresIn;
    public void setAccessToken(String accessToken) {
         this.accessToken = accessToken;
     }
     public String getAccessToken() {
         return accessToken;
     }

    public void setExpiresIn(int expiresIn) {
         this.expiresIn = expiresIn;
     }
     public int getExpiresIn() {
         return expiresIn;
     }

}