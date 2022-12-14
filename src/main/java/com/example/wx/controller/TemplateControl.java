package com.example.wx.controller;

import com.alibaba.fastjson.JSONObject;
import com.example.wx.entity.Order;
import com.example.wx.entity.UserInfoList;
import com.example.wx.service.ITemplateService;
import com.example.wx.util.HttpRequest;
import com.example.wx.vo.DataVo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

        /*return iTemplateService.sendMessage("李倩", "18654700835", "玉米", "收货单位", "发货单位", "鲁A12345", "毛重100000", "皮重2000",
                "净重98000", "1.1", "1.2", "1.3", "1.5", "1.6", "50000", "2022-11-14 09:58:12", "2022-11-14 10:58:12", "1234554321", "操作员","备注","1");
*/

        return iTemplateService.sendMessage(name, phone, commodity, receiving, delivery, plate, grossWeight, tareWeight,
                moisture, impurities, bulkDensity, mildew, unitPrice, amount, money, skinTime, time, serialNumber, operator,note,miscellaneous);
//        {{first.DATA}}
//        货物名称：{{keyword1.DATA}}
//        收货单位：{{keyword2.DATA}}
//        发货单位：{{keyword3.DATA}}
//        称重结果：{{keyword4.DATA}}
//        {{remark.DATA}}
    }
    @ResponseBody
    @PostMapping("/sendAcquireMessage")
    public DataVo<String> sendAcquireMessage(String openId,String name, String phone, String commodity, String receiving, String delivery, String plate, String grossWeight, String tareWeight, String moisture, String impurities, String bulkDensity, String mildew, String unitPrice, String amount, String money, String skinTime, String time, String serialNumber, String operator,String note,String miscellaneous) {
        //调用send接口
        //伪造数据，进行所有值的获取
        return  iTemplateService.sendAcquireMessage(openId,name, phone, commodity, receiving, delivery, plate, grossWeight, tareWeight,
                moisture, impurities, bulkDensity, mildew, unitPrice, amount, money, skinTime, time, serialNumber, operator,note,miscellaneous);

//        {{first.DATA}}
//        货物名称：{{keyword1.DATA}}
//        收货单位：{{keyword2.DATA}}
//        发货单位：{{keyword3.DATA}}
//        称重结果：{{keyword4.DATA}}
//        {{remark.DATA}}
    }

    @ResponseBody
    @PostMapping("/sendSaveMessage")
    public DataVo<String> sendSaveMessage(String id,String openId,String name, String phone, String commodity, String receiving, String delivery, String plate, String grossWeight, String tareWeight, String moisture, String impurities, String bulkDensity, String mildew, String unitPrice, String amount, String money, String skinTime, String time, String serialNumber, String operator,String note,String miscellaneous,String operationDate) {

        return  iTemplateService.sendSaveMessage(id,openId,name, phone, commodity, receiving, delivery, plate, grossWeight, tareWeight,
                moisture, impurities, bulkDensity, mildew, unitPrice, amount, money, skinTime, time, serialNumber, operator,note,miscellaneous,operationDate);

    }

    @GetMapping("/getDateUserMessage")
    public DataVo<List<Order>> getDateUserMessage(String openId, String date) {

        return iTemplateService.getDateUserMessage(openId, date);
    }

    @GetMapping("/getUser")
    public DataVo<List<UserInfoList>> getUser(Integer page, Integer limit) {

        return iTemplateService.getUser(page, limit);
    }

    @GetMapping("/getOneUser")
    public DataVo<List<UserInfoList>> getOneUser(String name) {

        return iTemplateService.getOneUser(name);
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
    @GetMapping("/isLogin")
    public Object isLogin(HttpServletRequest request) {
        //String dataLogin = null;
        Map dataLogin = new HashMap<>();
        try {
            Cookie[] cookies = request.getCookies();
            if (cookies == null) {
                dataLogin.put("isLogin","0");
                return dataLogin;
            }else {
                //找到cookie 判断cookie  从cookie中找到用户名  返回到前台
                for (Cookie cookie : cookies){
                    /*if (CookieConst.COOKIE_UGC.equals(cookie.getName())) {
                        ugcInfo = cookie.getValue();
                    }*/
                    dataLogin.put("userName","张三");
                }
            }

        }catch (Throwable e) {
            System.out.printf("getUgcCookie error, [msg = {}]", e.getMessage(), e);
        }

        return dataLogin;
    }

    @ResponseBody
    @PostMapping("/loginManage")
    public Object loginMange(String name, String password, HttpServletResponse response) {

        Map loginManages = new HashMap<>();
        if(name == null || password == null){
            loginManages.put("state","0");
            return loginManages;
        }else {
            //查询用户名和密码
           String dataQueryUser = String.valueOf(iTemplateService.queryUser(name,password));
            System.out.printf(dataQueryUser);
            if(dataQueryUser.equals(name)){
                loginManages.put("state","1");
                loginManages.put("name",name);
                //创建cookie
                Cookie cookie = new Cookie("username","cookievalue");
                //设置存活时间
                cookie.setMaxAge(60*60);
                response.addCookie(cookie);
                return loginManages;
            }else {
                loginManages.put("state","0");
                return loginManages;
            }
        }
    }

    @ResponseBody
    @PostMapping("/update")
    public DataVo UpdateUser(String phone, String name, String openid) {

        return iTemplateService.updateUser(phone, name, openid);

    }
    @ResponseBody
    @PostMapping("/deleteUser")
    public DataVo deleteUser(String phone, String name, String openid) {

        return iTemplateService.deleteUser(phone, name, openid);

    }
    @ResponseBody
    @PostMapping("/sendMessageTopopup")
    public DataVo<List<Order>> sendMessageTopopup(String openid) {

        return iTemplateService.sendMessageTopopup(openid);

    }

}