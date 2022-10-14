package com.example.wx.service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.wx.entity.*;
import com.example.wx.entity.template.*;
import com.example.wx.mapper.MessageMapper;
import com.example.wx.mapper.UserInfoMapper;
import com.example.wx.service.ITemplateService;
import com.example.wx.util.HttpRequest;
import com.example.wx.vo.DataVo;
import lombok.extern.slf4j.Slf4j;
import org.apache.catalina.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@Slf4j
@Service
public class TemplateServiceImpl extends ServiceImpl<MessageMapper, Message> implements ITemplateService {

    @Autowired
    private UserInfoMapper mapper;

    /**
     * @param name         姓名       x
     * @param phone        手机号    s
     * @param commodity    货物名称   h
     * @param receiving    收货地址       s
     * @param delivery     发货地址     f
     * @param plate        车牌号码       c
     * @param grossWeight  毛重    m
     * @param tareWeight   皮重      p
     * @param moisture     净重        j
     * @param impurities   水分 s
     * @param bulkDensity  杂质     z
     * @param mildew       容重    r
     * @param unitPrice    霉变  m
     * @param amount       单价    z
     * @param money        金额 j
     * @param skinTime     过皮时间    g
     * @param time         过毛时间       g
     * @param serialNumber 流水号      l
     * @param operator     操作员       c
     * @return
     */

    @Override
    public DataVo<String> sendMessage(String name, String phone, String commodity, String receiving, String delivery, String plate, String grossWeight, String tareWeight, String moisture, String impurities, String bulkDensity, String mildew, String unitPrice, String amount, String money, String skinTime, String time, String serialNumber, String operator,String note,String miscellaneous) {

        //用戶列表信息
        UserInfoList userInfoList;
        //获取token
        String token = HttpRequest.sendGet("https://api.weixin.qq.com/cgi-bin/token", "grant_type=client_credential&appid=wx8ac6ce191e5e5537&secret=ee48e6ff750fdad237ef04b75c6d0c74");
        DataVo<String> dataVo = new DataVo<>();


        JSONObject tokenJson = JSONObject.parseObject(token);
        ToKens tokens = JSON.toJavaObject(tokenJson, ToKens.class);
        Message message = new Message();

        Data data = new Data();
        First first = new First();
        Keyword1 keyword1 = new Keyword1();
        Keyword2 keyword2 = new Keyword2();
        Keyword3 keyword3 = new Keyword3();
        Keyword4 keyword4 = new Keyword4();
        Miniprogram miniprogram = new Miniprogram();
        Remark remark = new Remark();
        first.setValue("车牌号: " + plate);
        first.setColor("#173177");  // 车牌号
        keyword1.setValue(commodity); //货物名称
        keyword1.setColor("#173177");
        keyword2.setValue(receiving);//收货单位
        keyword2.setColor("#173177");
        keyword3.setValue(delivery);//发货单位
        keyword3.setColor("#173177");
        keyword4.setValue("姓名：" + name + "\n毛重：" + grossWeight + "\n皮重：" + tareWeight + "\n净重：" + moisture + "\n水分：" + impurities + "\n杂质：" + bulkDensity + "\n并肩杂：" + miscellaneous +"\n容重：" + mildew + "\n霉变：" + unitPrice + "\n单价：" + amount + "\n金额：" + money + "\n过皮时间：" + skinTime + "\n过毛时间：" + time + "\n流水号" + serialNumber + "\n过磅员：" + operator);
        keyword4.setColor("#173177");
        remark.setValue(note);
        remark.setColor("#173177");
        data.setFirst(first);
        data.setKeyword1(keyword1);
        data.setKeyword2(keyword2);
        data.setKeyword3(keyword3);
        data.setKeyword4(keyword4);
        data.setRemark(remark);
        miniprogram.setAppid("");
        miniprogram.setPagepath("");
        String template_id = "Ds7-uA5A6Jdn_zr1Hk85RDOXjyOFSzv9qrao9aHNS14";
        message.setTemplateId(template_id);

        QueryWrapper wrapper = new QueryWrapper();

        wrapper.eq("name", name);


        userInfoList = mapper.selectOne(wrapper);
        if (userInfoList == null) {
            dataVo.setCode(500);
            dataVo.setMsg("数据不存在，请录入信息");
            return dataVo;
        }


        String openid = userInfoList.getOpenid();

        message.setTouser(openid);
        message.setMiniprogram(miniprogram);
        message.setUrl("");
        message.setData(data);


        String s = JSONObject.toJSONString(message);

        //整理好用户信息后发送给用户
        String str = HttpRequest.sendPost("https://api.weixin.qq.com/cgi-bin/message/template/send?access_token=" + tokens.getAccessToken(), s);
        JSONObject jsonObject = JSONObject.parseObject(str);
        Code code = JSON.toJavaObject(jsonObject, Code.class);
        log.info(s.toString());

        if (code.getErrmsg() != "ok") {
            dataVo.setMsg(code.getErrmsg());
            dataVo.setCode(code.getErrcode());
            return dataVo;

        }
        dataVo.setData(str);

        return dataVo;
    }

