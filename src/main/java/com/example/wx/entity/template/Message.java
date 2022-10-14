package com.example.wx.entity.template;
import com.fasterxml.jackson.annotation.JsonProperty;

/**
 * Auto-generated: 2021-07-08 15:22:53
 *
 * @author www.jsons.cn 
 * @website http://www.jsons.cn/json2java/ 
 */
@lombok.Data
public class Message {

    private String touser;
    @JsonProperty("template_id")
    private String template_id;
    private String url;



    private Miniprogram miniprogram;



    private Data data;
    public void setTouser(String touser) {
         this.touser = touser;
     }
     public String getTouser() {
         return touser;
     }

    public void setTemplateId(String templateId) {
         this.template_id = templateId;
     }
     public String getTemplateId() {
         return template_id;
     }

    public void setUrl(String url) {
         this.url = url;
     }
     public String getUrl() {
         return url;
     }

    public void setMiniprogram(Miniprogram miniprogram) {
         this.miniprogram = miniprogram;
     }
     public Miniprogram getMiniprogram() {
         return miniprogram;
     }

    public void setData(Data data) {
         this.data = data;
     }
     public Data getData() {
         return data;
     }

}