package com.example.wx.controller;

import com.alibaba.fastjson.JSONObject;
import com.example.wx.entity.UserInfoList;
import com.example.wx.service.ITemplateService;
import com.example.wx.util.HttpRequest;
import com.example.wx.vo.DataVo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RestController
@RequestMapping("/wx/template")
public class TemplateControl {
    @Autowired
    ITemplateService iTemplateService;

    /**
     * 模板消息发送
     *
     * @param name        客户名称
     * @param commodity   货物名称
     * @param receiving   收货单位
     * @param delivery    发货单位
     * @param plate       车牌号码
     * @param grossWeight 毛重
     * @param tareWeight  皮重
     * @param moisture    净重
     * @param impurities  水分
     * @param bulkDensity 杂质
     * @param mildew      容重
     * @param unitPrice   霉变
     * @param amount      单价
     * @return
     */
    @ResponseBody
    @PostMapping("/send")
    public DataVo<String> send(String name, String phone, String commodity, String receiving, String delivery, String plate, String grossWeight, String tareWeight, String moisture, String impurities, String bulkDensity, String mildew, String unitPrice, String amount, String money, String skinTime, String time, String serialNumber, String operator,String note,String miscellaneous) {



        return iTemplateService.sendMessage(name, phone, commodity, receiving, delivery, plate, grossWeight, tareWeight,
                moisture, impurities, bulkDensity, mildew, unitPrice, amount, money, skinTime, time, serialNumber, operator,note,miscellaneous);
//        {{first.DATA}}
//        货物名称：{{keyword1.DATA}}
//        收货单位：{{keyword2.DATA}}
//        发货单位：{{keyword3.DATA}}
//        称重结果：{{keyword4.DATA}}
//        {{remark.DATA}}
    }

    @GetMapping("/getUser")
    public DataVo<List<UserInfoList>> getUser(Integer page, Integer limit) {

        return iTemplateService.getUser(page, limit);
    }

    @PostMapping("/postName")
    public DataVo setName(String openid, String name, String phone) {

        return iTemplateService.postNameIsPhone(openid, name, phone);


    }


    @ResponseBody
    @GetMapping("/login")
    public Object login(String code) {

        String str = HttpRequest.sendGet("https://api.weixin.qq.com/sns/oauth2/access_token", "appid=wx8ac6ce191e5e5537&secret=ee48e6ff750fdad237ef04b75c6d0c74&code=" + code + "&grant_type=authorization_code");
        JSONObject jsonObject = new JSONObject();

        return jsonObject.parse(str);

    }

    @ResponseBody
    @PostMapping("/update")
    public DataVo UpdateUser(String phone, String name, String openid) {

        return iTemplateService.updateUser(phone, name, openid);

    }


}