    @Override
    public DataVo<List<UserInfoList>> getUser(Integer page, Integer limit) {
        QueryWrapper wrapper = new QueryWrapper(null);


        IPage<UserInfoList> userInfoListPage = new Page<>(page, limit);

        IPage<UserInfoList> userInfoListList = mapper.selectPage(userInfoListPage, wrapper);


        DataVo dataVo = new DataVo("用户获取成功", 0, userInfoListList.getTotal(), userInfoListList.getRecords());
        return dataVo;


    }

    @Override
    public DataVo postNameIsPhone(String openid, String name, String phone) {
        QueryWrapper wrapper = new QueryWrapper();


        if (name == null || name == "" && phone != null && phone != "") {
            wrapper.eq("openid", openid);
            UserInfoList userInfoList = mapper.selectOne(wrapper);


//           mapper.update(@Param())


        }
        if (phone == null || phone == "") {

        }


        return null;
    }

    @Override
    public DataVo updateUser(String phone, String name, String openid) {
        DataVo dataVo = new DataVo();
        if (phone == null || phone == "") {
            dataVo.setMsg("手机号不能为空");
            dataVo.setCode(500);
            dataVo.setCount(0);
            return dataVo;
        }
        if (name == null || name == "") {
            dataVo.setMsg("姓名不能为空");
            dataVo.setCode(500);
            dataVo.setCount(0);
            return dataVo;
        }
        QueryWrapper wrapper = new QueryWrapper();
        wrapper.eq("openid", openid);


        UserInfoList userInfoList = mapper.selectOne(wrapper);

        if (userInfoList == null) {
            String token = HttpRequest.sendGet("https://api.weixin.qq.com/cgi-bin/token", "grant_type=client_credential&appid=wx8ac6ce191e5e5537&secret=ee48e6ff750fdad237ef04b75c6d0c74");
            JSONObject tokenJson = JSONObject.parseObject(token);
            ToKens tokens = JSON.toJavaObject(tokenJson, ToKens.class);
            log.info(tokens.getAccessToken());
            log.info("https://api.weixin.qq.com/cgi-bin/user/info?access_token=" + tokens.getAccessToken() + "&openid=" + openid + "&lang=zh_CN");
            String user = HttpRequest.sendPost("https://api.weixin.qq.com/cgi-bin/user/info", "access_token=" + tokens.getAccessToken() + "&openid=" + openid + "&lang=zh_CN");
            log.info(user);
            UserInfoList shop = JSONObject.parseObject(user, UserInfoList.class);


            shop.setPhone(phone);
            shop.setName(name);
            shop.setOpenid(openid);
            log.info(shop + "");

            mapper.insert(shop);

            dataVo.setMsg("添加成功");
            dataVo.setCode(0);
            dataVo.setCount(0);
            return dataVo;


        }

        userInfoList.setPhone(phone);
        userInfoList.setName(name);
        dataVo.setMsg("绑定成功");
        return dataVo;
    }
    @Override
    public DataVo deleteUser(String phone, String name, String openid) {
        DataVo dataVo = new DataVo();
        if (phone == null || phone == "") {
            dataVo.setMsg("手机号不能为空");
            dataVo.setCode(500);
            dataVo.setCount(0);
            return dataVo;
        }
        if (name == null || name == "") {
            dataVo.setMsg("姓名不能为空");
            dataVo.setCode(500);
            dataVo.setCount(0);
            return dataVo;
        }
        QueryWrapper wrapper = new QueryWrapper();
        wrapper.eq("openid", openid);


        UserInfoList userInfoList = mapper.selectOne(wrapper);


        if (userInfoList == null) {
            String token = HttpRequest.sendGet("https://api.weixin.qq.com/cgi-bin/token", "grant_type=client_credential&appid=wx8ac6ce191e5e5537&secret=ee48e6ff750fdad237ef04b75c6d0c74");
            JSONObject tokenJson = JSONObject.parseObject(token);
            ToKens tokens = JSON.toJavaObject(tokenJson, ToKens.class);
            log.info(tokens.getAccessToken());
            log.info("https://api.weixin.qq.com/cgi-bin/user/info?access_token=" + tokens.getAccessToken() + "&openid=" + openid + "&lang=zh_CN");
            String user = HttpRequest.sendPost("https://api.weixin.qq.com/cgi-bin/user/info", "access_token=" + tokens.getAccessToken() + "&openid=" + openid + "&lang=zh_CN");
            log.info(user);
            UserInfoList shop = JSONObject.parseObject(user, UserInfoList.class);


            shop.setPhone(phone);
            shop.setName(name);
            shop.setOpenid(openid);
            log.info(shop + "");

            mapper.insert(shop);

            dataVo.setMsg("添加成功");
            dataVo.setCode(0);
            dataVo.setCount(0);
            return dataVo;


        }
        mapper.delete(wrapper);
        /*userInfoList.setPhone(phone);
        userInfoList.setName(name);*/
        dataVo.setMsg("删除成功");
        return dataVo;
    }

}



